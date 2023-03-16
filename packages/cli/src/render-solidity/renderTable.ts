import { renderArguments, renderCommonData, renderList, renderedSolidityHeader, renderImports } from "./common.js";
import { renderEncodeField, renderFieldMethods } from "./field.js";
import { renderRecordMethods } from "./record.js";
import { RenderTableDynamicField, RenderTableOptions } from "./types.js";

export function renderTable(options: RenderTableOptions) {
  const {
    imports,
    libraryName,
    structName,
    staticResourceData,
    storeImportPath,
    fields,
    staticFields,
    dynamicFields,
    withRecordMethods,
    primaryKeys,
  } = options;

  const { _typedTableId, _typedKeyArgs, _primaryKeysDefinition } = renderCommonData(options);

  return `${renderedSolidityHeader}

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "${storeImportPath}IStore.sol";
import { StoreSwitch } from "${storeImportPath}StoreSwitch.sol";
import { StoreCore } from "${storeImportPath}StoreCore.sol";
import { Bytes } from "${storeImportPath}Bytes.sol";
import { SliceLib } from "${storeImportPath}Slice.sol";
import { EncodeArray } from "${storeImportPath}tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "${storeImportPath}Schema.sol";
import { PackedCounter, PackedCounterLib } from "${storeImportPath}PackedCounter.sol";

${
  imports.length > 0
    ? `
      // Import user types
      ${renderImports(imports)}
    `
    : ""
}

${
  !staticResourceData
    ? ""
    : `
      uint256 constant _tableId = uint256(bytes32(abi.encodePacked(bytes16("${staticResourceData.namespace}"), bytes16("${staticResourceData.fileSelector}"))));
      uint256 constant ${staticResourceData.tableIdName} = _tableId;
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

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](${primaryKeys.length});
    ${renderList(primaryKeys, ({ enumName }, index) => `_schema[${index}] = SchemaType.${enumName};`)}

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](${fields.length});
    ${renderList(fields, (field, index) => `_fieldNames[${index}] = "${field.name}";`)}
    return ("${libraryName}", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema(${_typedTableId}) internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata(${_typedTableId}) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

${
  !options.storeArgument
    ? ""
    : `
  /** Register the table's schema for the specified store */
  function registerSchema(${renderArguments([_typedTableId, "IStore _store"])}) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata for the specified store */
  function setMetadata(${renderArguments([_typedTableId, "IStore _store"])}) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }
`
}

${renderFieldMethods(options)}

${withRecordMethods ? renderRecordMethods(options) : ""}

  /** Tightly pack full data using this table's schema */
  function encode(${renderArguments(
    options.fields.map(({ name, typeWithLocation }) => `${typeWithLocation} ${name}`)
  )}) internal returns (bytes memory) {
    ${renderEncodedLengths(dynamicFields)}
    return abi.encodePacked(${renderArguments([
      renderArguments(staticFields.map(({ name }) => name)),
      // TODO try gas optimization (preallocate for all, encodePacked statics, and direct encode dynamics)
      // (see https://github.com/latticexyz/mud/issues/444)
      ...(dynamicFields.length === 0
        ? []
        : ["_encodedLengths.unwrap()", renderArguments(dynamicFields.map((field) => renderEncodeField(field)))]),
    ])});
  }

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

function renderEncodedLengths(dynamicFields: RenderTableDynamicField[]) {
  if (dynamicFields.length > 0) {
    return `
    uint16[] memory _counters = new uint16[](${dynamicFields.length});
    ${renderList(dynamicFields, ({ name, arrayElement }, index) => {
      if (arrayElement) {
        return `_counters[${index}] = uint16(${name}.length * ${arrayElement.staticByteLength});`;
      } else {
        return `_counters[${index}] = uint16(bytes(${name}).length);`;
      }
    })}
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);
    `;
  } else {
    return "";
  }
}
