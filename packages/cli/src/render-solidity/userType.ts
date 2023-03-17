import { AbiTypeToSchemaType, getStaticByteLength, SchemaType, SchemaTypeToAbiType } from "@latticexyz/schema-type";
import { StoreConfig } from "../index.js";
import { ImportDatum, RenderTableType } from "./types.js";

export type UserTypeInfo = ReturnType<typeof getUserTypeInfo>;

/**
 * Resolve an abi or user type into a SchemaType
 */
export function resolveAbiOrUserType(abiOrUserType: string, userTypesConfig: StoreConfig["userTypes"]) {
  if (abiOrUserType in AbiTypeToSchemaType) {
    const schemaType = AbiTypeToSchemaType[abiOrUserType];
    return {
      schemaType,
      renderTableType: getSchemaTypeInfo(schemaType),
    };
  } else {
    const { schemaType, renderTableType } = getUserTypeInfo(abiOrUserType, userTypesConfig);
    return { schemaType, renderTableType };
  }
}

/**
 * Get the required import for SchemaType|userType (`undefined` means that no import is required)
 */
export function importForAbiOrUserType(
  abiOrUserType: string,
  usedInDirectory: string,
  userTypesConfig: StoreConfig["userTypes"]
): ImportDatum | undefined {
  if (abiOrUserType in AbiTypeToSchemaType) {
    return undefined;
  } else {
    return {
      symbol: abiOrUserType,
      fromPath: userTypesConfig.path + ".sol",
      usedInPath: usedInDirectory,
    };
  }
}

export function getSchemaTypeInfo(schemaType: SchemaType): RenderTableType {
  const staticByteLength = getStaticByteLength(schemaType);
  const isDynamic = staticByteLength === 0;
  const typeId = SchemaTypeToAbiType[schemaType];
  return {
    typeId,
    typeWithLocation: isDynamic ? typeId + " memory" : typeId,
    enumName: SchemaType[schemaType],
    staticByteLength,
    isDynamic,
    typeWrap: "",
    typeUnwrap: "",
    internalTypeId: typeId,
  };
}

export function getUserTypeInfo(
  userType: string,
  userTypesConfig: StoreConfig["userTypes"]
): {
  schemaType: SchemaType;
  renderTableType: RenderTableType;
} {
  if (userType in userTypesConfig.enums) {
    const schemaType = SchemaType.UINT8;
    const staticByteLength = getStaticByteLength(schemaType);
    const isDynamic = staticByteLength === 0;
    const typeId = userType;
    return {
      schemaType,
      renderTableType: {
        typeId,
        typeWithLocation: typeId,
        enumName: SchemaType[schemaType],
        staticByteLength,
        isDynamic,
        typeWrap: `${userType}`,
        typeUnwrap: `${userType}`,
        internalTypeId: `${SchemaTypeToAbiType[schemaType]}`,
      },
    };
  } else {
    throw new Error(`User type "${userType}" does not exist`);
  }
}
