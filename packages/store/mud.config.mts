import { storeConfig } from "@latticexyz/cli";

export default storeConfig({
  storeImportPath: "../",
  namespace: "mudstore",
  tables: {
    Hooks: "address[]",
    Callbacks: "bytes24[]",
    StoreMetadata: {
      primaryKeys: {
        tableId: "uint256",
      },
      schema: {
        tableName: "string",
        abiEncodedFieldNames: "bytes",
      },
      storeArgument: true,
    },
    Mixed: {
      schema: {
        u32: "uint32",
        u128: "uint128",
        a32: "uint32[]",
        s: "string",
      },
    },
    Vector2: {
      schema: {
        x: "uint32",
        y: "uint32",
      },
    },
  },

  recsGenerate: false,
});
