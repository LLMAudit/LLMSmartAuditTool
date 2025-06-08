# LLM-SmartAudit Evaluation

<div align="center">
  <img src="../images/logo1.png" height="80" alt="FTAudit Logo">
</div>

## 📖 Overview

The main evaluation results have been presented in our paper. Below is a summary of our findings across different datasets and modes.

## 😙 Dataset Information

### 📂 Labeled Dataset
The benchmark data is stored in [View Contracts](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/benchmark/Labeled). Common Vulnerability Type:

1. Reentrancy (RE)
2. Integer Overflow/Underflow (IO)
3. Unchecked Send (USE)
4. Unsafe Delegatecall (UD)
5. Timestamp Manipulation (TM)
6. ransaction Order Dependence (TOD)
7. Radomness Manipulation (RM)
8. Authorization Issue using ‘tx.origin’ (TX)
9. Unsafe Suicide (USU)
10. Gas Limitation (GL)

### 📂 Real-World Dataset

The benchmark data is stored in [View Contracts](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/benchmark/Realworld).
Compared with standard vulnerability types in Labeled Dataset, real-world situation is more complexity, which leads to more vulnerability types. We conclude all the labels to a list in Realworld Dataset. This list categorizes the vulnerabilities based on their nature rather than their exact labels in the file.

### 1. Access Control and Authorization Vulnerabilities (14)

1. **Missing access controls on critical functions** (e.g., initialization, admin, configuration functions)
2. **Unrestricted function access** allowing unauthorized users to execute privileged operations
3. **Signature validation flaws** (e.g., `ecrecover()` malleability issues)
4. **Missing zero-address validation** in signature verification and ownership transfers
5. **Persistent approvals without revocation mechanisms** (e.g., NFT approvals never expire)
6. **Inconsistent ownership behavior** across different contract functions
7. **Ability to bypass access restrictions** (e.g., self-addition to excluded lists)
8. **Missing governance checks** in critical governance functions
9. **Function access inconsistencies** (e.g., public vs. external visibility issues)
10. **Bypassing governance thresholds** through token transfers
11. **Functions callable by anyone** that should be restricted
12. **Duplicate ownership logic**
13. **Lack of approval revocation mechanisms**
14. **Approval persistence after transfers**


### 2. State Management and Initialization Vulnerabilities (12)

1. **Uninitialized state variables** causing incorrect default behaviors
2. **Functions callable before proper initialization** enabling contract takeover
3. **Incorrect state tracking** after operations (e.g., `holdsToken` not set)
4. **Stale or outdated state data** persisting after operations
5. **Copy-paste errors in initialization logic** lacking proper validation
6. **Default values causing errors** (e.g., zero values in critical parameters)
7. **State mismatches** between related variables
8. **Reliance on zero-value defaults** leading to security issues
9. **Missing state updates** after critical operations
10. **Incorrect assumptions** about state variable defaults
11. **Inconsistent state between related variables**
12. **Missing validation during setup**

### 3. Arithmetic and Logic Errors (10)

1. **Overflow and underflow risks** in numerical calculations
2. **Division by zero possibilities** in financial operations
3. **Incorrect math in financial calculations** (e.g., liquidity or share calculations)
4. **Precision loss** in mathematical operations
5. **Incorrect operator usage** (e.g., `||` instead of `&&`)
6. **Boundary condition errors** in array operations
7. **Off-by-one errors** in array indexing and loops
8. **Incorrect parameter validation** leading to unexpected behavior
9. **Type conversion errors** causing data corruption
10. **Slippage protection errors** in token swaps

### 4. Randomness and Probability Issues (5)

1. **Predictable or manipulable randomness** in selection mechanisms
2. **Incorrect probability calculations** affecting token selection
3. **Biased selection mechanisms** favoring certain outcomes
4. **Weak randomness implementation** allowing precomputation of outcomes
5. **Brute-forcing random selections** by miners or bots

