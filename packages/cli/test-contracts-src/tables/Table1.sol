// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import {IStore} from "@latticexyz/store/src/IStore.sol";
import {StoreSwitch} from "@latticexyz/store/src/StoreSwitch.sol";
import {StoreCore} from "@latticexyz/store/src/StoreCore.sol";
import {SchemaType} from "@latticexyz/store/src/Types.sol";
import {Bytes} from "@latticexyz/store/src/Bytes.sol";
import {SliceLib} from "@latticexyz/store/src/Slice.sol";
import {EncodeArray} from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import {Schema, SchemaLib} from "@latticexyz/store/src/Schema.sol";
import {PackedCounter, PackedCounterLib} from "@latticexyz/store/src/PackedCounter.sol";

// Import user types
import {Enum1, Enum2} from "./../types.sol";

uint256 constant _tableId = uint256(keccak256("/Table1"));
uint256 constant Table1TableId = _tableId;

struct Table1Data {
  uint256 v1;
  int32 v2;
  bytes16 v3;
  address v4;
  bool v5;
  Enum1 v6;
  Enum2 v7;
}

library Table1 {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](7);
    _schema[0] = SchemaType.UINT256;
    _schema[1] = SchemaType.INT32;
    _schema[2] = SchemaType.BYTES16;
    _schema[3] = SchemaType.ADDRESS;
    _schema[4] = SchemaType.BOOL;
    _schema[5] = SchemaType.UINT8;
    _schema[6] = SchemaType.UINT8;

    return SchemaLib.encode(_schema);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema());
  }

  /** Get v1 */
  function getV1(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (uint256 v1) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set v1 */
  function setV1(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    uint256 v1
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 0, abi.encodePacked((v1)));
  }

  /** Get v2 */
  function getV2(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (int32 v2) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 1);
    return (int32(uint32(Bytes.slice4(_blob, 0))));
  }

  /** Set v2 */
  function setV2(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    int32 v2
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 1, abi.encodePacked((v2)));
  }

  /** Get v3 */
  function getV3(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (bytes16 v3) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 2);
    return (Bytes.slice16(_blob, 0));
  }

  /** Set v3 */
  function setV3(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    bytes16 v3
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 2, abi.encodePacked((v3)));
  }

  /** Get v4 */
  function getV4(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (address v4) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 3);
    return (address(Bytes.slice20(_blob, 0)));
  }

  /** Set v4 */
  function setV4(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    address v4
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 3, abi.encodePacked((v4)));
  }

  /** Get v5 */
  function getV5(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (bool v5) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 4);
    return (_toBool(uint8(Bytes.slice1(_blob, 0))));
  }

  /** Set v5 */
  function setV5(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    bool v5
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 4, abi.encodePacked((v5)));
  }

  /** Get v6 */
  function getV6(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (Enum1 v6) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 5);
    return Enum1(uint8(Bytes.slice1(_blob, 0)));
  }

  /** Set v6 */
  function setV6(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    Enum1 v6
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 5, abi.encodePacked(Enum1(v6)));
  }

  /** Get v7 */
  function getV7(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (Enum2 v7) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getField(_tableId, _primaryKeys, 6);
    return Enum2(uint8(Bytes.slice1(_blob, 0)));
  }

  /** Set v7 */
  function setV7(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    Enum2 v7
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setField(_tableId, _primaryKeys, 6, abi.encodePacked(Enum2(v7)));
  }

  /** Get the full data */
  function get(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal view returns (Table1Data memory _table) {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _primaryKeys, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    uint256 v1,
    int32 v2,
    bytes16 v3,
    address v4,
    bool v5,
    Enum1 v6,
    Enum2 v7
  ) internal {
    bytes memory _data = abi.encodePacked(v1, v2, v3, v4, v5, v6, v7);

    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.setRecord(_tableId, _primaryKeys, _data);
  }

  /** Set the full data using the data struct */
  function set(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7,
    Table1Data memory _table
  ) internal {
    set(k1, k2, k3, k4, k5, k6, k7, _table.v1, _table.v2, _table.v3, _table.v4, _table.v5, _table.v6, _table.v7);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (Table1Data memory _table) {
    _table.v1 = (uint256(Bytes.slice32(_blob, 0)));

    _table.v2 = (int32(uint32(Bytes.slice4(_blob, 32))));

    _table.v3 = (Bytes.slice16(_blob, 36));

    _table.v4 = (address(Bytes.slice20(_blob, 52)));

    _table.v5 = (_toBool(uint8(Bytes.slice1(_blob, 72))));

    _table.v6 = Enum1(uint8(Bytes.slice1(_blob, 73)));

    _table.v7 = Enum2(uint8(Bytes.slice1(_blob, 74)));
  }

  /* Delete all data for given keys */
  function deleteRecord(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum1 k6,
    Enum2 k7
  ) internal {
    bytes32[] memory _primaryKeys = new bytes32[](7);

    _primaryKeys[0] = bytes32(uint256((k1)));

    _primaryKeys[1] = bytes32(uint256(uint32((k2))));

    _primaryKeys[2] = bytes32((k3));

    _primaryKeys[3] = bytes32(bytes20((k4)));

    _primaryKeys[4] = _boolToBytes32((k5));

    _primaryKeys[5] = bytes32(uint256(Enum1(k6)));

    _primaryKeys[6] = bytes32(uint256(Enum2(k7)));

    StoreSwitch.deleteRecord(_tableId, _primaryKeys);
  }
}

function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}

function _boolToBytes32(bool value) pure returns (bytes32 result) {
  assembly {
    result := value
  }
}
