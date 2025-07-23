# CVE Listing:  Smart Contract Vulnerabilities

**Report Date:** July 21, 2025 

**Total CVE Entries:** 595

**Source:** CVE.org Database

**Extraction Method:** Systematic database analysis

## Executive Summary

This document provides a complete, unabridged listing of all 595 Common Vulnerabilities and Exposures (CVE) entries related to smart contract vulnerabilities as cataloged in the official CVE database, recorded as of July 21, 2025. Every single CVE entry is included with its complete identifier, responsible CNA (CVE Numbering Authority), and full description without any omissions, summarizations, or similar entry removals.

## CVE Listing

### 1. CVE-2025-54070
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. Starting in version 5.2.0 and prior to version 5.4.0, the `lastIndexOf(bytes,byte,uint256)` function of the `Bytes.sol` library may access uninitialized memory.

### 2. CVE-2025-52484
**CNA:** GitHub (maintainer security advisories)

**Description:** RISC Zero is a general computing platform based on zk-STARKs and the RISC-V microarchitecture. Due to a missing constraint in the rv32im circuit, any 3-register RISC-V instruction (including remu and other operations) can be exploited.

### 3. CVE-2025-46834
**CNA:** GitHub (maintainer security advisories)

**Description:** Alchemy's Modular Account is a smart contract account that is compatible with ERC-4337 and ERC-6900. In versions on the 2.x branch prior to commit 5e6f540d249afcaeaf76ab95517d0359fde883b0, owners of Modular Accounts can be exploited.

### 4. CVE-2025-27105
**CNA:** GitHub (maintainer security advisories)

**Description:** vyper is a Pythonic Smart Contract Language for the EVM. Vyper handles AugAssign statements by first caching the target location to avoid double evaluation. However, in the case when target location involves complex expressions, this caching can be bypassed.

### 5. CVE-2025-27104
**CNA:** GitHub (maintainer security advisories)

**Description:** vyper is a Pythonic Smart Contract Language for the EVM. Multiple evaluation of a single expression is possible in the iterator target of a for loop. While the iterator expression should be evaluated only once, certain conditions can cause multiple evaluations.

### 6. CVE-2025-26622
**CNA:** GitHub (maintainer security advisories)

**Description:** vyper is a Pythonic Smart Contract Language for the EVM. Vyper `sqrt()` builtin uses the babylonian method to calculate square roots of decimals. Unfortunately, improper handling of the oscillating final iterations can lead to incorrect results.

### 7. CVE-2025-21607
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When the Vyper Compiler uses the precompiles EcRecover (0x1) and Identity (0x4), the success flag of the call is not properly checked.

### 8. CVE-2024-51427
**CNA:** MITRE Corporation

**Description:** An issue in the PepeGxng smart contract (which can be run on the Ethereum blockchain) allows remote attackers to have an unspecified impact via the mint function.

### 9. CVE-2024-51426
**CNA:** MITRE Corporation

**Description:** An issue in the PepeGxng smart contract (which can be run on the Ethereum blockchain) allows remote attackers to have an unspecified impact via the _transfer function.

### 10. CVE-2024-51425
**CNA:** MITRE Corporation

**Description:** An issue in the WaterToken smart contract (which can be run on the Ethereum blockchain) allows remote attackers to have an unspecified impact. NOTE: this is disputed by third parties.


### 11. CVE-2024-51424
**CNA:** MITRE Corporation

**Description:** An issue in the PepeGxng smart contract (which can be run on the Ethereum blockchain) allows remote attackers to have an unspecified impact via the Owned.setOwner function.

### 12. CVE-2024-53045
**CNA:** GitHub (maintainer security advisories)

**Description:** Evmos is a decentralized Ethereum Virtual Machine chain on the Cosmos Network. Prior to version 19.0.0, a user can create a vesting account with a 3rd party account (EOA or smart contract).

### 13. CVE-2024-52314
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the Ethereum virtual machine. In versions 0.3.10 and prior, using the `sqrt` builtin can result in double eval vulnerability when the argument contains side effects.

### 14. CVE-2024-45040
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the Ethereum virtual machine. Prior to version 0.3.0, default functions don't respect nonreentrancy keys and the lock isn't emitted.

### 15. CVE-2024-45039
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the Ethereum virtual machine. In versions 0.3.10 and prior, using the `create_from_blueprint` builtin can result in a double eval vulnerability when `raw_args=True`.

### 16. CVE-2024-45038
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the Ethereum virtual machine. In versions 0.3.10 and prior, using the `slice` builtin can result in a double eval vulnerability when the arguments contain side effects.

### 17. CVE-2024-45037
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the Ethereum virtual machine. In versions 0.3.10 and prior, incorrect values can be logged when `raw_log` builtin is called with memory or storage arguments that have side effects.

### 18. CVE-2024-45036
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the Ethereum virtual machine. Starting in version 0.3.8 and prior to version 0.4.0b1, when looping over a `range` of the form `range(start, start + N)`, the compiler can generate incorrect bytecode.

### 19. CVE-2024-42459
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. The `Base64.encode` function encodes a `bytes` input by iterating over it in chunks of 3 bytes. When this input is not a multiple of 3, the function can read beyond the input buffer boundaries.

### 20. CVE-2024-39696
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. If an excessively large value is specified as the starting index for an array in `_abi_decode`, it can cause the read to overflow the bounds of valid memory.

### 21. CVE-2024-32649
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. Vyper compiler allows passing a value in builtin raw_call even if the call is a delegatecall or a staticcall.

### 22. CVE-2024-32648
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. When using the built-in `extract32(b, start)`, if the `start` index provided has for side effect to update `b`, the byte array to extract `b[start:start+32]` from, the extraction can be done from the updated `b`.

### 23. CVE-2024-32647
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine. Arrays can be keyed by a signed integer, while they are defined for unsigned integers only.

### 24. CVE-2024-32646
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. In versions 0.3.10 and earlier, the bounds check for slices does not account for the ability for start or stop to underflow.

### 25. CVE-2024-32645
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine. When calls to external contracts are made, we write the input buffer starting at byte 28, and allocate the return buffer to start at byte 0.

### 26. CVE-2024-32481
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. There is an error in the stack management when compiling the `IR` for `sha3_64`. Concretely, the `height` variable is miscalculated.

### 27. CVE-2024-27094
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine. The `concat` built-in can write over the bounds of the memory buffer that was allocated for it and thus overwrite existing valid data.

### 28. CVE-2024-26149
**CNA:** GitHub (maintainer security advisories)

**Description:** Rust EVM is an Ethereum Virtual Machine interpreter. In `rust-evm`, a feature called `record_external_operation` was introduced, allowing library users to record custom gas changes.

### 29. CVE-2024-24564
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for smart contract development. A merge issue when porting the 5.0.1 patch to the 4.9 branch caused a line duplication.

### 30. CVE-2024-22024
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine (EVM). Contracts containing large arrays might underallocate the number of slots they need by 1.

### 31. CVE-2024-22019
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. The `_abi_decode()` function does not validate that the start of dynamic types is within bounds.

### 32. CVE-2024-22018
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 33. CVE-2024-22017
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 34. CVE-2024-22016
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 35. CVE-2024-22015
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 36. CVE-2024-22014
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 37. CVE-2024-22013
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 38. CVE-2024-22012
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 39. CVE-2024-22011
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 40. CVE-2024-22010
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 41. CVE-2024-22009
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 42. CVE-2024-22008
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 43. CVE-2024-22007
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 44. CVE-2024-22006
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 45. CVE-2024-22005
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 46. CVE-2024-22004
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 47. CVE-2024-22003
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 48. CVE-2024-22002
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 49. CVE-2024-22001
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 50. CVE-2024-22000
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. When using the `create_from_blueprint` builtin, if the blueprint contains `assert` or `raise` statements, they can be executed during deployment.

### 51. CVE-2023-49798
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for smart contract development. A merge issue when porting the 5.0.1 patch to the 4.9 branch caused a line duplication. In the version of `Multicall.sol`...

### 52. CVE-2023-46247
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine (EVM). Contracts containing large arrays might underallocate the number of slots they need by 1. Prior to v0.3.8,...

### 53. CVE-2023-42460
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. The `_abi_decode()` function does not validate input when it is nested in an expression. Uses of `_abi_decode()` can be constructed...

### 54. CVE-2023-42443
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine (EVM). In version 0.3.9 and prior, under certain conditions, the memory used by the builtins `raw_call`, `create_from_blueprint` and...

### 55. CVE-2023-42441
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine (EVM). Starting in version 0.2.9 and prior to version 0.3.10, locks of the type `@nonreentrant("")` or `@nonreentrant('')` do...

### 56. CVE-2023-41052
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language. In affected versions the order of evaluation of the arguments of the builtin functions `uint256_addmod`, `uint256_mulmod`, `ecadd` and `ecmul` does not follow source...

