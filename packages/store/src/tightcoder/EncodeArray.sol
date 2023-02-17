// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { SchemaType } from "../Types.sol";
import { TightCoder } from "./TightCoder.sol";

library EncodeArray {
  /************************************************************************
   *
   *    uint8 - uint256
   *
   ************************************************************************/

  function encode(uint8[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 1, false);
  }

  function encode(uint16[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 2, false);
  }

  function encode(uint24[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 3, false);
  }

  function encode(uint32[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 4, false);
  }

  function encode(uint40[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 5, false);
  }

  function encode(uint48[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 6, false);
  }

  function encode(uint56[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 7, false);
  }

  function encode(uint64[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 8, false);
  }

  function encode(uint72[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 9, false);
  }

  function encode(uint80[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 10, false);
  }

  function encode(uint88[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 11, false);
  }

  function encode(uint96[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 12, false);
  }

  function encode(uint104[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 13, false);
  }

  function encode(uint112[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 14, false);
  }

  function encode(uint120[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 15, false);
  }

  function encode(uint128[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 16, false);
  }

  function encode(uint136[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 17, false);
  }

  function encode(uint144[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 18, false);
  }

  function encode(uint152[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 19, false);
  }

  function encode(uint160[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 20, false);
  }

  function encode(uint168[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 21, false);
  }

  function encode(uint176[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 22, false);
  }

  function encode(uint184[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 23, false);
  }

  function encode(uint192[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 24, false);
  }

  function encode(uint200[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 25, false);
  }

  function encode(uint208[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 26, false);
  }

  function encode(uint216[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 27, false);
  }

  function encode(uint224[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 28, false);
  }

  function encode(uint232[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 29, false);
  }

  function encode(uint240[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 30, false);
  }

  function encode(uint248[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 31, false);
  }

  function encode(uint256[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 32, false);
  }

  /************************************************************************
   *
   *    int8 - int256
   *
   ************************************************************************/

  function encode(int8[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 1, false);
  }

  function encode(int16[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 2, false);
  }

  function encode(int24[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 3, false);
  }

  function encode(int32[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 4, false);
  }

  function encode(int40[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 5, false);
  }

  function encode(int48[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 6, false);
  }

  function encode(int56[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 7, false);
  }

  function encode(int64[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 8, false);
  }

  function encode(int72[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 9, false);
  }

  function encode(int80[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 10, false);
  }

  function encode(int88[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 11, false);
  }

  function encode(int96[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 12, false);
  }

  function encode(int104[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 13, false);
  }

  function encode(int112[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 14, false);
  }

  function encode(int120[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 15, false);
  }

  function encode(int128[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 16, false);
  }

  function encode(int136[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 17, false);
  }

  function encode(int144[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 18, false);
  }

  function encode(int152[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 19, false);
  }

  function encode(int160[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 20, false);
  }

  function encode(int168[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 21, false);
  }

  function encode(int176[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 22, false);
  }

  function encode(int184[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 23, false);
  }

  function encode(int192[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 24, false);
  }

  function encode(int200[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 25, false);
  }

  function encode(int208[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 26, false);
  }

  function encode(int216[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 27, false);
  }

  function encode(int224[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 28, false);
  }

  function encode(int232[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 29, false);
  }

  function encode(int240[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 30, false);
  }

  function encode(int248[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 31, false);
  }

  function encode(int256[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 32, false);
  }

  /************************************************************************
   *
   *    bytes1 - bytes32
   *
   ************************************************************************/

  function encode(bytes1[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 1, true);
  }

  function encode(bytes2[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 2, true);
  }

  function encode(bytes3[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 3, true);
  }

  function encode(bytes4[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 4, true);
  }

  function encode(bytes5[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 5, true);
  }

  function encode(bytes6[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 6, true);
  }

  function encode(bytes7[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 7, true);
  }

  function encode(bytes8[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 8, true);
  }

  function encode(bytes9[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 9, true);
  }

  function encode(bytes10[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 10, true);
  }

  function encode(bytes11[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 11, true);
  }

  function encode(bytes12[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 12, true);
  }

  function encode(bytes13[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 13, true);
  }

  function encode(bytes14[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 14, true);
  }

  function encode(bytes15[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 15, true);
  }

  function encode(bytes16[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 16, true);
  }

  function encode(bytes17[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 17, true);
  }

  function encode(bytes18[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 18, true);
  }

  function encode(bytes19[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 19, true);
  }

  function encode(bytes20[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 20, true);
  }

  function encode(bytes21[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 21, true);
  }

  function encode(bytes22[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 22, true);
  }

  function encode(bytes23[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 23, true);
  }

  function encode(bytes24[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 24, true);
  }

  function encode(bytes25[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 25, true);
  }

  function encode(bytes26[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 26, true);
  }

  function encode(bytes27[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 27, true);
  }

  function encode(bytes28[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 28, true);
  }

  function encode(bytes29[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 29, true);
  }

  function encode(bytes30[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 30, true);
  }

  function encode(bytes31[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 31, true);
  }

  function encode(bytes32[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 32, true);
  }

  /************************************************************************
   *
   *    Other types
   *
   ************************************************************************/

  function encode(address[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 20, false);
  }

  function encode(bool[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 1, false);
  }

  function encode(SchemaType[] memory input) internal pure returns (bytes memory output) {
    bytes32[] memory _genericArray;
    assembly {
      _genericArray := input
    }
    return TightCoder.encode(_genericArray, 1, false);
  }

  /**
   * Converts a `bytes` memory array to a single `bytes` memory value.
   * TODO: optimize gas cost
   */
  function encode(bytes[] memory input) internal pure returns (bytes memory output) {
    output = new bytes(0);
    for (uint256 i; i < input.length; i++) {
      output = bytes.concat(output, input[i]);
    }
  }
}
