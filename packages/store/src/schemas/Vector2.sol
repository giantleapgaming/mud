// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { console } from "forge-std/console.sol";
import { IStore } from "../IStore.sol";
import { StoreSwitch } from "../StoreSwitch.sol";
import { StoreCore } from "../StoreCore.sol";
import { SchemaType } from "../Types.sol";
import { Bytes } from "../Bytes.sol";
import { Schema, SchemaLib } from "../Schema.sol";

// -- User defined schema --

struct Vector2 {
  uint32 x;
  uint32 y;
}

// -- Autogenerated library --
// TODO: autogenerate

library Vector2_ {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema schema) {
    schema = SchemaLib.encode(SchemaType.UINT32, SchemaType.UINT32);
  }

  /** Register the table's schema */
  function registerSchema(uint256 tableId) internal {
    StoreSwitch.registerSchema(tableId, getSchema());
  }

  function registerSchema(uint256 tableId, IStore store) internal {
    store.registerSchema(tableId, getSchema());
  }

  /** Set the table's data */
  function set(
    uint256 tableId,
    bytes32 key,
    uint32 x,
    uint32 y
  ) internal {
    bytes memory data = abi.encodePacked(x, y);
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setRecord(tableId, keyTuple, data);
  }

  function set(
    uint256 tableId,
    bytes32 key,
    Vector2 memory vec2
  ) internal {
    set(tableId, key, vec2.x, vec2.y);
  }

  function setX(
    uint256 tableId,
    bytes32 key,
    uint32 x
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setField(tableId, keyTuple, 0, abi.encodePacked(x));
  }

  function setY(
    uint256 tableId,
    bytes32 key,
    uint32 y
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setField(tableId, keyTuple, 1, abi.encodePacked(y));
  }

  /** Get the table's data */
  function get(uint256 tableId, bytes32 key) internal view returns (Vector2 memory vec2) {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory blob = StoreSwitch.getRecord(tableId, keyTuple);
    return decode(blob);
  }

  function get(
    uint256 tableId,
    IStore store,
    bytes32 key
  ) internal view returns (Vector2 memory vec2) {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory blob = store.getRecord(tableId, keyTuple);
    return decode(blob);
  }

  function decode(bytes memory blob) internal pure returns (Vector2 memory vec2) {
    return Vector2({ x: uint32(Bytes.slice4(blob, 0)), y: uint32(Bytes.slice4(blob, 4)) });
  }
}
