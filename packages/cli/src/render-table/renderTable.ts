import { renderArguments, renderCommonData, renderList } from "./common.js";
import { renderFieldMethods } from "./field.js";
import { renderRecordMethods } from "./record.js";
import { RenderTableOptions } from "./types.js";

export function renderTable(options: RenderTableOptions) {
  const { libraryName, structName, staticRouteData, storeImportPath, fields, withRecordMethods } = options;

  const { _typedTableId, _typedKeyArgs, _primaryKeysDefinition } = renderCommonData(options);

  return `// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

import { IStore } from "${storeImportPath}IStore.sol";
import { StoreSwitch } from "${storeImportPath}StoreSwitch.sol";
import { StoreCore } from "${storeImportPath}StoreCore.sol";
import { SchemaType } from "${storeImportPath}Types.sol";
import { Bytes } from "${storeImportPath}Bytes.sol";
import { SliceLib } from "${storeImportPath}Slice.sol";
import { EncodeArray } from "${storeImportPath}tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "${storeImportPath}Schema.sol";
import { PackedCounter, PackedCounterLib } from "${storeImportPath}PackedCounter.sol";

${
  !staticRouteData
    ? ""
    : `
  uint256 constant _tableId = uint256(keccak256("${staticRouteData.baseRoute + staticRouteData.subRoute}"));
  uint256 constant ${staticRouteData.tableIdName} = _tableId;
`
}

${
  !structName
    ? ""
    : `
  struct ${structName} {
    ${renderList(fields, ({ name, typeId }) => `${typeId} ${name};`)}
  }
`
}

library ${libraryName} {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](${fields.length});
    ${renderList(fields, ({ enumName }, index) => `_schema[${index}] = SchemaType.${enumName};`)}

    return SchemaLib.encode(_schema);
  }

  /** Register the table's schema */
  function registerSchema(${_typedTableId}) internal {
    StoreSwitch.registerSchema(_tableId, getSchema());

    string[] memory _fieldNames = new string[](${fields.length});
    ${renderList(fields, (field, index) => `_fieldNames[${index}] = "${field.name}";`)}
    StoreSwitch.setMetadata(_tableId, "${libraryName}", _fieldNames);
  }

${
  !options.storeArgument
    ? ""
    : `
  /** Register the table's schema for the specified store */
  function registerSchema(${renderArguments([_typedTableId, "IStore _store"])}) internal {
    _store.registerSchema(_tableId, getSchema());
  }
`
}

${renderFieldMethods(options)}

${withRecordMethods ? renderRecordMethods(options) : ""}

  /* Delete all data for given keys */
  function deleteRecord(${renderArguments([_typedTableId, _typedKeyArgs])}) internal {
    ${_primaryKeysDefinition}
    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }
}

${
  // nothing can be cast to bool, so an assembly helper is required
  !fields.some(({ typeId }) => typeId === "bool")
    ? ""
    : `
  function _toBool(uint8 value) pure returns (bool result) {
    assembly {
      result := value
    }
  }
`
}

${
  // nothing can be cast from bool, so an assembly helper is required
  !options.primaryKeys.some(({ typeId }) => typeId === "bool")
    ? ""
    : `
  function _boolToBytes32(bool value) pure returns (bytes32 result) {
    assembly {
      result := value
    }
  }
`
}

`;
}
