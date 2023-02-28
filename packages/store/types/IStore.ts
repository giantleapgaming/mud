/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import {
  BaseContract,
  BigNumber,
  BigNumberish,
  BytesLike,
  CallOverrides,
  ContractTransaction,
  Overrides,
  PopulatedTransaction,
  Signer,
  utils,
} from "ethers";
import { FunctionFragment, Result, EventFragment } from "@ethersproject/abi";
import { Listener, Provider } from "@ethersproject/providers";
import type {
  TypedEventFilter,
  TypedEvent,
  TypedListener,
  OnEvent,
} from "./common";

export interface IStoreInterface extends utils.Interface {
  contractName: "IStore";
  functions: {
    "deleteRecord(uint256,bytes32[])": FunctionFragment;
    "getField(uint256,bytes32[],uint8)": FunctionFragment;
    "getRecord(uint256,bytes32[],bytes32)": FunctionFragment;
    "getSchema(uint256)": FunctionFragment;
    "isStore()": FunctionFragment;
    "registerSchema(uint256,bytes32)": FunctionFragment;
    "registerStoreHook(uint256,address)": FunctionFragment;
    "setField(uint256,bytes32[],uint8,bytes)": FunctionFragment;
    "setRecord(uint256,bytes32[],bytes)": FunctionFragment;
  };

  encodeFunctionData(
    functionFragment: "deleteRecord",
    values: [BigNumberish, BytesLike[]]
  ): string;
  encodeFunctionData(
    functionFragment: "getField",
    values: [BigNumberish, BytesLike[], BigNumberish]
  ): string;
  encodeFunctionData(
    functionFragment: "getRecord",
    values: [BigNumberish, BytesLike[], BytesLike]
  ): string;
  encodeFunctionData(
    functionFragment: "getSchema",
    values: [BigNumberish]
  ): string;
  encodeFunctionData(functionFragment: "isStore", values?: undefined): string;
  encodeFunctionData(
    functionFragment: "registerSchema",
    values: [BigNumberish, BytesLike]
  ): string;
  encodeFunctionData(
    functionFragment: "registerStoreHook",
    values: [BigNumberish, string]
  ): string;
  encodeFunctionData(
    functionFragment: "setField",
    values: [BigNumberish, BytesLike[], BigNumberish, BytesLike]
  ): string;
  encodeFunctionData(
    functionFragment: "setRecord",
    values: [BigNumberish, BytesLike[], BytesLike]
  ): string;

  decodeFunctionResult(
    functionFragment: "deleteRecord",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "getField", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "getRecord", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "getSchema", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "isStore", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "registerSchema",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "registerStoreHook",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "setField", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "setRecord", data: BytesLike): Result;

  events: {
    "StoreDeleteRecord(uint256,bytes32[])": EventFragment;
    "StoreSetField(uint256,bytes32[],uint8,bytes)": EventFragment;
    "StoreSetRecord(uint256,bytes32[],bytes)": EventFragment;
  };

  getEvent(nameOrSignatureOrTopic: "StoreDeleteRecord"): EventFragment;
  getEvent(nameOrSignatureOrTopic: "StoreSetField"): EventFragment;
  getEvent(nameOrSignatureOrTopic: "StoreSetRecord"): EventFragment;
}

export type StoreDeleteRecordEvent = TypedEvent<
  [BigNumber, string[]],
  { table: BigNumber; key: string[] }
>;

export type StoreDeleteRecordEventFilter =
  TypedEventFilter<StoreDeleteRecordEvent>;

export type StoreSetFieldEvent = TypedEvent<
  [BigNumber, string[], number, string],
  { table: BigNumber; key: string[]; schemaIndex: number; data: string }
>;

export type StoreSetFieldEventFilter = TypedEventFilter<StoreSetFieldEvent>;

export type StoreSetRecordEvent = TypedEvent<
  [BigNumber, string[], string],
  { table: BigNumber; key: string[]; data: string }
>;

export type StoreSetRecordEventFilter = TypedEventFilter<StoreSetRecordEvent>;

export interface IStore extends BaseContract {
  contractName: "IStore";
  connect(signerOrProvider: Signer | Provider | string): this;
  attach(addressOrName: string): this;
  deployed(): Promise<this>;

  interface: IStoreInterface;

  queryFilter<TEvent extends TypedEvent>(
    event: TypedEventFilter<TEvent>,
    fromBlockOrBlockhash?: string | number | undefined,
    toBlock?: string | number | undefined
  ): Promise<Array<TEvent>>;

  listeners<TEvent extends TypedEvent>(
    eventFilter?: TypedEventFilter<TEvent>
  ): Array<TypedListener<TEvent>>;
  listeners(eventName?: string): Array<Listener>;
  removeAllListeners<TEvent extends TypedEvent>(
    eventFilter: TypedEventFilter<TEvent>
  ): this;
  removeAllListeners(eventName?: string): this;
  off: OnEvent<this>;
  on: OnEvent<this>;
  once: OnEvent<this>;
  removeListener: OnEvent<this>;

