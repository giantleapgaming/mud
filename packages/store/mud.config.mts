import { StoreUserConfig } from "@latticexyz/cli";
import { SchemaType } from "@latticexyz/schema-type";

const config: StoreUserConfig = {
  storeImportPath: "../",

  tables: {
    // TODO these arrays require push/pull to be implemented
    /*AddressArray: {
      schema: {
        addresses: SchemaType.ADDRESS_ARRAY,
      }
    },
    CallbackArray: {
      schema: {
        callbacks: SchemaType.BYTES24_ARRAY,
      }
    },*/
    Mixed: {
      path: "schemas/",
      schema: {
        u32: SchemaType.UINT32,
        u128: SchemaType.UINT128,
        a32: SchemaType.UINT32_ARRAY,
        s: SchemaType.STRING,
      },
    },
    Route: {
      path: "schemas/",
      schema: {
        addr: SchemaType.ADDRESS,
        selector: SchemaType.BYTES4,
        executionMode: SchemaType.UINT8,
      },
    },
    Vector2: {
      path: "schemas/",
      schema: {
        x: SchemaType.UINT32,
        y: SchemaType.UINT32,
      },
    },
  },
};

export default config;
