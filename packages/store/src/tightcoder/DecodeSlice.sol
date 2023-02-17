// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { TightCoder } from "./TightCoder.sol";
import { Slice } from "../Slice.sol";
import { SchemaType } from "../Types.sol";

library DecodeSlice {
  /************************************************************************
   *
   *    uint8 - uint256
   *
   ************************************************************************/

  function decodeArray_uint8(Slice self) internal pure returns (uint8[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 1, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint16(Slice self) internal pure returns (uint16[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 2, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint24(Slice self) internal pure returns (uint24[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 3, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint32(Slice self) internal pure returns (uint32[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 4, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint40(Slice self) internal pure returns (uint40[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 5, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint48(Slice self) internal pure returns (uint48[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 6, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint56(Slice self) internal pure returns (uint56[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 7, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint64(Slice self) internal pure returns (uint64[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 8, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint72(Slice self) internal pure returns (uint72[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 9, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint80(Slice self) internal pure returns (uint80[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 10, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint88(Slice self) internal pure returns (uint88[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 11, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint96(Slice self) internal pure returns (uint96[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 12, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint104(Slice self) internal pure returns (uint104[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 13, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint112(Slice self) internal pure returns (uint112[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 14, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint120(Slice self) internal pure returns (uint120[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 15, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint128(Slice self) internal pure returns (uint128[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 16, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint136(Slice self) internal pure returns (uint136[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 17, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint144(Slice self) internal pure returns (uint144[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 18, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint152(Slice self) internal pure returns (uint152[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 19, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint160(Slice self) internal pure returns (uint160[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 20, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint168(Slice self) internal pure returns (uint168[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 21, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint176(Slice self) internal pure returns (uint176[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 22, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint184(Slice self) internal pure returns (uint184[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 23, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint192(Slice self) internal pure returns (uint192[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 24, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint200(Slice self) internal pure returns (uint200[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 25, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint208(Slice self) internal pure returns (uint208[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 26, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint216(Slice self) internal pure returns (uint216[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 27, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint224(Slice self) internal pure returns (uint224[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 28, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint232(Slice self) internal pure returns (uint232[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 29, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint240(Slice self) internal pure returns (uint240[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 30, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint248(Slice self) internal pure returns (uint248[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 31, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_uint256(Slice self) internal pure returns (uint256[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 32, false);
    assembly {
      output := genericArray
    }
  }

  /************************************************************************
   *
   *    int8 - int256
   *
   ************************************************************************/

  function decodeArray_int8(Slice self) internal pure returns (int8[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 1, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int16(Slice self) internal pure returns (int16[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 2, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int24(Slice self) internal pure returns (int24[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 3, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int32(Slice self) internal pure returns (int32[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 4, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int40(Slice self) internal pure returns (int40[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 5, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int48(Slice self) internal pure returns (int48[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 6, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int56(Slice self) internal pure returns (int56[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 7, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int64(Slice self) internal pure returns (int64[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 8, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int72(Slice self) internal pure returns (int72[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 9, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int80(Slice self) internal pure returns (int80[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 10, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int88(Slice self) internal pure returns (int88[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 11, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int96(Slice self) internal pure returns (int96[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 12, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int104(Slice self) internal pure returns (int104[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 13, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int112(Slice self) internal pure returns (int112[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 14, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int120(Slice self) internal pure returns (int120[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 15, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int128(Slice self) internal pure returns (int128[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 16, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int136(Slice self) internal pure returns (int136[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 17, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int144(Slice self) internal pure returns (int144[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 18, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int152(Slice self) internal pure returns (int152[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 19, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int160(Slice self) internal pure returns (int160[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 20, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int168(Slice self) internal pure returns (int168[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 21, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int176(Slice self) internal pure returns (int176[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 22, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int184(Slice self) internal pure returns (int184[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 23, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int192(Slice self) internal pure returns (int192[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 24, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int200(Slice self) internal pure returns (int200[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 25, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int208(Slice self) internal pure returns (int208[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 26, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int216(Slice self) internal pure returns (int216[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 27, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int224(Slice self) internal pure returns (int224[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 28, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int232(Slice self) internal pure returns (int232[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 29, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int240(Slice self) internal pure returns (int240[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 30, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int248(Slice self) internal pure returns (int248[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 31, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_int256(Slice self) internal pure returns (int256[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 32, false);
    assembly {
      output := genericArray
    }
  }

  /************************************************************************
   *
   *    bytes1 - bytes32
   *
   ************************************************************************/

  function decodeArray_bytes1(Slice self) internal pure returns (bytes1[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 1, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes2(Slice self) internal pure returns (bytes2[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 2, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes3(Slice self) internal pure returns (bytes3[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 3, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes4(Slice self) internal pure returns (bytes4[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 4, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes5(Slice self) internal pure returns (bytes5[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 5, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes6(Slice self) internal pure returns (bytes6[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 6, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes7(Slice self) internal pure returns (bytes7[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 7, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes8(Slice self) internal pure returns (bytes8[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 8, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes9(Slice self) internal pure returns (bytes9[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 9, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes10(Slice self) internal pure returns (bytes10[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 10, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes11(Slice self) internal pure returns (bytes11[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 11, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes12(Slice self) internal pure returns (bytes12[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 12, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes13(Slice self) internal pure returns (bytes13[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 13, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes14(Slice self) internal pure returns (bytes14[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 14, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes15(Slice self) internal pure returns (bytes15[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 15, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes16(Slice self) internal pure returns (bytes16[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 16, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes17(Slice self) internal pure returns (bytes17[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 17, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes18(Slice self) internal pure returns (bytes18[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 18, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes19(Slice self) internal pure returns (bytes19[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 19, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes20(Slice self) internal pure returns (bytes20[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 20, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes21(Slice self) internal pure returns (bytes21[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 21, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes22(Slice self) internal pure returns (bytes22[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 22, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes23(Slice self) internal pure returns (bytes23[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 23, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes24(Slice self) internal pure returns (bytes24[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 24, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes25(Slice self) internal pure returns (bytes25[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 25, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes26(Slice self) internal pure returns (bytes26[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 26, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes27(Slice self) internal pure returns (bytes27[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 27, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes28(Slice self) internal pure returns (bytes28[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 28, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes29(Slice self) internal pure returns (bytes29[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 29, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes30(Slice self) internal pure returns (bytes30[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 30, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes31(Slice self) internal pure returns (bytes31[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 31, true);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bytes32(Slice self) internal pure returns (bytes32[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 32, true);
    assembly {
      output := genericArray
    }
  }

  /************************************************************************
   *
   *    Other types
   *
   ************************************************************************/

  function decodeArray_address(Slice self) internal pure returns (address[] memory output) {
    // Note: internally address is right-aligned, like uint160
    bytes32[] memory genericArray = TightCoder.decode(self, 20, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_bool(Slice self) internal pure returns (bool[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 1, false);
    assembly {
      output := genericArray
    }
  }

  function decodeArray_SchemaType(Slice self) internal pure returns (SchemaType[] memory output) {
    bytes32[] memory genericArray = TightCoder.decode(self, 1, false);
    assembly {
      output := genericArray
    }
  }
}