  functions: {
    deleteRecord(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;

    getField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      overrides?: CallOverrides
    ): Promise<[string] & { data: string }>;

    "getRecord(uint256,bytes32[],bytes32)"(
      table: BigNumberish,
      key: BytesLike[],
      schema: BytesLike,
      overrides?: CallOverrides
    ): Promise<[string] & { data: string }>;

    "getRecord(uint256,bytes32[])"(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: CallOverrides
    ): Promise<[string] & { data: string }>;

    getSchema(
      table: BigNumberish,
      overrides?: CallOverrides
    ): Promise<[string] & { schema: string }>;

    isStore(overrides?: CallOverrides): Promise<[void]>;

    registerSchema(
      table: BigNumberish,
      schema: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;

    registerStoreHook(
      table: BigNumberish,
      hooks: string,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;

    setField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      data: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;

    setRecord(
      table: BigNumberish,
      key: BytesLike[],
      data: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<ContractTransaction>;
  };

  deleteRecord(
    table: BigNumberish,
    key: BytesLike[],
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  getField(
    table: BigNumberish,
    key: BytesLike[],
    schemaIndex: BigNumberish,
    overrides?: CallOverrides
  ): Promise<string>;

  "getRecord(uint256,bytes32[],bytes32)"(
    table: BigNumberish,
    key: BytesLike[],
    schema: BytesLike,
    overrides?: CallOverrides
  ): Promise<string>;

  "getRecord(uint256,bytes32[])"(
    table: BigNumberish,
    key: BytesLike[],
    overrides?: CallOverrides
  ): Promise<string>;

  getSchema(table: BigNumberish, overrides?: CallOverrides): Promise<string>;

  isStore(overrides?: CallOverrides): Promise<void>;

  registerSchema(
    table: BigNumberish,
    schema: BytesLike,
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  registerStoreHook(
    table: BigNumberish,
    hooks: string,
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  setField(
    table: BigNumberish,
    key: BytesLike[],
    schemaIndex: BigNumberish,
    data: BytesLike,
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  setRecord(
    table: BigNumberish,
    key: BytesLike[],
    data: BytesLike,
    overrides?: Overrides & { from?: string | Promise<string> }
  ): Promise<ContractTransaction>;

  callStatic: {
    deleteRecord(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: CallOverrides
    ): Promise<void>;

    getField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      overrides?: CallOverrides
    ): Promise<string>;

    "getRecord(uint256,bytes32[],bytes32)"(
      table: BigNumberish,
      key: BytesLike[],
      schema: BytesLike,
      overrides?: CallOverrides
    ): Promise<string>;

    "getRecord(uint256,bytes32[])"(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: CallOverrides
    ): Promise<string>;

    getSchema(table: BigNumberish, overrides?: CallOverrides): Promise<string>;

    isStore(overrides?: CallOverrides): Promise<void>;

    registerSchema(
      table: BigNumberish,
      schema: BytesLike,
      overrides?: CallOverrides
    ): Promise<void>;

    registerStoreHook(
      table: BigNumberish,
      hooks: string,
      overrides?: CallOverrides
    ): Promise<void>;

    setField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      data: BytesLike,
      overrides?: CallOverrides
    ): Promise<void>;

    setRecord(
      table: BigNumberish,
      key: BytesLike[],
      data: BytesLike,
      overrides?: CallOverrides
    ): Promise<void>;
  };

  filters: {
    "StoreDeleteRecord(uint256,bytes32[])"(
      table?: null,
      key?: null
    ): StoreDeleteRecordEventFilter;
    StoreDeleteRecord(table?: null, key?: null): StoreDeleteRecordEventFilter;

    "StoreSetField(uint256,bytes32[],uint8,bytes)"(
      table?: null,
      key?: null,
      schemaIndex?: null,
      data?: null
    ): StoreSetFieldEventFilter;
    StoreSetField(
      table?: null,
      key?: null,
      schemaIndex?: null,
      data?: null
    ): StoreSetFieldEventFilter;

    "StoreSetRecord(uint256,bytes32[],bytes)"(
      table?: null,
      key?: null,
      data?: null
    ): StoreSetRecordEventFilter;
    StoreSetRecord(
      table?: null,
      key?: null,
      data?: null
    ): StoreSetRecordEventFilter;
  };

  estimateGas: {
    deleteRecord(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;

    getField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    "getRecord(uint256,bytes32[],bytes32)"(
      table: BigNumberish,
      key: BytesLike[],
      schema: BytesLike,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    "getRecord(uint256,bytes32[])"(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    getSchema(
      table: BigNumberish,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    isStore(overrides?: CallOverrides): Promise<BigNumber>;

    registerSchema(
      table: BigNumberish,
      schema: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;

    registerStoreHook(
      table: BigNumberish,
      hooks: string,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;

    setField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      data: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;

    setRecord(
      table: BigNumberish,
      key: BytesLike[],
      data: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<BigNumber>;
  };

  populateTransaction: {
    deleteRecord(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;

    getField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    "getRecord(uint256,bytes32[],bytes32)"(
      table: BigNumberish,
      key: BytesLike[],
      schema: BytesLike,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    "getRecord(uint256,bytes32[])"(
      table: BigNumberish,
      key: BytesLike[],
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    getSchema(
      table: BigNumberish,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    isStore(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    registerSchema(
      table: BigNumberish,
      schema: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;

    registerStoreHook(
      table: BigNumberish,
      hooks: string,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;

    setField(
      table: BigNumberish,
      key: BytesLike[],
      schemaIndex: BigNumberish,
      data: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;

    setRecord(
      table: BigNumberish,
      key: BytesLike[],
      data: BytesLike,
      overrides?: Overrides & { from?: string | Promise<string> }
    ): Promise<PopulatedTransaction>;
  };
}