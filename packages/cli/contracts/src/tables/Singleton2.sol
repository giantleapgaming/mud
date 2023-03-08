// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

uint256 constant _tableId = uint256(keccak256("/Singleton2"));
uint256 constant Singleton2TableId = _tableId;

library Singleton2 {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32_ARRAY;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](1);
    _fieldNames[0] = "v1";
    return ("Singleton2", _fieldNames);
  }

  /** Register the table's schema  */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema());
  }

  /** Set the table's metadata  */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get v1  */
  function get() internal view returns (bytes32[] memory v1) {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set v1  */
  function set(bytes32[] memory v1) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.setField(_tableId, _primaryKeys, 0, EncodeArray.encode((v1)));
  }

  /** Push an element to v1  */
  function push(bytes32 _element) internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    bytes memory _newBlob = abi.encodePacked(_blob, abi.encodePacked((_element)));
    StoreSwitch.setField(_tableId, _primaryKeys, 0, _newBlob);
  }

  /* Delete all data for given keys  */
  function deleteRecord() internal {
    bytes32[] memory _primaryKeys = new bytes32[](0);

    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }
}
