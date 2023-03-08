import path from "path";
import { ImportDatum, RenderTableOptions, RenderTableType, StaticRouteData } from "./types.js";

export const renderedSolidityHeader = `// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */`;

/**
 * Renders a list of lines
 */
export function renderList<T>(list: T[], renderItem: (item: T, index: number) => string) {
  return internalRenderList("", list, renderItem);
}

/**
 * Renders a comma-separated list of arguments for solidity functions, ignoring empty and undefined ones
 */
export function renderArguments(args: (string | undefined)[]) {
  const filteredArgs = args.filter((arg) => arg !== undefined && arg !== "") as string[];
  return internalRenderList(",", filteredArgs, (arg) => arg);
}

export function renderCommonData({
  staticRouteData,
  primaryKeys,
}: Pick<RenderTableOptions, "staticRouteData" | "primaryKeys">) {
  // static route means static tableId as well, and no tableId arguments
  const _tableId = staticRouteData ? "" : "_tableId";
  const _typedTableId = staticRouteData ? "" : "uint256 _tableId";

  const _keyArgs = renderArguments(primaryKeys.map(({ name }) => name));
  const _typedKeyArgs = renderArguments(primaryKeys.map(({ name, typeWithLocation }) => `${typeWithLocation} ${name}`));

  const _primaryKeysDefinition = `
    bytes32[] memory _primaryKeys = new bytes32[](${primaryKeys.length});
    ${renderList(
      primaryKeys,
      (primaryKey, index) => `_primaryKeys[${index}] = ${renderValueTypeToBytes32(primaryKey.name, primaryKey)};`
    )}
  `;

  return {
    _tableId,
    _typedTableId,
    _keyArgs,
    _typedKeyArgs,
    _primaryKeysDefinition,
  };
}

/** For 2 paths which are relative to a common root, create a relative import path from one to another */
export function solidityRelativeImportPath(fromPath: string, usedInPath: string) {
  // "./" must be added because path stripts it,
  // but solidity expects it unless there's "../" ("./../" is fine)
  return "./" + path.relative(usedInPath, fromPath);
}

/**
 * Aggregates, deduplicates and renders imports for symbols per path.
 * Identical symbols from different paths are NOT handled, they should be checked before rendering.
 */
export function renderImports(imports: ImportDatum[]) {
  // Aggregate symbols by import path, also deduplicating them
  const aggregatedImports = new Map<string, Set<string>>();
  for (const { symbol, fromPath, usedInPath } of imports) {
    const path = solidityRelativeImportPath(fromPath, usedInPath);
    if (!aggregatedImports.has(path)) {
      aggregatedImports.set(path, new Set());
    }
    aggregatedImports.get(path)?.add(symbol);
  }
  // Render imports
  const renderedImports = [];
  for (const [path, symbols] of aggregatedImports) {
    const renderedSymbols = [...symbols].join(", ");
    renderedImports.push(`import { ${renderedSymbols} } from "${path}";`);
  }
  return renderedImports.join("\n");
}

export function renderWithStore(
  storeArgument: boolean,
  callback: (
    _typedStore: string | undefined,
    _store: string,
    _commentSuffix: string,
    _untypedStore: string | undefined
  ) => string
) {
  let result = "";
  result += callback(undefined, "StoreSwitch", "", undefined);

  if (storeArgument) {
    result += "\n" + callback("IStore _store", "_store", " (using the specified store)", "_store");
  }

  return result;
}

export function renderTableId(staticRouteData: StaticRouteData) {
  const hardcodedTableId = `uint256(keccak256("${staticRouteData.baseRoute + staticRouteData.subRoute}"))`;
  const tableIdDefinition = `
    uint256 constant _tableId = ${hardcodedTableId};
    uint256 constant ${staticRouteData.tableIdName} = _tableId;
  `;
  return {
    hardcodedTableId,
    tableIdDefinition,
  };
}

function renderValueTypeToBytes32(name: string, { staticByteLength, typeUnwrap, internalTypeId }: RenderTableType) {
  const bits = staticByteLength * 8;
  const innerText = `${typeUnwrap}(${name})`;

  if (internalTypeId.match(/^uint\d{1,3}$/)) {
    return `bytes32(uint256(${innerText}))`;
  } else if (internalTypeId.match(/^int\d{1,3}$/)) {
    return `bytes32(uint256(uint${bits}(${innerText})))`;
  } else if (internalTypeId.match(/^bytes\d{1,2}$/)) {
    return `bytes32(${innerText})`;
  } else if (internalTypeId === "address") {
    return `bytes32(bytes20(${innerText}))`;
  } else if (internalTypeId === "bool") {
    return `_boolToBytes32(${innerText})`;
  } else {
    throw new Error(`Unknown value type id ${internalTypeId}`);
  }
}

function internalRenderList<T>(lineTerminator: string, list: T[], renderItem: (item: T, index: number) => string) {
  return list
    .map((item, index) => renderItem(item, index) + (index === list.length - 1 ? "" : lineTerminator))
    .join("\n");
}
