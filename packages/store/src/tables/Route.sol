// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

import { IStore } from "../IStore.sol";
import { StoreSwitch } from "../StoreSwitch.sol";
import { StoreCore } from "../StoreCore.sol";
import { SchemaType } from "../Types.sol";
import { Bytes } from "../Bytes.sol";
import { SliceLib } from "../Slice.sol";
import { EncodeArray } from "../tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../PackedCounter.sol";

uint256 constant _tableId = uint256(keccak256("/store_internals/tables/Route"));
uint256 constant RouteTableId = _tableId;

struct RouteData {
  address addr;
  bytes4 selector;
  uint8 executionMode;
}

library Route {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](3);
    _schema[0] = SchemaType.ADDRESS;
    _schema[1] = SchemaType.BYTES4;
    _schema[2] = SchemaType.UINT8;

    return SchemaLib.encode(_schema);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema());
  }

  /** Register the table's schema for the specified store */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema());
  }

  /** Get addr */
  function getAddr(bytes32 key) internal view returns (address addr) {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    return address(Bytes.slice20(_blob, 0));
  }

  /** Set addr */
  function setAddr(bytes32 key, address addr) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.setField(_tableId, _primaryKeys, 0, abi.encodePacked(addr));
  }

  /** Get selector */
  function getSelector(bytes32 key) internal view returns (bytes4 selector) {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 1);
    return Bytes.slice4(_blob, 0);
  }

  /** Set selector */
  function setSelector(bytes32 key, bytes4 selector) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.setField(_tableId, _primaryKeys, 1, abi.encodePacked(selector));
  }

  /** Get executionMode */
  function getExecutionMode(bytes32 key) internal view returns (uint8 executionMode) {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 2);
    return uint8(Bytes.slice1(_blob, 0));
  }

  /** Set executionMode */
  function setExecutionMode(bytes32 key, uint8 executionMode) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.setField(_tableId, _primaryKeys, 2, abi.encodePacked(executionMode));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (RouteData memory _table) {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _primaryKeys, getSchema());
    return decode(_blob);
  }

  /** Get the full data from the specified store */
  function get(IStore _store, bytes32 key) internal view returns (RouteData memory _table) {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = _store.getRecord(_tableId, _primaryKeys);
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(
    bytes32 key,
    address addr,
    bytes4 selector,
    uint8 executionMode
  ) internal {
    bytes memory _data = abi.encodePacked(addr, selector, executionMode);

    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.setRecord(_tableId, _primaryKeys, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, RouteData memory _table) internal {
    set(key, _table.addr, _table.selector, _table.executionMode);
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (RouteData memory _table) {
    _table.addr = address(Bytes.slice20(_blob, 0));

    _table.selector = Bytes.slice4(_blob, 20);

    _table.executionMode = uint8(Bytes.slice1(_blob, 24));
  }
}
