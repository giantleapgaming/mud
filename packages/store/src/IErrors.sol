// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IErrors {
  // Errors include a stringified version of the tableId for easier debugging if cleartext tableIds are used
  error StoreCore_TableAlreadyExists(uint256 tableId, string tableIdString);
  error StoreCore_TableNotFound(uint256 tableId, string tableIdString);

  error StoreCore_NotImplemented();
  error StoreCore_NotDynamicField();
  error StoreCore_InvalidDataLength(uint256 expected, uint256 received);
  error StoreCore_InvalidFieldNamesLength(uint256 expected, uint256 received);
  error StoreCore_DataIndexOverflow(uint256 length, uint256 received);
}
