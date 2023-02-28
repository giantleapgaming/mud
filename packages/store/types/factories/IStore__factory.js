/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { Contract, utils } from "ethers";
const _abi = [
    {
        anonymous: false,
        inputs: [
            {
                indexed: false,
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                indexed: false,
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
        ],
        name: "StoreDeleteRecord",
        type: "event",
    },
    {
        anonymous: false,
        inputs: [
            {
                indexed: false,
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                indexed: false,
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
            {
                indexed: false,
                internalType: "uint8",
                name: "schemaIndex",
                type: "uint8",
            },
            {
                indexed: false,
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        name: "StoreSetField",
        type: "event",
    },
    {
        anonymous: false,
        inputs: [
            {
                indexed: false,
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                indexed: false,
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
            {
                indexed: false,
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        name: "StoreSetRecord",
        type: "event",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
        ],
        name: "deleteRecord",
        outputs: [],
        stateMutability: "nonpayable",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
            {
                internalType: "uint8",
                name: "schemaIndex",
                type: "uint8",
            },
        ],
        name: "getField",
        outputs: [
            {
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
            {
                internalType: "Schema",
                name: "schema",
                type: "bytes32",
            },
        ],
        name: "getRecord",
        outputs: [
            {
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
        ],
        name: "getRecord",
        outputs: [
            {
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
        ],
        name: "getSchema",
        outputs: [
            {
                internalType: "Schema",
                name: "schema",
                type: "bytes32",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
    {
        inputs: [],
        name: "isStore",
        outputs: [],
        stateMutability: "view",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "Schema",
                name: "schema",
                type: "bytes32",
            },
        ],
        name: "registerSchema",
        outputs: [],
        stateMutability: "nonpayable",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "contract IStoreHook",
                name: "hooks",
                type: "address",
            },
        ],
        name: "registerStoreHook",
        outputs: [],
        stateMutability: "nonpayable",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
            {
                internalType: "uint8",
                name: "schemaIndex",
                type: "uint8",
            },
            {
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        name: "setField",
        outputs: [],
        stateMutability: "nonpayable",
        type: "function",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[]",
                name: "key",
                type: "bytes32[]",
            },
            {
                internalType: "bytes",
                name: "data",
                type: "bytes",
            },
        ],
        name: "setRecord",
        outputs: [],
        stateMutability: "nonpayable",
        type: "function",
    },
];
export class IStore__factory {
    static createInterface() {
        return new utils.Interface(_abi);
    }
    static connect(address, signerOrProvider) {
        return new Contract(address, _abi, signerOrProvider);
    }
}
IStore__factory.abi = _abi;