### 5. External Call and Reentrancy Vulnerabilities (10)

1. **Reentrancy vulnerabilities** allowing multiple entries into critical functions
2. **State changes after external calls** enabling manipulation
3. **Missing reentrancy guards** in functions with external calls
4. **Unchecked external call results** (e.g., transfer return values not validated)
5. **Unhandled exceptions from external calls** causing inconsistent state
6. **Reliance on untrusted contracts** for critical operations
7. **Unchecked transfer results** leading to accounting errors
8. **Improper handling of non-standard tokens** (e.g., deflationary tokens)
9. **Incorrect assumptions about external contract behavior**
10. **Missing validation of external inputs**

### 6. Token Transfer and Standard Compliance Issues (10)

1. **Unhandled return values in token transfers** (e.g., ERC20 `transfer` not checked)
2. **Incorrect sender context in transfers** leading to fund loss
3. **Use of unsafe transfer methods** instead of safe alternatives
4. **Missing safeTransfer wrappers** for token operations
5. **Legacy transfer methods** with gas stipend limitations
6. **Non-compliance with ERC standards** (ERC20/ERC721/ERC1155)
7. **Incorrect implementation of standard interfaces**
8. **Missing required functionality** in token implementations
9. **Fee handling inconsistencies** in token transfers
10. **Fee bypass opportunities** through contract design flaws

### 7.Economic and Market Manipulation Vulnerabilities (13)

1. **Price manipulation opportunities** in trading functions
2. **Oracle manipulation risks** affecting price feeds
3. **Front-running vulnerabilities** in value-changing operations
4. **Sandwich attack vectors** in approval and trading functions
5. **Flash loan attacks** on governance and economic parameters
6. **Flash loan manipulation** of protocol states
7. **Reward siphoning via flash loans** due to missing lock periods
8. **Incorrect liquidation logic** in lending protocols
9. **Double counting of assets or rewards** in accounting
10. **Fake token attacks** used for minting or pool manipulation
11. **Griefing via fee manipulation** to lock user assets
12. **Fee handling inconsistencies**
13. **Fee bypass opportunities**

### 8. Denial of Service and Resource Exhaustion (10)

1. **Unbounded iteration in loops** causing gas limit issues
2. **Unbounded array growth** without cleanup mechanisms
3. **Excessive gas consumption** in critical operations
4. **Functions that can be deliberately blocked** by attackers
5. **Potential for griefing attacks** through resource exhaustion
6. **Permanent locking of assets** due to design flaws
7. **Storage bloat** without cleanup mechanisms
8. **Block gas limit exhaustion risks** in batch operations
9. **Potential DoS on unpayable contracts** lacking fallback functions
10. **Revert conditions in loops** causing operation failures

### 9. Event Emission and Error Handling (5)

1. **Lack of event emission for critical state changes**
2. **Non-indexed events** hindering off-chain efficiency
3. **Incorrect or unclear error messages** in revert statements
4. **Incorrect event emissions** (wrong events for operations)
5. **Missing informative require error strings**

### 10. Code Quality and Maintenance Issues (15)

1. **Inconsistent naming conventions** across contract functions
2. **Duplicate or redundant code** increasing attack surface
3. **Unused variables and functions** adding complexity
4. **Misleading comments or documentation**
5. **Suboptimal storage patterns** increasing gas costs
6. **Redundant operations** that could be optimized
7. **Improper function visibility** settings
8. **Inefficient data structure usage** (e.g., arrays vs. mappings)
9. **Use of deprecated Solidity features**
10. **Legacy code patterns** with known vulnerabilities
11. **Outdated compiler versions** missing security features
12. **Unsafe type conversions** leading to data corruption
13. **Inconsistent or missing constants** (e.g., magic numbers)
14. **Duplicate variables** with similar purposes
15. **Potential race conditions** in concurrent operations

### 11. Governance and Voting Issues (5)

