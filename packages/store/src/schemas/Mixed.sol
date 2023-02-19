// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { console } from "forge-std/console.sol";
import { IStore } from "../IStore.sol";
import { StoreSwitch } from "../StoreSwitch.sol";
import { StoreCore } from "../StoreCore.sol";
import { SchemaType } from "../Types.sol";
import { Bytes } from "../Bytes.sol";
import { SliceLib } from "../Slice.sol";
import { EncodeArray } from "../tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../PackedCounter.sol";

// -- User defined schema --

struct Mixed {
  uint32 u32;
  uint128 u128;
  uint32[] a32;
  string s;
}

// -- Autogenerated library --
// TODO: autogenerate

library Mixed_ {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema schema) {
    schema = SchemaLib.encode(SchemaType.UINT32, SchemaType.UINT128, SchemaType.UINT32_ARRAY, SchemaType.STRING);
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
    uint32 u32,
    uint128 u128,
    uint32[] memory a32,
    string memory s
  ) internal {
    PackedCounter encodedLengths = PackedCounterLib.pack(uint16(a32.length * 4), uint16(bytes(s).length));

    bytes memory data = abi.encodePacked(u32, u128, encodedLengths.unwrap(), EncodeArray.encode(a32), bytes(s));

    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;

    StoreSwitch.setRecord(tableId, keyTuple, data);
  }

  function set(
    uint256 tableId,
    bytes32 key,
    Mixed memory mixed
  ) internal {
    set(tableId, key, mixed.u32, mixed.u128, mixed.a32, mixed.s);
  }

  function setU32(
    uint256 tableId,
    bytes32 key,
    uint32 u32
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setField(tableId, keyTuple, 0, abi.encodePacked(u32));
  }

  function setU128(
    uint256 tableId,
    bytes32 key,
    uint128 u128
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setField(tableId, keyTuple, 1, abi.encodePacked(u128));
  }

  function setA32(
    uint256 tableId,
    bytes32 key,
    uint32[] memory a32
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setField(tableId, keyTuple, 2, EncodeArray.encode(a32));
  }

  function setS(
    uint256 tableId,
    bytes32 key,
    string memory s
  ) internal {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    StoreSwitch.setField(tableId, keyTuple, 3, bytes(s));
  }

  /** Get the table's data */
  function get(uint256 tableId, bytes32 key) internal view returns (Mixed memory mixed) {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory blob = StoreSwitch.getRecord(tableId, keyTuple, getSchema());
    return decode(blob);
  }

  function get(
    uint256 tableId,
    IStore store,
    bytes32 key
  ) internal view returns (Mixed memory mixed) {
    bytes32[] memory keyTuple = new bytes32[](1);
    keyTuple[0] = key;
    bytes memory blob = store.getRecord(tableId, keyTuple);
    return decode(blob);
  }

  function decode(bytes memory blob) internal view returns (Mixed memory mixed) {
    PackedCounter encodedLengths = PackedCounter.wrap((Bytes.slice32(blob, 20))); // 20 = 4 + 16 (static data length)

    mixed.u32 = uint32(Bytes.slice4(blob, 0));
    mixed.u128 = uint128(Bytes.slice16(blob, 4));

    uint256 start = 52;
    uint256 end = start + encodedLengths.atIndex(0);
    mixed.a32 = SliceLib.getSubslice(blob, start, end).decodeArray_uint32();

    start = end;
    end += encodedLengths.atIndex(1);
    mixed.s = string(SliceLib.getSubslice(blob, start, end).toBytes());
  }
}