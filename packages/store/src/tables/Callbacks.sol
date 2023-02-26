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

uint256 constant _tableId = uint256(keccak256("/store_internals/tables/Callbacks"));
uint256 constant CallbacksTableId = _tableId;

library Callbacks {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES24_ARRAY;

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

  /** Get value */
  function get(bytes32 key) internal view returns (bytes24[] memory value) {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    return SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes24();
  }

  /** Set value */
  function set(bytes32 key, bytes24[] memory value) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.setField(_tableId, _primaryKeys, 0, EncodeArray.encode(value));
  }

  /** Push an element to value */
  function push(bytes32 key, bytes24 _element) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    bytes memory _newBlob = abi.encodePacked(_blob, abi.encodePacked(_element));
    StoreSwitch.setField(_tableId, _primaryKeys, 0, _newBlob);
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _primaryKeys = new bytes32[](1);

    _primaryKeys[0] = bytes32(key);

    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }
}
