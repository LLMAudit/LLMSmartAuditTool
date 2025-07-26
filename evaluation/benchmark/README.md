<div align="center">
  <img src="../images/logo1.png" height="80" alt="FTAudit Logo">

  # LLM-SmartAudit Evaluation Dataset and Resources
</div>

## 🔗 Dataset and Resources
| Type | Description | Source | HuggingFace |
|------|-------------|--------|-------------|
| 🛠️ **Labeled Dataset** | Curated smart contracts with known vulnerabilities | [Smartbugs](https://github.com/smartbugs/smartbugs-curated) | [📥 Download](https://huggingface.co/datasets/weifar/DetectableDataset) |
| ⚙️ **Real-world Dataset** | Vulnerabilities found in DeFi project audits | [Web3bugs](https://github.com/ZhangZhuoSJTU/Web3Bugs) | [📥 Download](https://huggingface.co/datasets/weifar/ContestDataset) |
| 🌱 **SmartContract-related CVE ** | List of 595 Common Vulnerabilities and Exposures (CVE) entries related to smart contract vulnerabilities | [CVE](https://www.cve.org/) | - |

## 📊 Dataset Distribution

### 1. Detectable Dataset
<div align="center">
  <img src="https://quickchart.io/chart?c=%7Btype%3A%27pie%27%2Cdata%3A%7Blabels%3A%5B%27Randomness%20predictable%27%2C%27Reentrancy%27%2C%27Unchecked%20low-level%20calls%27%2C%27Others%27%2C%27Denial-of-Service%27%2C%27Front-running%27%2C%27Access%20control%27%2C%27Arithmetic%27%2C%27Time%20manipulation%27%5D%2Cdatasets%3A%5B%7Bdata%3A%5B10%2C31%2C72%2C4%2C6%2C5%2C21%2C22%2C6%5D%7D%5D%7D%2Coptions%3A%7Bplugins%3A%7Blegend%3A%7Bposition%3A%27bottom%27%2Clabels%3A%7BboxWidth%3A12%7D%7D%7D%7D%7D" width="500" alt="Detectable Dataset Distribution">
</div>

|ID| Vulnerability Type                            |  Count                               |
| ------------------------------- | --------------------------------------- | --------------------------------------- |
|V1| Randomness predictable| 10|
|V2| Reentrancy| 10|
|V3| unchecked_low_level_calls| 10|
|V4| Others| 10|
|V5| Denial-of-Service| 10|
|V6| Front-running| 5|
|V7| Access control| 21|
|V8| Arithmetic| 22|
|V9| Time manipulation| 6|
|| **Total**| **182**|

### 2. Real-world Dataset
The distribution of real-world dataset is available in `Realworld_contract_distribution.csv`

### 3. SmartContract-related CVE
<div align="center">
  <img src="https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22Overflow%20Vulnerabilities%22%2C%20%22Vyper%20Vulnerabilities%22%2C%20%22Logic%20Vulnerabilities%22%2C%20%22OpenZeppelin%20Library%20Issues%22%2C%20%22Access%20Control%22%2C%20%22Early%20EVM%20Vulnerabilities%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B66.1%2C%2027.2%2C%204.0%2C%201.5%2C%200.8%2C%200.3%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6B6B%22%2C%20%22%234ECDC4%22%2C%20%22%2345B7D1%22%2C%20%22%2396CEB4%22%2C%20%22%239B59B6%22%2C%20%22%23FFEAA7%22%5D%7D%5D%7D%2C%20%22options%22%3A%20%7B%22title%22%3A%20%7B%22display%22%3A%20true%2C%20%22text%22%3A%20%22CVE%20Classification%20Distribution%20%28595%20Total%20CVEs%29%22%2C%20%22fontSize%22%3A%2018%2C%20%22fontColor%22%3A%20%22%23333%22%7D%2C%20%22legend%22%3A%20%7B%22position%22%3A%20%22right%22%2C%20%22labels%22%3A%20%7B%22fontSize%22%3A%2012%2C%20%22padding%22%3A%2015%7D%7D%2C%20%22plugins%22%3A%20%7B%22datalabels%22%3A%20%7B%22display%22%3A%20true%2C%20%22formatter%22%3A%20%22function%28value%2C%20ctx%29%20%7B%20return%20value%20%2B%20%27%25%27%3B%20%7D%22%2C%20%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2014%7D%7D%7D%2C%20%22tooltips%22%3A%20%7B%22callbacks%22%3A%20%7B%22label%22%3A%20%22function%28tooltipItem%2C%20data%29%20%7B%20var%20label%20%3D%20data.labels%5BtooltipItem.index%5D%3B%20var%20value%20%3D%20data.datasets%5B0%5D.data%5BtooltipItem.index%5D%3B%20return%20label%20%2B%20%27%3A%20%27%20%2B%20value%20%2B%20%27%25%27%3B%20%7D%22%7D%7D%7D%7D&width=950&height=650" width="350" alt="Detectable Dataset Distribution">
</div>


**Primary Patterns:**
1. **Vyper:** Vyper Language Vulnerabilities for EVM, Double evaluation, compiler bugs, memory issues, 165 CVEs
    * Double evaluation vulnerabilities (e.g., `sqrt`, `create_from_blueprint`, `slice` builtins)
    * Compiler bugs leading to incorrect bytecode generation (e.g., `range` loops, underallocation for large arrays, incorrect compilation of internal calls)
    * Memory access and buffer overflow issues (e.g., `lastIndexOf`, `_abi_decode`, `concat`, `raw_log`, `extract32`)
    * Improper handling of specific functions or conditions (e.g., `sqrt()` for decimals, precompile success flags, `raw_call` with value in delegatecall/staticcall, signed integer keys for arrays, stack management errors)
    * Access control and reentrancy issues (e.g., default functions not respecting nonreentrancy keys, named re-entrancy locks allocated incorrectly, `raw_call` reentrancy)
    * Order of evaluation issues in builtin functions and expressions (e.g., `uint256_addmod`, `uint256_mulmod`, `ecadd`, `ecmul`, `unsafe_add`)
2. **Integer Overflow:** Ethereum Token Epidemic, Massive mintToken integer overflow vulnerabilities, 395 CVEs
3. **OpenZeppelin Library Issues:** 9 CVEs,
    * Memory access issues (e.g., `lastIndexOf` in `Bytes.sol`, `Base64.encode` reading beyond buffer boundaries)
    * Merge issues causing line duplication (e.g., `Multicall.sol`, 4.9 branch patches)
    * Reentrancy vulnerabilities in upgradeable contracts
    * Signature malleability (`ECDSA.recover`, `ECDSA.tryRecover`)
    * Incorrect access control due to cross-chain call misclassification
    * Miscalculation of quorum requirements (`GovernorVotesQuorumFraction`)
    * Incorrect `SignatureChecker` and `ERC165Checker` behavior
    * Incorrect token accounting (`ERC721Consecutive`)
    * Inaccessible functions due to selector clashes in proxy contracts
    * Vulnerability in `GovernorCompatibilityBravo` allowing proposals with mismatched array lengths
    * Privilege escalation in `TimelockController`
    * `UUPSUpgradeable` vulnerability in uninitialized implementation contracts
    * Attack affecting `verifyMultiProof` and related functions
    * Frontrunning proposal creation in Governor contracts
    * Signature verification bypass in Cairo (`is_valid_eth_signature`)
    * Custom trusted forwarder issues with `ERC2771Context`
4. **Access Control:** 4 CVEs,
    *  `transfer` function in EOSIO batdappboomx, `breed` function in Seal Finance, `sellTokenForLRC` in Loopring, `addMeByRC` in RC, `Owned.setOwner` in PepeGxng, `DrugDealer` in Ether Cartel, `setOwner` in Aurora DAO and Aurora IDEX Membership, `onlyOwner` modifier in Coinlancer
4. **Early EVM Vulnerabilities:** Core Ethereum Virtual Machine implementation issues, 2 CVE
5. **Logic:** Other/Miscellaneous Smart Contract Vulnerabilities, 20 CVE
    * Access control issues (e.g., `transfer` function in EOSIO batdappboomx, `breed` function in Seal Finance, `sellTokenForLRC` in Loopring, `addMeByRC` in RC, `Owned.setOwner` in PepeGxng, `DrugDealer` in Ether Cartel, `setOwner` in Aurora DAO and Aurora IDEX Membership, `onlyOwner` modifier in Coinlancer)
    * Predictable random numbers in gambling games (e.g., HashHeroes Tiles, RuletkaIo, Greedy 599, Lucky9io, Cryptogs, The Ethereum Lottery, All For One, MyCryptoChamp, 1000 Guess, CryptoSaga)
    * Denial of Service (DoS) attacks (e.g., `doPayouts` in MegaCryptoPolis, EIP-165 `supportsInterface` query in OpenZeppelin)
    * Incorrect calculations or logic errors leading to asset manipulation (e.g., `_deposit` in Stable Yield Credit, `_sell` in GROWCHAIN, `sell` function potential traps, `transferFrom` logic errors)
    * Vesting account creation issues (Evmos)

More details can be found in [CVE_description](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/evaluation/benchmark/cve)