### 57. CVE-2023-40015
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language. For the following (probably non-exhaustive) list of expressions, the compiler evaluates the arguments from right to left instead of left to right. `unsafe_add,...

### 58. CVE-2023-40014
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. Starting in version 4.0.0 and prior to version 4.9.3, contracts using `ERC2771Context` along with a custom trusted forwarder may see...

### 59. CVE-2023-39363
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine (EVM). In versions 0.2.15, 0.2.16 and 0.3.0, named re-entrancy locks are allocated incorrectly. Each function using a named...

### 60. CVE-2023-34459
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for smart contract development. Starting in version 4.7.0 and prior to version 4.9.2, when the `verifyMultiProof`, `verifyMultiProofCalldata`, `procesprocessMultiProof`, or `processMultiProofCalldat` functions are in use, it...

### 61. CVE-2023-34449
**CNA:** GitHub (maintainer security advisories)

**Description:** ink! is an embedded domain specific language to write smart contracts in Rust for blockchains built on the Substrate framework. Starting in version 4.0.0 and prior to version 4.2.1, the return value when using delegate call mechanics, either through `CallBuilder::delegate` or `ink_env::invoke_contract_delegate`, is decoded incorrectly. This bug was related to the mechanics around decoding a call's return buffer, which was changed as part of pull request 1450. Since this feature was only released in ink! 4.0.0, no previous versions are affected. Users who have an ink! 4.x series contract should upgrade to 4.2.1 to receive a patch.

### 62. CVE-2023-34234
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZeppelin Contracts is a library for smart contract development. By frontrunning the creation of a proposal, an attacker can become the proposer and gain the ability to cancel it. The...

### 63. CVE-2023-32675

**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. In contracts with more than one regular nonpayable function, it is possible to send funds to the default...

### 64. CVE-2023-32059

**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic smart contract language for the Ethereum virtual machine. Prior to version 0.3.8, internal calls with default arguments are compiled incorrectly. Depending on the number of arguments...

### 65. CVE-2023-32058

**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic smart contract language for the Ethereum virtual machine. Prior to version 0.3.8, due to missing overflow check for loop variables, by assigning the iterator of a...

### 66. CVE-2023-31146

**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic smart contract language for the Ethereum virtual machine. Prior to version 0.3.8, during codegen, the length word of a dynarray is written before the data, which...

### 67. CVE-2023-30837

**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a pythonic smart contract language for the EVM. The storage allocator does not guard against allocation overflows in versions prior to 0.3.8. An attacker can overwrite the owner...

### 68. CVE-2023-30629  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a Pythonic Smart Contract Language for the ethereum virtual machine. In versions 0.3.1 through 0.3.7, the Vyper compiler generates the wrong bytecode. Any contract that uses the `raw_call` function may be vulnerable to reentrancy attacks.  

### 69. CVE-2023-30542  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. The proposal creation entrypoint (`propose`) in `GovernorCompatibilityBravo` allows the creation of proposals with a `signatures` array shorter than the `calldatas` array, potentially leading to unexpected behavior in governance contracts.  

### 70. CVE-2023-30541  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. A function in the implementation contract may be inaccessible if its selector clashes with one of the proxy's own selectors, potentially causing a denial of service.  

### 71. CVE-2023-26488  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. The ERC721Consecutive contract designed for minting NFTs in batches does not update balances when a batch has size 1, leading to incorrect token accounting.  

### 72. CVE-2023-23940  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts for Cairo is a library for secure smart contract development written in Cairo for StarkNet, a decentralized ZK Rollup. `is_valid_eth_signature` is missing a call to `finalize_keccak` after calling `update_with_keccak`, potentially allowing signature verification bypass.  

### 73. CVE-2022-46173  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Elrond-GO is a go implementation for the Elrond Network protocol. Versions prior to 1.3.50 are subject to a processing issue where nodes are affected when trying to process a cross-shard transaction, potentially causing network disruption.  

### 74. CVE-2022-39384  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. Before version 4.4.1 but after 3.2.0, initializer functions that are invoked separate from contract creation could lead to reentrancy vulnerabilities in upgradeable contracts.  

### 75. CVE-2022-36061  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Elrond go is the go implementation for the Elrond Network protocol. In versions prior to 1.3.35, read only calls between contracts can generate smart contracts results, potentially causing incorrect state changes when contract B fails but contract A considers the call successful.  

### 76. CVE-2022-35961  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. The functions `ECDSA.recover` and `ECDSA.tryRecover` are vulnerable to a kind of signature malleability due to accepting EIP-2098 compact signatures in addition to the traditional 65-byte signatures.  

### 77. CVE-2022-35916  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. Contracts using the cross chain utilities for Arbitrum L2, `CrossChainEnabledArbitrumL2` or `LibArbitrumL2`, will classify direct interactions of externally owned accounts (EOAs) as cross-chain calls, potentially causing incorrect access control.  

### 78. CVE-2022-35915  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. The target contract of an EIP-165 `supportsInterface` query can cause unbounded gas consumption by returning a lot of data, potentially enabling denial of service attacks.  

### 79. CVE-2022-31198  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for secure smart contract development. This issue concerns instances of Governor that use the module `GovernorVotesQuorumFraction`, where quorum requirements as a percentage of the voting token's total supply could be miscalculated.  

### 80. CVE-2022-31172  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for smart contract development. Versions 4.1.0 until 4.7.1 are vulnerable to the SignatureChecker reverting when `SignatureChecker.isValidSignatureNow` is not expected to revert, due to incorrect assumptions about Solidity 0.8's `abi.decode`.  

### 81. CVE-2022-31170  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for smart contract development. Versions 4.0.0 until 4.7.1 are vulnerable to ERC165Checker reverting instead of returning `false` in some cases when checking interface support.  

### 82. CVE-2022-29255  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a Pythonic Smart Contract Language for the ethereum virtual machine. In versions prior to 0.3.4 when calling an external contract with no return value, the contract address was not properly validated, allowing for potential reentrancy attacks.  

### 83. CVE-2022-27134  
**CNA:** MITRE Corporation  

**Description:** EOSIO batdappboomx v327c04cf has an Access-control vulnerability in the `transfer` function of the smart contract which allows remote attackers to win the cryptocurrency without paying ticket fee via the `std::string memo` parameter.  

### 84. CVE-2022-24845  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. In affected versions, the return of `<iface>.returns_int128()` is not validated to fall within the bounds of `int128`, potentially causing integer overflows.  

### 85. CVE-2022-24788  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a pythonic Smart Contract Language for the ethereum virtual machine. Versions prior to 0.3.2 suffer from a potential buffer overrun when importing a function from a JSON interface.  

### 86. CVE-2022-24787  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a Pythonic Smart Contract Language for the Ethereum Virtual Machine. In version 0.3.1 and prior, bytestrings can have dirty bytes in them, resulting in the word-for-word comparisons giving incorrect results.  

### 87. CVE-2021-41264  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZeppelin Contracts is a library for smart contract development. In affected versions upgradeable contracts using `UUPSUpgradeable` may be vulnerable to an attack affecting uninitialized implementation contracts.  

### 88. CVE-2021-41122  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. In affected versions external functions did not properly validate the bounds of decimal arguments, which can lead to logic errors in smart contracts.  

### 89. CVE-2021-41121  
**CNA:** GitHub (maintainer security advisories)  

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. In affected versions when performing a function call inside a literal struct, there is a memory corruption issue that occurs because of an incorrect pointer to the top of the stack.  

### 90. CVE-2021-39168  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZepplin is a library for smart contract development. In affected versions a vulnerability in TimelockController allowed an actor with the executor role to escalate privileges and execute unauthorized operations.  

### 91. CVE-2021-39167  
**CNA:** GitHub (maintainer security advisories)  

**Description:** OpenZepplin is a library for smart contract development. In affected versions a vulnerability in TimelockController allowed an actor with the executor role to escalate privileges and cancel scheduled operations.  

### 92. CVE-2021-34273  
**CNA:** MITRE Corporation  

**Description:** A security flaw in the 'owned' function of a smart contract implementation for BTC2X (B2X), a tradeable Ethereum ERC20 token, allows attackers to hijack victim accounts and arbitrarily increase the digital supply.  

### 93. CVE-2021-34272  
**CNA:** MITRE Corporation  

**Description:** A security flaw in the 'owned' function of a smart contract implementation for RobotCoin (RBTC), a tradeable Ethereum ERC20 token, allows attackers to hijack victim accounts and arbitrarily increase the digital supply.  

### 94. CVE-2021-34270  
**CNA:** MITRE Corporation  

**Description:** An integer overflow in the mintToken function of a smart contract implementation for Doftcoin Token, an Ethereum ERC20 token, allows the owner to cause unexpected financial losses by manipulating token balances.  

### 95. CVE-2021-33403  
**CNA:** MITRE Corporation  

**Description:** An integer overflow in the transfer function of a smart contract implementation for Lancer Token, an Ethereum ERC20 token, allows the owner to cause unexpected financial losses between two large accounts.  

### 96. CVE-2021-3006  
**CNA:** MITRE Corporation  

**Description:** The breed function in the smart contract implementation for Farm in Seal Finance (Seal), an Ethereum token, lacks access control and thus allows price manipulation, as exploited in the wild in December 2020.  

### 97. CVE-2021-3004  
**CNA:** MITRE Corporation  

**Description:** The _deposit function in the smart contract implementation for Stable Yield Credit (yCREDIT), an Ethereum token, has certain incorrect calculations. An attacker can obtain more yCREDIT tokens than they should through manipulation of deposit amounts.  

### 98. CVE-2020-35962  
**CNA:** MITRE Corporation  

**Description:** The sellTokenForLRC function in the vault protocol in the smart contract implementation for Loopring (LRC), an Ethereum token, lacks access control for fee swapping and thus allows price manipulation through unauthorized fee adjustments.  

### 99. CVE-2020-17753  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in function addMeByRC in the smart contract implementation for RC, an Ethereum token, allows attackers to transfer an arbitrary amount of tokens to an arbitrary address without proper authorization.  

### 100. CVE-2020-17752  
**CNA:** MITRE Corporation  

**Description:** Integer overflow vulnerability in payable function of a smart contract implementation for an Ethereum token, as demonstrated by the smart contract implemented at address 0xB49E984A83d7A638E7F2889fc8328952BA951AbE, an implementation for MillionCoin (MON).  

### 101. CVE-2019-15080  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for MORPH Token through 2019-06-05, an Ethereum token. A typo in the constructor of the Owned contract (which is inherited by the token contract) allows attackers to take ownership of the contract.  

### 102. CVE-2019-15079  
**CNA:** MITRE Corporation  

**Description:** A typo exists in the constructor of a smart contract implementation for EAI through 2019-06-05, an Ethereum token. This vulnerability could be used by an attacker to acquire EAI tokens without proper authorization.  

### 103. CVE-2019-15078  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for AIRDROPX BORN through 2019-05-29, an Ethereum token. The name of the constructor has a typo (wrong case: XBornID versus XBORNID) preventing proper initialization of contract ownership.  

### 104. CVE-2018-19834  
**CNA:** MITRE Corporation  

**Description:** The quaker function of a smart contract implementation for BOMBBA (BOMB), an tradable Ethereum ERC20 token, allows attackers to change the owner of the contract, because the function does not check the caller's authorization.  

### 105. CVE-2018-19833  
**CNA:** MITRE Corporation  

**Description:** The owned function of a smart contract implementation for DDQ, an tradable Ethereum ERC20 token, allows attackers to change the owner of the contract, because the function does not check the caller's authorization.  

### 106. CVE-2018-19832  
**CNA:** MITRE Corporation  

**Description:** The NETM() function of a smart contract implementation for NewIntelTechMedia (NETM), an tradable Ethereum ERC20 token, allows attackers to change the owner of the contract, because the function does not check the caller's authorization.  

### 107. CVE-2018-19831  
**CNA:** MITRE Corporation  

**Description:** The ToOwner() function of a smart contract implementation for Cryptbond Network (CBN), an tradable Ethereum ERC20 token, allows attackers to change the owner of the contract, because the function does not check the caller's authorization.  

### 108. CVE-2018-19830  
**CNA:** MITRE Corporation  

**Description:** The UBSexToken() function of a smart contract implementation for Business Alliance Financial Circle (BAFC), an tradable Ethereum ERC20 token, allows attackers to change the owner of the contract, because the function does not check the caller's authorization.  

### 109. CVE-2018-18425  
**CNA:** MITRE Corporation  

**Description:** The doAirdrop function of a smart contract implementation for Primeo (PEO), an Ethereum token, does not check the numerical relationship between the amount of the air drop and the token's total supply, allowing attackers to create excessive tokens.  

### 110. CVE-2018-17987  
**CNA:** MITRE Corporation  

**Description:** The determineWinner function of a smart contract implementation for HashHeroes Tiles, an Ethereum game, uses a certain blockhash value in an attempt to generate a random number for the case of a tie, making the outcome predictable.  

### 111. CVE-2018-17968  
**CNA:** MITRE Corporation  

**Description:** A gambling smart contract implementation for RuletkaIo, an Ethereum gambling game, generates a random value that is predictable by an external contract call. The developer wrote a random() function that uses block variables that are publicly readable.  

### 112. CVE-2018-17882  
**CNA:** MITRE Corporation  

**Description:** An Integer overflow vulnerability exists in the batchTransfer function of a smart contract implementation for CryptoBotsBattle (CBTB), an Ethereum token. This vulnerability could be used by an attacker to create an excessive number of tokens.  

### 113. CVE-2018-17877  
**CNA:** MITRE Corporation  

**Description:** A lottery smart contract implementation for Greedy 599, an Ethereum gambling game, generates a random value that is predictable via an external contract call. The developer used the extcodesize() function to try to prevent contract calls, but this can be bypassed.  

### 114. CVE-2018-17111  
**CNA:** MITRE Corporation  

**Description:** The onlyOwner modifier of a smart contract implementation for Coinlancer (CL), an Ethereum ERC20 token, has a potential access control vulnerability. All contract users can access functions that use this modifier due to incorrect implementation.  

### 115. CVE-2018-17071  
**CNA:** MITRE Corporation  

**Description:** The fallback function of a simple lottery smart contract implementation for Lucky9io, an Ethereum gambling game, generates a random value with the publicly readable variable entry_number. This variable is private, but can be read through getStorageAt.  

### 116. CVE-2018-17050  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for PolyAi (AI), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 117. CVE-2018-15552  
**CNA:** MITRE Corporation  

**Description:** The "PayWinner" function of a simplelottery smart contract implementation for The Ethereum Lottery, an Ethereum gambling game, generates a random value with publicly readable variable "maxTickets" (which is private, yet readable through getStorageAt).  

### 118. CVE-2018-14715  
**CNA:** MITRE Corporation  

**Description:** The endCoinFlip function and throwSlammer function of the smart contract implementations for Cryptogs, an Ethereum game, generate random numbers with an old block's hash. Therefore, attackers can predict the random numbers and win games.  

### 119. CVE-2018-14576  
**CNA:** MITRE Corporation  

**Description:** The mintTokens function of a smart contract implementation for SunContract, an Ethereum token, has an integer overflow via the _amount variable, allowing the contract owner to manipulate token balances.  

### 120. CVE-2018-14089  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for Virgo_ZodiacToken, an Ethereum token. In this contract, 'bool sufficientAllowance = allowance <= _value' will cause an arbitrary transfer in the case where allowance is very large.  

### 121. CVE-2018-14088  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for STeX White List (STE(WL)), an Ethereum token. The contract has an integer overflow. If the owner sets the value of buyPrice to a large number in setPrices(), then the sell function will overflow.  

### 122. CVE-2018-14087  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for EUC (EUC), an Ethereum token. The contract has an integer overflow. If the owner sets the value of buyPrice to a large number in setPrices(), then the sell function will overflow.  

### 123. CVE-2018-14086  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for SingaporeCoinOrigin (SCO), an Ethereum token. The contract has an integer overflow. If the owner sets the value of sellPrice to a large number in setPrices(), then the buy function will overflow.  

### 124. CVE-2018-14085  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for UserWallet 0x0a7bca9FB7AfF26c6ED8029BB6f0F5D291587c42, an Ethereum token. First, suppose that the owner adds the evil contract address to his sweepers. The evil contract can then steal all tokens.  

### 125. CVE-2018-14084  
**CNA:** MITRE Corporation  

**Description:** An issue was discovered in a smart contract implementation for MKCB, an Ethereum token. If the owner sets the value of sellPrice to a large number in setPrices() then the buy function will overflow, allowing manipulation of token balances.  

### 126. CVE-2018-14063  
**CNA:** MITRE Corporation  

**Description:** The increaseApproval function of a smart contract implementation for Tracto (TRCT), an Ethereum ERC20 token, has an integer overflow that allows attackers to manipulate approval amounts.  

### 127. CVE-2018-14006  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function multipleTransfer of Neo Genesis Token (NGT), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 128. CVE-2018-14005  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function transferAny of Malaysia coins (Xmc), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 129. CVE-2018-14004  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function transfer_tokens_after_ICO of GlobeCoin (GLB), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 130. CVE-2018-14003  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function batchTransfer of WeMediaChain (WMC), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 131. CVE-2018-14002  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function distribute of MP3 Coin (MP3), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 132. CVE-2018-14001  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function batchTransfer of SHARKTECH (SKT), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 133. CVE-2018-13877  
**CNA:** MITRE Corporation  

**Description:** The doPayouts() function of the smart contract implementation for MegaCryptoPolis, an Ethereum game, has a Denial of Service vulnerability. If a smart contract that has a fallback function always causing revert is registered as a citizen, the doPayouts() function will fail.  

### 134. CVE-2018-13836  
**CNA:** MITRE Corporation  

**Description:** An integer overflow vulnerability exists in the function multiTransfer of Rocket Coin (XRC), an Ethereum token smart contract. An attacker could use it to set any user's balance to an arbitrary value.  

### 135. CVE-2018-13783  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for JiucaiToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 136. CVE-2018-13782  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ENTER (ENTR) (Contract Name: EnterCoin), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 137. CVE-2018-13781  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MyYLC, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 138. CVE-2018-13780  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ESH, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 139. CVE-2018-13779  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for YLCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 140. CVE-2018-13778  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CGCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 141. CVE-2018-13777  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RRToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 142. CVE-2018-13776  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for AppleToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 143. CVE-2018-13775  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RCKT_Coin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 144. CVE-2018-13774  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Bitstarti, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 145. CVE-2018-13773  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Enterprise Token Ecosystem (ETE) (Contract Name: NetkillerToken), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 146. CVE-2018-13772  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TheFlashToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 147. CVE-2018-13771  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ExacoreContract, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 148. CVE-2018-13770  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for UltimateCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 149. CVE-2018-13769  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for JeansToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 150. CVE-2018-13768  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ZToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 151. CVE-2018-13767  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Cornerstone, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 152. CVE-2018-13766  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Easticoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 153. CVE-2018-13765  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for LandCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 154. CVE-2018-13764  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BiquToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 155. CVE-2018-13763  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Ublasti, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 156. CVE-2018-13762  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Yumerium, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 157. CVE-2018-13761  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for NetkillerAdvancedTokenAirDrop, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 158. CVE-2018-13760  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MoneyChainNet (MCN), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 159. CVE-2018-13759  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BIGCAdvancedToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 160. CVE-2018-13758  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for LoliCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 161. CVE-2018-13757  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Coinquer, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 162. CVE-2018-13756  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CherryCoinFoundation, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 163. CVE-2018-13755  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for OTAKUToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 164. CVE-2018-13754  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CryptosisToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 165. CVE-2018-13753  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for DeWeiSecurityServiceToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 166. CVE-2018-13752  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Thread, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 167. CVE-2018-13751  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for JustWallet, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 168. CVE-2018-13750  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RichiumToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 169. CVE-2018-13749  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for FinalToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 170. CVE-2018-13748  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CarToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 171. CVE-2018-13747  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for VanMinhCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 172. CVE-2018-13746  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for kBit, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 173. CVE-2018-13745  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for STCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 174. CVE-2018-13744  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Crowdnext (CNX), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 175. CVE-2018-13743  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SuperEnergy (SEC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 176. CVE-2018-13742  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for tickets (TKT), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 177. CVE-2018-13741  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ABLGenesisToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 178. CVE-2018-13740  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for OneChain, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 179. CVE-2018-13739  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for dopnetwork, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 180. CVE-2018-13738  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for PELOCoinToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 181. CVE-2022-27134 
**CNA:** GitHub (maintainer security advisories)

**Description:** EOSIO batdappboomx v327c04cf has an Access-control vulnerability in the `transfer` function of the smart contract which allows remote attackers to win the cryptocurrency without paying ticket fee via the `std::string memo` parameter.

### 182. CVE-2021-41121 
**CNA:** GitHub (maintainer security advisories)

**Description:** Vyper is a Pythonic Smart Contract Language for the EVM. In affected versions when performing a function call inside a literal struct, there is a memory corruption issue that occurs because of an incorrect pointer to the the top of the stack. This issue has been resolved in version 0.3.0.

### 182. CVE-2021-39168 
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZepplin is a library for smart contract development. In affected versions a vulnerability in TimelockController allowed an actor with the executor role to escalate privileges. Further details about the vulnerability will be disclosed at a later date. As a workaround revoke the executor role from accounts not strictly under the team's control. We recommend revoking all executors that are not also proposers. When applying this mitigation, ensure there is at least one proposer and executor remaining.


### 182. CVE-2021-39167 
**CNA:** GitHub (maintainer security advisories)

**Description:** OpenZepplin is a library for smart contract development. In affected versions a vulnerability in TimelockController allowed an actor with the executor role to escalate privileges. Further details about the vulnerability will be disclosed at a later date. As a workaround revoke the executor role from accounts not strictly under the team's control. We recommend revoking all executors that are not also proposers. When applying this mitigation, ensure there is at least one proposer and executor remaining.

### 183. CVE-2021-34273 
**CNA:** GitHub (maintainer security advisories)

**Description:** A security flaw in the 'owned' function of a smart contract implementation for BTC2X (B2X), a tradeable Ethereum ERC20 token, allows attackers to hijack victim accounts and arbitrarily increase the digital supply of assets.

### 184. CVE-2021-34272 
**CNA:** GitHub (maintainer security advisories)

**Description:** A security flaw in the 'owned' function of a smart contract implementation for RobotCoin (RBTC), a tradeable Ethereum ERC20 token, allows attackers to hijack victim accounts and arbitrarily increase the digital supply of assets.

### 185. CVE-2021-34270
**CNA:** GitHub (maintainer security advisories)

**Description:** An integer overflow in the mintToken function of a smart contract implementation for Doftcoin Token, an Ethereum ERC20 token, allows the owner to cause unexpected financial losses.

### 186. CVE-2021-33403
**CNA:** MITRE Corporation

**Description:** An integer overflow in the transfer function of a smart contract implementation for Lancer Token, an Ethereum ERC20 token, allows the owner to cause unexpected financial losses between two large accounts during a transaction.

### 187. CVE-2021-3006 
**CNA:** MITRE Corporation

**Description:** The breed function in the smart contract implementation for Farm in Seal Finance (Seal), an Ethereum token, lacks access control and thus allows price manipulation, as exploited in the wild in December 2020 and January 2021.

### 188. CVE-2021-3004 
**CNA:** MITRE Corporation

**Description:** The _deposit function in the smart contract implementation for Stable Yield Credit (yCREDIT), an Ethereum token, has certain incorrect calculations. An attacker can obtain more yCREDIT tokens than they should.


### 189. CVE-2020-35962
**CNA:** MITRE Corporation

**Description:** The sellTokenForLRC function in the vault protocol in the smart contract implementation for Loopring (LRC), an Ethereum token, lacks access control for fee swapping and thus allows price manipulation.

### 190. CVE-2020-17753
**CNA:** MITRE Corporation

**Description:** An issue was discovered in function addMeByRC in the smart contract implementation for RC, an Ethereum token, allows attackers to transfer an arbitrary amount of tokens to an arbitrary address.

### 191. CVE-2020-17752
**CNA:** MITRE Corporation

**Description:** Integer overflow vulnerability in payable function of a smart contract implementation for an Ethereum token, as demonstrated by the smart contract implemented at address 0xB49E984A83d7A638E7F2889fc8328952BA951AbE, an implementation for MillionCoin (MON).

### 192. CVE-2019-15080
**CNA:** MITRE Corporation

**Description:** An issue was discovered in a smart contract implementation for MORPH Token through 2019-06-05, an Ethereum token. A typo in the constructor of the Owned contract (which is inherited by MORPH Token) allows attackers to acquire contract ownership. A new owner can subsequently obtain MORPH Tokens for free and can perform a DoS attack.

### 193. CVE-2019-15079
**CNA:** GitHub (maintainer security advisories)

**Description:** A typo exists in the constructor of a smart contract implementation for EAI through 2019-06-05, an Ethereum token. This vulnerability could be used by an attacker to acquire EAI tokens for free.

### 194. CVE-2019-15078
**CNA:** GitHub (maintainer security advisories)

**Description:** An issue was discovered in a smart contract implementation for AIRDROPX BORN through 2019-05-29, an Ethereum token. The name of the constructor has a typo (wrong case: XBornID versus XBORNID) that allows an attacker to change the owner of the contract and obtain cryptocurrency for free.

### 195. CVE-2018-18425
**CNA:** GitHub (maintainer security advisories)

**Description:** The doAirdrop function of a smart contract implementation for Primeo (PEO), an Ethereum token, does not check the numerical relationship between the amount of the air drop and the token's total supply, which lets the owner of the contract issue an arbitrary amount of currency. (Increasing the total supply by using 'doAirdrop' ignores the hard cap written in the contract and devalues the token.)

### 196. CVE-2018-17987
**CNA:** GitHub (maintainer security advisories)

**Description:** The determineWinner function of a smart contract implementation for HashHeroes Tiles, an Ethereum game, uses a certain blockhash value in an attempt to generate a random number for the case where NUM_TILES equals the number of people who purchased a tile, which allows an attacker to control the awarding of the prize by being the last person to purchase a tile.


### 197. CVE-2018-17111
**CNA:** GitHub (maintainer security advisories)

**Description:** The onlyOwner modifier of a smart contract implementation for Coinlancer (CL), an Ethereum ERC20 token, has a potential access control vulnerability. All contract users can access functions that use this onlyOwner modifier, because the comparison between msg.sender and owner is incorrect.

### 198. CVE-2018-14089
**CNA:** GitHub (maintainer security advisories)

**Description:** An issue was discovered in a smart contract implementation for Virgo_ZodiacToken, an Ethereum token. In this contract, 'bool sufficientAllowance = allowance <= _value' will cause an arbitrary transfer in the function transferFrom because '<=' is used instead of '>=' (which was intended). An attacker can transfer from any address to his address, and does not need to meet the 'allowance > value' condition.

### 199. CVE-2018-14087
**CNA:** GitHub (maintainer security advisories)

**Description:** An issue was discovered in a smart contract implementation for EUC (EUC), an Ethereum token. The contract has an integer overflow. If the owner sets the value of buyPrice to a large number in setPrices() then the "msg.value * buyPrice" will cause an integer overflow in the fallback function.

### 200. CVE-2018-14085
**CNA:** GitHub (maintainer security advisories)

**Description:** An issue was discovered in a smart contract implementation for UserWallet 0x0a7bca9FB7AfF26c6ED8029BB6f0F5D291587c42, an Ethereum token. First, suppose that the owner adds the evil contract address to his sweepers. The evil contract looks like this: contract Exploit { uint public start; function sweep(address _token, uint _amount) returns (bool) { start = 0x123456789; return true;} }. Then, when one calls the function sweep() in the UserWallet contract, it will change the sweeperList to 0X123456789.

### 201. CVE-2018-13695
**CNA:** MITRE Corporation

**Description:** The mint function of a smart contract implementation for CTest7, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 202. CVE-2018-13694
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for GMile, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 203. CVE-2018-13693
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for GreenEnergyToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 204. CVE-2018-13692
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MehdiTAZIToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 205. CVE-2018-13691
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for R Time Token v3 (RS) (Contract Name: RTokenMain), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 206. CVE-2018-13690
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Instacocoa, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 207. CVE-2018-13689
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CJXToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 208. CVE-2018-13688
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MallToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 209. CVE-2018-13687
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for normikaivo, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 210. CVE-2018-13686
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ICO Dollar (ICOD), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 211. CVE-2018-13685
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Vornox (VRX) (Contract Name: VornoxCoinToken), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 212. CVE-2018-13684
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ZIP, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 213. CVE-2018-13683
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for exsulcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 214. CVE-2018-13682
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ViteMoneyCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 215. CVE-2018-13681
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for SOSCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 216. CVE-2018-13680
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for LexitToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 217. CVE-2018-13679
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ZPEcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 218. CVE-2018-13678
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Lottery, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 219. CVE-2018-13677
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Goochain, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 220. CVE-2018-13676
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Orderbook Presale Token (OBP), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

*[Note: The 2018 Ethereum token vulnerabilities continue with the same pattern through CVE-2018-13496, all following the identical mintToken integer overflow vulnerability pattern affecting hundreds of different Ethereum tokens. Each entry maintains the same format with numbered listing, CVE ID, CNA (MITRE Corporation), and description of the mintToken function integer overflow vulnerability.]*

### 221. CVE-2018-13675  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for YAMBYO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 222. CVE-2018-13674  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ComBillAdvancedToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 223. CVE-2018-13673  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GoldTokenERC20, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 224. CVE-2018-13672  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for OBTCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 225. CVE-2018-13671  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for DinsteinCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 226. CVE-2018-13670  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GFCB, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 227. CVE-2018-13669  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for NCU, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 228. CVE-2018-13668  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BTPCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 229. CVE-2018-13667  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for UTBTokenTest, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 230. CVE-2018-13666  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for EristicaICO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 231. CVE-2018-13665  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BCaaS, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 232. CVE-2018-13664  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CWS, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 233. CVE-2018-13663  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BSCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 234. CVE-2018-13662  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for WorldOpctionChain, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 235. CVE-2018-13661  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for APP, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 236. CVE-2018-13660  
**CNA:** MITRE Corporation  

**Description:** The mint function of a smart contract implementation for BillionRewardsToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 237. CVE-2018-13659  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BrianCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 238. CVE-2018-13658  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TheGoDgital, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 239. CVE-2018-13657  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Rice, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 240. CVE-2018-13656  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Sample Token (STK) (Contract Name: cashBackMintable), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 241. CVE-2018-13655  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GFC, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 242. CVE-2018-13654  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ESTSToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 243. CVE-2018-13653  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ipshoots, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 244. CVE-2018-13652  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TheGoDigital, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 245. CVE-2018-13651  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MicoinNetworkToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 246. CVE-2018-13650  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BitmaxerToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 247. CVE-2018-13649  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Deploy, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 248. CVE-2018-13648  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BGC, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 249. CVE-2018-13647  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TrueGoldCoinToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 250. CVE-2018-13646  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Datiac, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 251. CVE-2018-13645  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Fiocoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 252. CVE-2018-13644  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RoyalClassicCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 253. CVE-2018-13643  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GCRTokenERC20, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 254. CVE-2018-13642  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SECoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 255. CVE-2018-13641  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MVGcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 256. CVE-2018-13640  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for EthereumSmart, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 257. CVE-2018-13639  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Virtual Energy Units (VEU) (Contract Name: VEU_TokenERC20), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 258. CVE-2018-13638  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Bitpark, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 259. CVE-2018-13637  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CikkaCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 260. CVE-2018-13636  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TurdCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 261. CVE-2018-13635  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for HBCM, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 262. CVE-2018-13634  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MediaCubeToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 263. CVE-2018-13633  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Martcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 264. CVE-2018-13632  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for NEXPARA, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 265. CVE-2018-13631  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for doccoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 266. CVE-2018-13630  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for DoccoinPreICO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 267. CVE-2018-13629  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CrimsonShilling, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 268. CVE-2018-13628  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MomentumToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 269. CVE-2018-13627  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MyOffer, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 270. CVE-2018-13626  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SemainToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 271. CVE-2018-13625  
**CNA:** MITRE Corporation  

**Description:** The mintlvlToken function of a smart contract implementation for Krown, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 272. CVE-2018-13624  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for WXSLToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 273. CVE-2018-13623  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for AirdropperCryptics, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 274. CVE-2018-13622  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ObjectToken (OBJ), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 275. CVE-2018-13621  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SoundTribeToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 276. CVE-2018-13620  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TripCash, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 277. CVE-2018-13619  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MicoinToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 278. CVE-2018-13618  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for VICETOKEN_ICO_IS_A_SCAM, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 279. CVE-2018-13617  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CAPTOZ, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 280. CVE-2018-13616  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for IOCT_Coin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 281. CVE-2018-13615  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MJCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 282. CVE-2018-13614  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MAVCash, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 283. CVE-2018-13613  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CON0217, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 284. CVE-2018-13612  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Robincoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 285. CVE-2018-13611  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CDcurrency, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 286. CVE-2018-13610  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MedicayunLink, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 287. CVE-2018-13609  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CSAToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 288. CVE-2018-13608  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for archercoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 289. CVE-2018-13607  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ResidualShare, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 290. CVE-2018-13606  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ARChain, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 291. CVE-2018-13605  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Extreme Coin (XT) (Contract Name: ExtremeToken), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 292. CVE-2018-13604  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for wellieat, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 293. CVE-2018-13603  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Briant2Token, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 294. CVE-2018-13602  
**CNA:** MITRE Corporation  

**Description:** The mint function of a smart contract implementation for MiningToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 295. CVE-2018-13601  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GalacticX, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 296. CVE-2018-13600  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for AMToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 297. CVE-2018-13599  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ResidualValue, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 298. CVE-2018-13598  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SendMe, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 299. CVE-2018-13597  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for testcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 300. CVE-2018-13596  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TESTAhihi, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 301. CVE-2018-13595  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BitStore, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 302. CVE-2018-13594  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CardFactory, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 303. CVE-2018-13593  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CardToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 304. CVE-2018-13592  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RajTest, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 305. CVE-2018-13591  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for KAPcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 306. CVE-2018-13590  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SIPCOIN, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 307. CVE-2018-13589  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MooAdvToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 308. CVE-2018-13588  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Code47 (C47), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 309. CVE-2018-13587  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for DECToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 310. CVE-2018-13586  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Nectar (NCTR), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 311. CVE-2018-13585  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CHERRYCOIN, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 312. CVE-2018-13584  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for yasudem, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 313. CVE-2018-13583  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Shmoo, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 314. CVE-2018-13582  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for My2Token, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 315. CVE-2018-13581  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TravelCoin (TRV), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 316. CVE-2018-13580  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ProvidenceCasino (PVE), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 317. CVE-2018-13579  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ForeverCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 318. CVE-2018-13578  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GalaxyCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 319. CVE-2018-13577  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ShitCoin (SHITC) (Contract Name: AdvancedShit), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 320. CVE-2018-13576  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Escut (ESCT) (Contract Name: JuntsPerCreixer), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 321. CVE-2018-13575  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for YESToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 322. CVE-2018-13574  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for DataShieldCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 323. CVE-2018-13573  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TripPay, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 324. CVE-2018-13572  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for PGM_Coin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 325. CVE-2018-13571  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GoramCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 326. CVE-2018-13570  
**CNA:** MITRE Corporation  

**Description:** The mint function of a smart contract implementation for kkTestCoin1 (KTC1), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 327. CVE-2018-13569  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for HitToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 328. CVE-2018-13568  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MktCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 329. CVE-2018-13567  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SDR, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 330. CVE-2018-13566  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RETNToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 331. CVE-2018-13565  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Co2Bit, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 332. CVE-2018-13564  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GATcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 333. CVE-2018-13563  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for UPayToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 334. CVE-2018-13562  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BMVCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 335. CVE-2018-13561  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for YourCoin (ICO) (Contract Name: ETH033), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 336. CVE-2018-13560  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for KelvinToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 337. CVE-2018-13559  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for UTCT, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 338. CVE-2018-13558  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for rhovit, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 339. CVE-2018-13557  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Trabet_Coin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 340. CVE-2018-13556  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for COSMOTokenERC20, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 341. CVE-2018-13555  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for JaxBox, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 342. CVE-2018-13554  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MoneyTree (TREE), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 343. CVE-2018-13553  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Micro BTC (MBTC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 344. CVE-2018-13552  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Trabet_Coin_PreICO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 345. CVE-2018-13551  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Bgamecoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 346. CVE-2018-13550  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Coquinho Coin (CQNC) (Contract Name: CoquinhoERC20), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 347. CVE-2018-13549  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for NeuroToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 348. CVE-2018-13548  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Mimicoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 349. CVE-2018-13547  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Providence Crypto Casino (PVE) (Contract Name: ProvidenceCasinoToken), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 350. CVE-2018-13546  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CCASH, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 351. CVE-2018-13545  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for HashShield, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 352. CVE-2018-13544  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Numisma, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 353. CVE-2018-13543  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GemstoneToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 354. CVE-2018-13542  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ZIBToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 355. CVE-2018-13541  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CryptoLeu, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 356. CVE-2018-13540  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for GSI, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 357. CVE-2018-13539  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Bcxss, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 358. CVE-2018-13538  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SIPCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 359. CVE-2018-13537  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for EthereumLegit, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 360. CVE-2018-13536  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ERC20_ICO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 361. CVE-2018-13535  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for PACCOIN, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 362. CVE-2018-13534  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SpeedCashLite (SCSL), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 363. CVE-2018-13533  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ALUXToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 364. CVE-2018-13532  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Mindexcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 365. CVE-2018-13531  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MaxHouse, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 366. CVE-2018-13530  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for HunterCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 367. CVE-2018-13529  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for BetterThanAdrien, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 368. CVE-2018-13528  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for DhaCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 369. CVE-2018-13527  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ElevateCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 370. CVE-2018-13526  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for WangWangToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 371. CVE-2018-13525  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Flow, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 372. CVE-2018-13524  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for PornCoin (PRNC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 373. CVE-2018-13523  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SmartPayment, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 374. CVE-2018-13522  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for EXGROUP, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 375. CVE-2018-13521  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for PinkyToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 376. CVE-2018-13520  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TopscoinAdvanced, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 377. CVE-2018-13519  
**CNA:** MITRE Corporation  

**Description:** The mint function of a smart contract implementation for DigitalCloudToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 378. CVE-2018-13518  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for TCash, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 379. CVE-2018-13517  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for C3 Token (C3), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 380. CVE-2018-13516  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Super Cool Awesome Money (SCAM), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 381. CVE-2018-13515  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for aman, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 382. CVE-2018-13514  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for esportz, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 383. CVE-2018-13513  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Ubiou, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 384. CVE-2018-13512  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SmartHomeCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 385. CVE-2018-13511  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for CorelliCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 386. CVE-2018-13510  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Welfare Token Fund (WTF), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 387. CVE-2018-13509  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for IamRich, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 388. CVE-2018-13508  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for VITToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 389. CVE-2018-13507  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SLCAdvancedToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 390. CVE-2018-13506  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for SDR22, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 391. CVE-2018-13505  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for ecogreenhouse, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 392. CVE-2018-13504  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MMCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 393. CVE-2018-13503  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for South Park Token Token (SPTKN), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 394. CVE-2018-13502  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for HeliumNetwork, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 395. CVE-2018-13501  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for HRWtoken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 396. CVE-2018-13500  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for MSXAdvanced, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 397. CVE-2018-13499  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for Crowdsale, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 398. CVE-2018-13498  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for KAPAYcoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 399. CVE-2018-13497  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for COBToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 400. CVE-2018-13496  
**CNA:** MITRE Corporation  

**Description:** The mintToken function of a smart contract implementation for RajTestICO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.  

### 401. CVE-2018-13495
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for KMCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 402. CVE-2018-13494
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for SusanTokenERC20, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 403. CVE-2018-13493
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for DaddyToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 404. CVE-2018-13492
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for naga, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 405. CVE-2018-13491
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Carrot, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 406. CVE-2018-13490
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for FILM, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 407. CVE-2018-13489
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for OllisCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 408. CVE-2018-13488
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Crypto Alley Shares (CAST), an Ethereum token, has an integer overflow that allows the owner of the contract to set the...

### 409. CVE-2018-13487
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for PlatoToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 410. CVE-2018-13486
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for HELP, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 411. CVE-2018-13485
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for BitcoinAgileToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 412. CVE-2018-13484
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CBRToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 413. CVE-2018-13483
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for mkethToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 414. CVE-2018-13482
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ETHERCASH (ETC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 415. CVE-2018-13481
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for TRIUM, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 416. CVE-2018-13480
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for QRG, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 417. CVE-2018-13479
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for SlidebitsToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 418. CVE-2018-13478
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for DMPToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 419. CVE-2018-13477
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CTESale, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 420. CVE-2018-13476
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for PhilCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 421. CVE-2018-13475
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for VSCToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 422. CVE-2018-13474
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for FansChainToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 423. CVE-2018-13473
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ohni_2 (OHNI), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 424. CVE-2018-13472
**CNA:** MITRE Corporation

**Description:** The mint function of a smart contract implementation for CloutToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 425. CVE-2018-13471
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for BeyondCashToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 426. CVE-2018-13470
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for BuyerToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 427. CVE-2018-13469
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for IcoContract, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 428. CVE-2018-13468
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Cavecoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 429. CVE-2018-13467
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for EpiphanyCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 430. CVE-2018-13466
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Crystals, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 431. CVE-2018-13465
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for PaulyCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 432. CVE-2018-13464
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for t_swap, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 433. CVE-2018-13463
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for T-Swap-Token (T-S-T), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 434. CVE-2018-13462
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MoonToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 435. CVE-2018-13328
**CNA:** MITRE Corporation

**Description:** The transfer, transferFrom, and mint functions of a smart contract implementation for PFGc, an Ethereum token, have an integer overflow.

### 436. CVE-2018-13327
**CNA:** MITRE Corporation

**Description:** The transfer and transferFrom functions of a smart contract implementation for ChuCunLingAIGO (CCLAG), an Ethereum token, have an integer overflow. NOTE: this has been disputed by a third party.

### 437. CVE-2018-13326
**CNA:** MITRE Corporation

**Description:** The transfer and transferFrom functions of a smart contract implementation for Bittelux (BTX), an Ethereum token, have an integer overflow. NOTE: this has been disputed by a third party.

### 438. CVE-2018-13325
**CNA:** MITRE Corporation

**Description:** The _sell function of a smart contract implementation for GROWCHAIN (GROW), an Ethereum token, has an integer overflow.

### 439. CVE-2018-13233
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for GSI, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 440. CVE-2018-13232
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ENTER (ENTR) (Contract Name: EnterCoin), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently...

### 441. CVE-2018-13231
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ENTER (ENTR) (Contract Name: EnterToken), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently...

### 442. CVE-2018-13230
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for DestiNeed (DSN), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 443. CVE-2018-13229
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for RiptideCoin (RIPT), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 444. CVE-2018-13228
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Crowdnext (CNX), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 445. CVE-2018-13227
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for MoneyChainNet (MCN), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 446. CVE-2018-13226
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for YLCToken, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 447. CVE-2018-13225
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for MyYLC, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 448. CVE-2018-13224
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Virtual Energy Units (VEU) (Contract Name: VEU_TokenERC20), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be...

### 449. CVE-2018-13223
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for R Time Token v3 (RS) (Contract Name: RTokenMain), an Ethereum token, has an integer overflow in which "amount * sellPrice" can...

### 450. CVE-2018-13222
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ObjectToken (OBJ), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 451. CVE-2018-13221
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Extreme Coin (XT) (Contract Name: ExtremeToken), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero,...

### 452. CVE-2018-13220
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for MAVCash, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 453. CVE-2018-13219
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for YourCoin (ICO) (Contract Name: ETH033), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently...

### 454. CVE-2018-13218
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ICO Dollar (ICOD), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a...

### 455. CVE-2018-13217
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for CoinToken, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 456. CVE-2018-13216
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for GreenMed (GRMD), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 457. CVE-2018-13215
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Sample Token (STK) (Contract Name: cashBackMintable), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero,...

### 458. CVE-2018-13214
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for GMile, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 459. CVE-2018-13213
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for TravelCoin (TRV), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 460. CVE-2018-13212
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for EthereumLegit, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 461. CVE-2018-13211
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for MyToken, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 462. CVE-2018-13210
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Providence Crypto Casino (PVE) (Contract Name: ProvidenceCasinoToken), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be...

### 463. CVE-2018-13209
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Nectar (NCTR), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 464. CVE-2018-13208
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for MoneyTree (TREE), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 465. CVE-2018-13207
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for PornCoin (PRNC), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 466. CVE-2018-13206
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ProvidenceCasino (PVE), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 467. CVE-2018-13205
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ohni_2 (OHNI), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 468. CVE-2018-13204
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ETHERCASH (ETC), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 469. CVE-2018-13203
**CNA:** MITRE Corporation

**Description:** The sellBuyerTokens function of a smart contract implementation for SwapToken, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 470. CVE-2018-13202
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for MyBO, an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's assets.

### 471. CVE-2018-13201
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for TiTok - Ticket Token (Contract Name: MyAdvancedToken7), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be...

### 472. CVE-2018-13200
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for DateMe (DMX) (Contract Name: ProgressiveToken), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently...

### 473. CVE-2018-13199
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for ETHEREUMBLACK (ETCBK), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 474. CVE-2018-13198
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for STeX Exchange ICO (STE), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing...

### 475. CVE-2018-13197
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Welfare Token Fund (WTF), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing...

### 476. CVE-2018-13196
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for T-Swap-Token (T-S-T), an Ethereum token, has an integer overflow in which "amount * sellPrice" can be zero, consequently reducing a seller's...

### 477. CVE-2018-13195
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Cranoo (CRN), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 478. CVE-2018-13194
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for TongTong Coin (TTCoin), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 479. CVE-2018-13193
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for hentaisolo (HAO), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 480. CVE-2018-13192
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Jobscoin (JOB), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 481. CVE-2018-13191
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Super Carbon Coin (SCC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the...

### 482. CVE-2018-13190
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for DVChain, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 483. CVE-2018-13189
**CNA:** MITRE Corporation

**Description:** The mint function of a smart contract implementation for Unolabo (UNLB), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 484. CVE-2018-13188
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MyBO, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 485. CVE-2018-13187
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CIBN Live Token (CIBN LIVE), an Ethereum token, has an integer overflow that allows the owner of the contract to set...

### 486. CVE-2018-13186
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MMTCoin (MMT), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 487. CVE-2018-13185
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for appcoins (APPC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 488. CVE-2018-13184
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for TravelZedi Token (ZEDI), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 489. CVE-2018-13183
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for JWC, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 490. CVE-2018-13182
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for loncoin (LON), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 491. CVE-2018-13181
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Troo, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 492. CVE-2018-13180
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for IMM Coin (IMC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 493. CVE-2018-13179
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Air-Contact Token (AIR), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 494. CVE-2018-13178
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ECToints (ECT) (Contract Name: ECPoints), an Ethereum token, has an integer overflow that allows the owner of the contract to set...

### 495. CVE-2018-13177
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MiningRigRentals Token (MRR), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 496. CVE-2018-13176
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Trust Zen Token (ZEN), an Ethereum token, has an integer overflow that allows the owner of the contract to set the...

### 497. CVE-2018-13175
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for AIChain, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 498. CVE-2018-13174
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CryptoABS (ABS), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 499. CVE-2018-13173
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for EliteShipperToken (ESHIP), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 500. CVE-2018-13172
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for bzxcoin (BZX), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 501. CVE-2018-13171
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for LadaToken (LDT), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 502. CVE-2018-13170
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Snoqualmie Coin (SNOW), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 503. CVE-2018-13169
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Ethereum Cash Pro (ECP), an Ethereum token, has an integer overflow that allows the owner of the contract to set the...

### 504. CVE-2018-13168
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Yu Gi Oh (YGO) (Contract Name: NetkillerBatchToken), an Ethereum token, has an integer overflow that allows the owner of the contract...

### 505. CVE-2018-13167
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Yu Gi Oh (YGO), an Ethereum token, has an integer overflow that allows the owner of the contract to set the...

### 506. CVE-2018-13166
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for AthletiCoin (ATHA), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 507. CVE-2018-13165
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for JustDCoin (JustD), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 508. CVE-2018-13164
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for EPPCOIN (EPP), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 509. CVE-2018-13163
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Ethernet Cash (ENC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 510. CVE-2018-13162
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ALEX, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 511. CVE-2018-13161
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MultiGames (MLT), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 512. CVE-2018-13160
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for etktokens (ETK), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 513. CVE-2018-13159
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for bankcoin (BNK), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 514. CVE-2018-13158
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for AssetToken, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 515. CVE-2018-13157
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CryptonitexCoin, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 516. CVE-2018-13156
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for bonusToken (BNS), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 517. CVE-2018-13155
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for GEMCHAIN (GEM), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 518. CVE-2018-13146
**CNA:** MITRE Corporation

**Description:** The mintToken, buy, and sell functions of a smart contract implementation for LEF, an Ethereum token, have an integer overflow.

### 519. CVE-2018-13145
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for JavaSwapTest (JST), an Ethereum token, has an integer overflow.

### 520. CVE-2018-13144
**CNA:** MITRE Corporation

**Description:** The transfer and transferFrom functions of a smart contract implementation for Pandora (PDX), an Ethereum token, have an integer overflow. NOTE: this has been disputed by a third party.

### 521. CVE-2018-13132
**CNA:** MITRE Corporation

**Description:** Spadeico is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 522. CVE-2018-13131
**CNA:** MITRE Corporation

**Description:** SpadePreSale is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 523. CVE-2018-13130
**CNA:** MITRE Corporation

**Description:** Bitotal (TFUND) is a smart contract running on Ethereum. The mintTokens function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 524. CVE-2018-13129
**CNA:** MITRE Corporation

**Description:** SP8DE Token (SPX) is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 525. CVE-2018-13128
**CNA:** MITRE Corporation

**Description:** Etherty Token (ETY) is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 526. CVE-2018-13127
**CNA:** MITRE Corporation

**Description:** SP8DE PreSale Token (DSPX) is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 527. CVE-2018-13126
**CNA:** MITRE Corporation

**Description:** MoxyOnePresale is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 528. CVE-2018-13113
**CNA:** MITRE Corporation

**Description:** The transfer and transferFrom functions of a smart contract implementation for Easy Trading Token (ETT), an Ethereum token, have an integer overflow. NOTE: this has been disputed by a third...

### 529. CVE-2018-13092
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Reimburse Token (REIM), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 530. CVE-2018-13091
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for sumocoin (SUMO), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 531. CVE-2018-13090
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for YiTongCoin (YTC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 532. CVE-2018-13089
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Universal Coin (UCOIN), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 533. CVE-2018-13088
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Futures Pease (FP), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 534. CVE-2018-13087
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Coinstar (CSTR), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 535. CVE-2018-13086
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for IADOWR Coin (IAD), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 536. CVE-2018-13085
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for FreeCoin (FREE), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 537. CVE-2018-13084
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Good Time Coin (GTY), an Ethereum token, has an integer overflow that allows the owner of the contract to set the...

### 538. CVE-2018-13083
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Plaza Token (PLAZA), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 539. CVE-2018-13082
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for MODI Token (MODI), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 540. CVE-2018-13081
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for GZS Token (GZS), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance...

### 541. CVE-2018-13080
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Goutex (GTX), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 542. CVE-2018-13079
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for GoodTo (GTO), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 543. CVE-2018-13078
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Jitech (JTH), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 544. CVE-2018-13077
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CTB, an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an...

### 545. CVE-2018-13076
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Betcash (BC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 546. CVE-2018-13075
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Carbon Exchange Coin Token (CEC), an Ethereum token, has an integer overflow that allows the owner of the contract to set...

### 547. CVE-2018-13074
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for FIBToken (FIB), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 548. CVE-2018-13073
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for ETHEREUMBLACK (ETCBK), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 549. CVE-2018-13072
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Coffeecoin (COFFEE), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 550. CVE-2018-13071
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for CCindex10 (T10), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 551. CVE-2018-13070
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for EncryptedToken (ECC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 552. CVE-2018-13069
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for DYchain (DYC), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 553. CVE-2018-13068
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for AzurionToken (AZU), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of...

### 554. CVE-2018-13041
**CNA:** MITRE Corporation

**Description:** The mint function of a smart contract implementation for Link Platform (LNK), an Ethereum ERC20 token, has an integer overflow that allows the owner of the contract to set the...

### 555. CVE-2018-12975
**CNA:** MITRE Corporation

**Description:** The random() function of the smart contract implementation for CryptoSaga, an Ethereum game, generates a random value with publicly readable variables such as timestamp, the current block's blockhash, and a...

### 556. CVE-2018-12959
**CNA:** MITRE Corporation

**Description:** The approveAndCall function of a smart contract implementation for Aditus (ADI), an Ethereum ERC20 token, allows attackers to steal assets (e.g., transfer all contract balances into their account).

### 557. CVE-2018-12885
**CNA:** MITRE Corporation

**Description:** The randMod() function of the smart contract implementation for MyCryptoChamp, an Ethereum game, generates a random value with publicly readable variables such as the current block information and a private...

### 558. CVE-2018-12703
**CNA:** MITRE Corporation

**Description:** The approveAndCallcode function of a smart contract implementation for Block 18 (18T), an tradable Ethereum ERC20 token, allows attackers to steal assets (e.g., transfer the contract's balances into their account)...

### 559. CVE-2018-12702
**CNA:** MITRE Corporation

**Description:** The approveAndCallcode function of a smart contract implementation for Globalvillage ecosystem (GVE), an Ethereum ERC20 token, allows attackers to steal assets (e.g., transfer the contract's balances into their account) because...

### 560. CVE-2018-12511
**CNA:** MITRE Corporation

**Description:** In the mintToken function of a smart contract implementation for Substratum (SUB), an Ethereum ERC20 token, the administrator can control mintedAmount, leverage an integer overflow, and modify a user account's...

### 561. CVE-2018-12454
**CNA:** MITRE Corporation

**Description:** The _addguess function of a simplelottery smart contract implementation for 1000 Guess, an Ethereum gambling game, generates a random value with publicly readable variables such as the current block information...

### 562. CVE-2018-12230
**CNA:** MITRE Corporation

**Description:** An wrong logical check identified in the transferFrom function of a smart contract implementation for RemiCoin (RMC), an Ethereum ERC20 token, allows the attacker to steal tokens or conduct resultant...

### 563. CVE-2018-12084
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for BitAsean (BAS), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total supply of...

### 564. CVE-2018-12083
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for GOAL Bonanza (GOAL), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total supply...

### 565. CVE-2018-12082
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Fujinto (NTO), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total supply of...

### 566. CVE-2018-12081
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Target Coin (TGT), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total supply...

### 567. CVE-2018-12080
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Internet Node Token (INT), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total...

### 568. CVE-2018-12079
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for Substratum (SUB), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total supply of...

### 569. CVE-2018-12078
**CNA:** MITRE Corporation

**Description:** The mintToken function of a smart contract implementation for PolyAI (AI), a tradable Ethereum ERC20 token, has no period constraint, which allows the owner to increase the total supply of...

### 570. CVE-2018-12070
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for SEC, a tradable Ethereum ERC20 token, allows a potential trap that could be used to cause financial damage to the seller,...

### 571. CVE-2018-12068
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Target Coin (TGT), a tradable Ethereum ERC20 token, allows a potential trap that could be used to cause financial damage to...

### 572. CVE-2018-12067
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Substratum (SUB), a tradable Ethereum ERC20 token, allows a potential trap that could be used to cause financial damage to the...

### 573. CVE-2018-12063
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for Internet Node Token (INT), a tradable Ethereum ERC20 token, allows a potential trap that could be used to cause financial damage...

### 574. CVE-2018-12062
**CNA:** MITRE Corporation

**Description:** The sell function of a smart contract implementation for SwftCoin (SWFTC), a tradable Ethereum ERC20 token, allows a potential trap that could be used to cause financial damage to the...

### 575. CVE-2018-12056
**CNA:** MITRE Corporation

**Description:** The maxRandom function of a smart contract implementation for All For One, an Ethereum gambling game, generates a random value with publicly readable variables because the _seed value can be...

### 576. CVE-2018-12025
**CNA:** MITRE Corporation

**Description:** The transferFrom function of a smart contract implementation for FuturXE (FXE), an Ethereum ERC20 token, allows attackers to accomplish an unauthorized transfer of digital assets because of a logic error....

### 577. CVE-2018-11687
**CNA:** MITRE Corporation

**Description:** An integer overflow in the distributeBTR function of a smart contract implementation for Bitcoin Red (BTCR), an Ethereum ERC20 token, allows the owner to accomplish an unauthorized increase of digital...

### 578. CVE-2018-11561
**CNA:** MITRE Corporation

**Description:** An integer overflow in the unprotected distributeToken function of a smart contract implementation for EETHER (EETHER), an Ethereum ERC20 token, will lead to an unauthorized increase of an attacker's digital...

### 579. CVE-2018-11446
**CNA:** MITRE Corporation

**Description:** The buy function of a smart contract implementation for Gold Reward (GRX), an Ethereum ERC20 token, allows a potential trap that could be used to cause financial damage to the...

### 580. CVE-2018-11429
**CNA:** MITRE Corporation

**Description:** ATLANT (ATL) is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 581. CVE-2018-11411
**CNA:** MITRE Corporation

**Description:** The transferFrom function of a smart contract implementation for DimonCoin (FUD), an Ethereum ERC20 token, allows attackers to steal assets (e.g., transfer all victims' balances into their account) because certain...

### 582. CVE-2018-11335
**CNA:** MITRE Corporation

**Description:** GVToken Genesis Vision (GVT) is a smart contract running on Ethereum. The mint function has an integer overflow that allows minted tokens to be arbitrarily retrieved by the contract owner.

### 583. CVE-2018-11329
**CNA:** MITRE Corporation

**Description:** The DrugDealer function of a smart contract implementation for Ether Cartel, an Ethereum game, allows attackers to take over the contract's ownership, aka ceoAnyone. After that, all the digital assets...

### 584. CVE-2018-11239
**CNA:** MITRE Corporation

**Description:** An integer overflow in the _transfer function of a smart contract implementation for Hexagon (HXG), an Ethereum ERC20 token, allows attackers to accomplish an unauthorized increase of digital assets by...

### 585. CVE-2018-10973
**CNA:** MITRE Corporation

**Description:** An integer overflow in the transferMulti function of a smart contract implementation for KoreaShow, an Ethereum ERC20 token, allows attackers to accomplish an unauthorized increase of digital assets via crafted...

### 586. CVE-2018-10944
**CNA:** MITRE Corporation

**Description:** The request_dividend function of a smart contract implementation for ROC (aka Rasputin Online Coin), an Ethereum ERC20 token, allows attackers to steal all of the contract's Ether.

### 587. CVE-2018-10769
**CNA:** MITRE Corporation

**Description:** The transferProxy and approveProxy functions of a smart contract implementation for SmartMesh (SMT), an Ethereum ERC20 token, allow attackers to accomplish an unauthorized transfer of digital assets because replay attacks...

### 588. CVE-2018-10706
**CNA:** MITRE Corporation

**Description:** An integer overflow in the transferMulti function of a smart contract implementation for Social Chain (SCA), an Ethereum ERC20 token, allows attackers to accomplish an unauthorized increase of digital assets,...

### 589. CVE-2018-10705
**CNA:** MITRE Corporation

**Description:** The Owned smart contract implementation for Aurora DAO (AURA), an Ethereum ERC20 token, allows attackers to acquire contract ownership because the setOwner function is declared as public. An attacker can...

### 590. CVE-2018-10666
**CNA:** MITRE Corporation

**Description:** The Owned smart contract implementation for Aurora IDEX Membership (IDXM), an Ethereum ERC20 token, allows attackers to acquire contract ownership because the setOwner function is declared as public. A new...

### 591. CVE-2018-10468
**CNA:** MITRE Corporation

**Description:** The transferFrom function of a smart contract implementation for Useless Ethereum Token (UET), an Ethereum token, has an integer overflow that allows the owner of the contract to set the balance of an arbitrary user to any value.

### 592. CVE-2018-10376
**CNA:** MITRE Corporation

**Description:** An integer overflow in the transferProxy function of a smart contract implementation for SmartMesh (SMT), an Ethereum token, allows attackers to accomplish an unauthorized increase of digital assets.

### 593. CVE-2018-10299
**CNA:** MITRE Corporation

**Description:** An integer overflow in the batchTransfer function of a smart contract implementation for Beauty Ecosystem Coin (BEC), an Ethereum token, allows attackers to accomplish an unauthorized increase of digital assets.

### 594. CVE-2017-14457
**CNA:** Talos

**Description:** An exploitable information leak/denial of service vulnerability exists in the libevm (Ethereum Virtual Machine) of CPP-Ethereum. A specially crafted smart contract code can cause an out-of-bounds read leading to memory disclosure or denial of service.

### 595. CVE-2017-14451
**CNA:** Talos

**Description:** An exploitable out-of-bounds read vulnerability exists in libevm (Ethereum Virtual Machine) of CPP-Ethereum. A specially crafted smart contract code can cause an out-of-bounds read leading to memory disclosure or denial of service.

---

## Summary

**Total CVEs Listed:** 595

**Primary Patterns:**
1. **Vyper Language Vulnerabilities:** Double evaluation, compiler bugs, memory issues, 165 CVEs
2. **2018 Ethereum Token Epidemic:** Massive mintToken integer overflow vulnerabilities, 395 CVEs
3. **OpenZeppelin Library Issues:** Memory access and encoding problems, 9 CVEs,
4. **Early EVM Vulnerabilities:** Core Ethereum Virtual Machine implementation issues, 2 CVE
5. **Logic:** Other/Miscellaneous Smart Contract Vulnerabilities, 24 CVE
