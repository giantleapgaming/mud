// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { console } from "forge-std/console.sol";
import { IStore } from "../IStore.sol";
import { StoreSwitch } from "../StoreSwitch.sol";
import { StoreCore } from "../StoreCore.sol";
import { SchemaType } from "../Types.sol";
import { SliceLib } from "../Slice.sol";
import { EncodeArray } from "../tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../PackedCounter.sol";

// -- User defined schema and tableId --
struct CallbackArray {
  bytes24[] callbacks;
}

// -- Autogenerated library to interact with tables with this schema --
// TODO: autogenerate

library CallbackArray_ {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema schema) {
    schema = SchemaLib.encode(SchemaType.Bytes24Array);
  }

  /** Register the table's schema */
  function registerSchema(bytes32 tableId) internal {
    StoreSwitch.registerSchema(tableId, getSchema());
  }

  function registerSchema(bytes32 tableId, IStore store) internal {
    store.registerSchema(tableId, getSchema());
  }

  /** Set the table's data */
  function set(
    bytes32 tableId,
    bytes32 key,
    bytes24[] memory callbacks
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory data = EncodeArray.encode(callbacks);
    StoreSwitch.setField(tableId, keyTuple, 0, data);
  }

  /**
   * Push an element to the callbacks array
   * TODO: this is super inefficient right now, need to add support for pushing to arrays to the store core library to avoid reading/writing the entire array
   */
  function push(
    bytes32 tableId,
    bytes32 key,
    bytes24 callback
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory callbacks = abi.encodePacked(StoreSwitch.getField(tableId, keyTuple, 0), callback);
    StoreSwitch.setField(tableId, keyTuple, 0, callbacks);
  }

  /** Get the table's data */
  function get(bytes32 tableId, bytes32 key) internal view returns (bytes24[] memory callbacks) {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory blob = StoreSwitch.getRecord(tableId, keyTuple);
    return decode(blob);
  }

  function get(
    bytes32 tableId,
    IStore store,
    bytes32 key
  ) internal view returns (bytes24[] memory callbacks) {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory blob = store.getRecord(tableId, keyTuple);
    return decode(blob);
  }

  function decode(bytes memory blob) internal pure returns (bytes24[] memory callbacks) {
    return SliceLib.getSubslice(blob, 32, blob.length).toBytes24Array();
  }
}