1. **DAO design flaws** allowing manipulation
2. **Proposals that can be cancelled or re-executed** unexpectedly
3. **Flash loan voting manipulation** through temporary token control
4. **Incorrect weight accounting** in voting mechanisms
5. **Reward allocation and claiming inconsistencies**

#### 12. Timelock and Locking Mechanism Issues (5)

1. **Timelock data inconsistencies** after unlock operations
2. **Timelock logic bypass** allowing premature access
3. **No upper bound on lock time** enabling permanent locks
4. **No enforcement of single-use locks** allowing double-counting
5. **Unbounded growth of timelock keys** causing storage bloat

#### 13. Other: Edge-case scenario vulnerabilities (20)

### 📂 CVE Dataset

This [dataset](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/benchmark/cve) comprises well-known smart contract Common Vulnerabilities and Exposures (CVEs). While there were 592 smart contract CVEs recorded as of January 1, 2025, a large portion of these, particularly older ones, represent similar vulnerability types, predominantly integer overflows. Thus, we select a subset of 13 CVEs that represent a diverse range of vulnerability types.


## 📊 Evaluation Results

|Dataset| Mode | Results |
|-------|---------|---------------|
|Labeled| **Board Analysis (BA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/LabeledResult/BA) |
|Labeled| **Target Analysis (TA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/LabeledResult/TA) |
|Labeled| **Traditional Tools**| [Findings](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/evaluation/LabeledResult/traditional_tools_results.csv)|
|Labeled| **zero-shot Prompting** |[Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/LabeledResult)|
|Real-World| **Board Analysis (BA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/RealworldResult) |
|Real-World| **Target Analysis (TA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/RealworldResult) |
|Real-World| **Hybrid Mode**| [Findings]()|
|Real-World| **Traditional Tools**| [Findings](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/evaluation/RealworldResult/traditional_tools_results.csv)|
|CVE| **Hybrid Mode**| [Findings](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/evaluation/RealworldResult/CVE)|


