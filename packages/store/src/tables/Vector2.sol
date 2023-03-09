// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "../IStore.sol";
import { StoreSwitch } from "../StoreSwitch.sol";
import { StoreCore } from "../StoreCore.sol";
import { Bytes } from "../Bytes.sol";
import { SliceLib } from "../Slice.sol";
import { EncodeArray } from "../tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../PackedCounter.sol";

uint256 constant _tableId = uint256(bytes32(abi.encodePacked(bytes16(""), bytes16("Vector2"))));
uint256 constant Vector2TableId = _tableId;

struct Vector2Data {
  uint32 x;
  uint32 y;
}

library Vector2 {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](2);
    _schema[0] = SchemaType.UINT32;
    _schema[1] = SchemaType.UINT32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](2);
    _fieldNames[0] = "x";
    _fieldNames[1] = "y";
    return ("Vector2", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get x */
  function getX(bytes32 key) internal view returns (uint32 x) {
    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set x */
  function setX(bytes32 key, uint32 x) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _primaryKeys, 0, abi.encodePacked((x)));
  }

  /** Get y */
  function getY(bytes32 key) internal view returns (uint32 y) {
    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 1);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set y */
  function setY(bytes32 key, uint32 y) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _primaryKeys, 1, abi.encodePacked((y)));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (Vector2Data memory _table) {
    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _primaryKeys, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 key, uint32 x, uint32 y) internal {
    bytes memory _data = abi.encodePacked(x, y);

    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    StoreSwitch.setRecord(_tableId, _primaryKeys, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, Vector2Data memory _table) internal {
    set(key, _table.x, _table.y);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (Vector2Data memory _table) {
    _table.x = (uint32(Bytes.slice4(_blob, 0)));

    _table.y = (uint32(Bytes.slice4(_blob, 4)));
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);
    _primaryKeys[0] = bytes32((key));

    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }
}
