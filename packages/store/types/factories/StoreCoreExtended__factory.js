/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { utils, Contract, ContractFactory } from "ethers";
const _abi = [
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
        ],
        name: "StoreCore_TableNotFound",
        type: "error",
    },
    {
        inputs: [
            {
                internalType: "uint256",
                name: "table",
                type: "uint256",
            },
            {
                internalType: "bytes32[2]",
                name: "_key",
                type: "bytes32[2]",
            },
        ],
        name: "getData",
        outputs: [
            {
                internalType: "bytes",
                name: "",
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
                internalType: "bytes32",
                name: "_key",
                type: "bytes32",
            },
        ],
        name: "getRecord",
        outputs: [
            {
                internalType: "bytes",
                name: "",
                type: "bytes",
            },
        ],
        stateMutability: "view",
        type: "function",
    },
];
const _bytecode = "0x61085e61003a600b82828239805160001a60731461002d57634e487b7160e01b600052600060045260246000fd5b30600052607381538281f3fe73000000000000000000000000000000000000000030146080604052600436106100405760003560e01c80639ac8027c14610045578063cb8d1bf71461006e575b600080fd5b610058610053366004610583565b610081565b60405161006591906105a5565b60405180910390f35b61005861007c366004610610565b6100d9565b604080516001808252818301909252606091600091906020808301908036833701905050905082816000815181106100bb576100bb61069a565b6020026020010181815250506100d1848261013a565b949350505050565b60408051600280825260608083018452926000929190602083019080368337505084518251929350918391506000906101145761011461069a565b60209081029190910101528260016020020151816001815181106100bb576100bb61069a565b6060600061014784610192565b905080610187576040517f3a5454520000000000000000000000000000000000000000000000000000000081526004810185905260240160405180910390fd5b6100d18484836101a3565b600061019d82610303565b92915050565b606060006101b18360f01c90565b905080600060ff60e086901c168015610204576101ce8888610380565b915060006101dc8360e01c90565b1115610204576101ec8260e01c90565b6101f79060206106c6565b61020190846106c6565b92505b60008367ffffffffffffffff81111561021f5761021f6105fa565b6040519080825280601f01601f191660200182016040528015610249576020820181803683370190505b5090506020810161025c8a8a888461038d565b6102668460e01c90565b60000361027a575094506102fc9350505050565b61028486826106c6565b84815290506102946020826106c6565b905060005b838160ff1610156102f25760006102b18c8c846103b6565b905060006102c28760ff851661040f565b90506102d18282600087610441565b6102db81856106c6565b9350505080806102ea906106de565b915050610299565b5090955050505050505b9392505050565b604080516001808252818301909252600091829190602080830190803683370190505090508260001b8160008151811061033f5761033f61069a565b602090810291909101015260006103767f466b87090ce2bc34362737dab7b900dfc94a202aee6a6323f6813f7ce59d975e836104f6565b90506100d1815490565b600080610376848461054c565b81156103b057600061039f85856104f6565b90506103ae8184600085610441565b505b50505050565b60007f86425bff6b57326c7859e89024fe4f238ca327a1ae4a230180dd2f0e88aaa7d98484846040516020016103ef9493929190610738565b60408051601f198184030181529190528051602090910120949350505050565b60008061041d83600261076b565b6104289060046106c6565b905061043684826008021b90565b60f01c949350505050565b6020820484019350602082816104595761045961078a565b06915081156104aa5760208290036000600019600883021c1990508554600885021b8119845116828216178452508185116104955750506103b0565b6104a06001876106c6565b9550509283900392015b602083106104d257835481526104c16001856106c6565b9350601f19909201916020016104aa565b82156103b0576000600019600885021c198251865482169119161782525050505050565b60007f86425bff6b57326c7859e89024fe4f238ca327a1ae4a230180dd2f0e88aaa7d9838360405160200161052d939291906107a0565b60408051601f1981840301815291905280516020909101209392505050565b60007f86425bff6b57326c7859e89024fe4f238ca327a1ae4a230180dd2f0e88aaa7d9838360405160200161052d939291906107c8565b6000806040838503121561059657600080fd5b50508035926020909101359150565b600060208083528351808285015260005b818110156105d2578581018301518582016040015282016105b6565b818111156105e4576000604083870101525b50601f01601f1916929092016040019392505050565b634e487b7160e01b600052604160045260246000fd5b6000806060838503121561062357600080fd5b82359150602084603f85011261063857600080fd5b6040516040810181811067ffffffffffffffff8211171561065b5761065b6105fa565b60405280606086018781111561067057600080fd5b8387015b8181101561068b5780358352918401918401610674565b50505080925050509250929050565b634e487b7160e01b600052603260045260246000fd5b634e487b7160e01b600052601160045260246000fd5b600082198211156106d9576106d96106b0565b500190565b600060ff821660ff81036106f4576106f46106b0565b60010192915050565b600081518084526020808501945080840160005b8381101561072d57815187529582019590820190600101610711565b509495945050505050565b84815283602082015260806040820152600061075760808301856106fd565b905060ff8316606083015295945050505050565b6000816000190483118215151615610785576107856106b0565b500290565b634e487b7160e01b600052601260045260246000fd5b8381528260208201526060604082015260006107bf60608301846106fd565b95945050505050565b8381528260208201526080604082015260006107e760808301846106fd565b8281036060840152600681527f6c656e677468000000000000000000000000000000000000000000000000000060208201526040810191505094935050505056fea26469706673582212200134cfdc1ff9c1eae1326ee8db4dc74a7579e2f5caf8a8d6c946ea305382471464736f6c634300080d0033";
const isSuperArgs = (xs) => xs.length > 1;
export class StoreCoreExtended__factory extends ContractFactory {
    constructor(...args) {
        if (isSuperArgs(args)) {
            super(...args);
        }
        else {
            super(_abi, _bytecode, args[0]);
        }
        this.contractName = "StoreCoreExtended";
    }
    deploy(overrides) {
        return super.deploy(overrides || {});
    }
    getDeployTransaction(overrides) {
        return super.getDeployTransaction(overrides || {});
    }
    attach(address) {
        return super.attach(address);
    }
    connect(signer) {
        return super.connect(signer);
    }
    static createInterface() {
        return new utils.Interface(_abi);
    }
    static connect(address, signerOrProvider) {
        return new Contract(address, _abi, signerOrProvider);
    }
}
StoreCoreExtended__factory.bytecode = _bytecode;
StoreCoreExtended__factory.abi = _abi;