For more detailed evaluation results, please visit our [HuggingFace Repository](https://huggingface.co/datasets/LLMAuditing/FTSmartAuditResults).


### 🌡️  Evaluation Results on Different Temperatures

We evaluated the performance of our model at different temperatures (0.2, 0.6, and 1.0) on the labeled dataset. The results are summarized in the table below:

Here's a summary of our findings:

<table>
  <caption>Comparative Evaluation of Smart Contract Vulnerability Detection Across Different Temperatures</caption>
  <thead>
    <tr>
      <th rowspan="2"><strong>Type</strong></th>
      <th colspan="5"><strong>Temperature = 0.2</strong></th>
      <th colspan="5"><strong>Temperature = 0.6</strong></th>
      <th colspan="5"><strong>Temperature = 1.0</strong></th>
    </tr>
    <tr>
      <th>TP</th>
      <th>FN</th>
      <th>FP</th>
      <th>TN</th>
      <th>F1-score</th>
      <th>TP</th>
      <th>FN</th>
      <th>FP</th>
      <th>TN</th>
      <th>F1-score</th>
      <th>TP</th>
      <th>FN</th>
      <th>FP</th>
      <th>TN</th>
      <th>F1-score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>RE</td>
      <td>10</td>
      <td>0</td>
      <td>3</td>
      <td>7</td>
      <td>87%</td>
      <td>10</td>
      <td>0</td>
      <td>2</td>
      <td>8</td>
      <td>95.2% (<span style="color: red;">↑4.3%</span>)</td>
      <td>10</td>
      <td>0</td>
      <td>3</td>
      <td>7</td>
      <td>87%</td>
    </tr>
    <tr>
      <td>IO</td>
      <td>10</td>
      <td>0</td>
      <td>2</td>
      <td>8</td>
      <td>90.9%</td>
      <td>10</td>
      <td>0</td>
      <td>2</td>
      <td>8</td>
      <td>90.9%</td>
      <td>10</td>
      <td>0</td>
      <td>1</td>
      <td>9</td>
      <td>95.2% (<span style="color: red;">↑4.3%</span>)</td>
    </tr>
    <tr>
      <td>USE</td>
      <td>7</td>
      <td>3</td>
      <td>0</td>
      <td>10</td>
      <td>70.6%</td>
      <td>6</td>
      <td>4</td>
      <td>0</td>
      <td>10</td>
      <td>75% (<span style="color: red;">↑4.4%</span>)</td>
      <td>6</td>
      <td>4</td>
      <td>0</td>
      <td>10</td>
      <td>75% (<span style="color: red;">↑4.4%</span>)</td>
    </tr>
    <tr>
      <td>UD</td>
      <td>9</td>
      <td>1</td>
      <td>0</td>
      <td>10</td>
      <td>94.7%</td>
      <td>9</td>
      <td>1</td>
      <td>0</td>
      <td>10</td>
      <td>94.7%</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>10</td>
      <td>100% (<span style="color: red;">↑5.3%</span>)</td>
    </tr>
    <tr>
      <td>TOD</td>
      <td>2</td>
      <td>8</td>
      <td>0</td>
      <td>10</td>
      <td>33.3%</td>
      <td>2</td>
      <td>8</td>
      <td>0</td>
      <td>10</td>
      <td>33.3%</td>
      <td>1</td>
      <td>9</td>
      <td>0</td>
      <td>10</td>
      <td>18.2% (<span style="color: green;">↓15.1%</span>)</td>
    </tr>
    <tr>
      <td>TM</td>
      <td>9</td>
      <td>1</td>
      <td>0</td>
      <td>10</td>
      <td>100%</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>10</td>
      <td>100%</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>10</td>
      <td>94.7% (<span style="color: green;">↓5.3%</span>)</td>
    </tr>
    <tr>
      <td>BR</td>
      <td>7</td>
      <td>3</td>
      <td>0</td>
      <td>10</td>
      <td>82.4%</td>
      <td>9</td>
      <td>1</td>
      <td>0</td>
      <td>10</td>
      <td>94.7% (<span style="color: red;">↑12.3%</span>)</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>10</td>
      <td>100% (<span style="color: red;">↑17.6%</span>)</td>
    </tr>
    <tr>
      <td>TX</td>
      <td>9</td>
      <td>1</td>
      <td>0</td>
      <td>10</td>
      <td>94.7%</td>
      <td>9</td>
      <td>1</td>
      <td>0</td>
      <td>10</td>
      <td>94.7%</td>
      <td>10</td>
      <td>0</td>
      <td>0</td>
      <td>10</td>
      <td>100% (<span style="color: red;">↑5.3%</span>)</td>
    </tr>
    <tr>
      <td>USU</td>
      <td>5</td>
      <td>5</td>
      <td>0</td>
      <td>10</td>
      <td>66.7%</td>
      <td>4</td>
      <td>6</td>
      <td>0</td>
      <td>10</td>
      <td>57.1% (<span style="color: green;">↓9.6%</span>)</td>
      <td>7</td>
      <td>3</td>
      <td>2</td>
      <td>8</td>
      <td>75% (<span style="color: red;">↑8.3%</span>)</td>
    </tr>
    <tr>
      <td>GL</td>
      <td>5</td>
      <td>5</td>
      <td>0</td>
      <td>10</td>
      <td>66.7%</td>
      <td>4</td>
      <td>6</td>
      <td>1</td>
      <td>9</td>
      <td>53.3% (<span style="color: green;">↓13.4%</span>)</td>
      <td>5</td>
      <td>5</td>
      <td>0</td>
      <td>10</td>
      <td>66.7%</td>
    </tr>
  </tbody>
</table>
<p><small>Note: <span style="color: red;">↑</span> and <span style="color: green;">↓</span> indicate an increase or decrease in values, compared to the default temperature value of 0.2.</small></p>

