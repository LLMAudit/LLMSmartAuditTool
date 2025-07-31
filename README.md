
<div align="center">

  <a href=""><picture>
    <img src="./images/logo_LLM.jpg" height=100>
      </picture></a>


# LLM-Powered Multi-Agent for Smart Contract Auditing!

![](https://i.ibb.co/sJ7RhGG/image-41.png)
</div>

## 🏛️  LLM-SmartAudit System

### Framework
<div align="center">
  <img src="./images/multiframework.png" alt="LLM-SmartAudit System" height="250">
</div>

LLM-SmartAudit is a cutting-edge tool designed to revolutionize smart contract auditing using advanced language models. Our system provides a comprehensive solution for ensuring the security and reliability of blockchain-based applications.

### Automatic Task Diagram

<div align="center">
  <img src="./images/taskqueue.png" alt="task diagram in two modes" height="400">
</div>

<div align="center">
  <img src="./images/hybrid_mode.png" alt="task diagram in two modes" height="400">
</div>

The LLM-SmartAudit task queue comprises three primary subtasks: Contract Analysis, Vulnerabilities Identification, and Comprehresive Report. Each subtask employs task-oriented role-playing, involving two distinct roles collaborating to achieve specific objectives. 

### Thought-Reasoning and Buffer-Reasoning Strategies

<div align="center">
  <img src="./images/thinkRea.png" alt="task diagram in two modes" height="350">
</div>

Different from direct response from LLM, such as few-shots and Chain-of-Thought (CoT), we design new prompt strategies, which come from the ideas of ReAct and Buffer-of-Thought.

### Key Features

- 🔍 Automated vulnerability detection flow
- 📊 Batch contract analysis
- 🛡️ In-depth security analysis and testing
- 🖥️ User-friendly interface
- 🚀 Powerful backend to support the entire auditing process

## 📑 Quick Links
| Resource | Description | Link |
|----------|-------------|------|
| 📊 Dataset | Explore our benchmark dataset | [View Dataset](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/benchmark) |
| 📈 Evaluation Results | See our tool's performance metrics | [View Results](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation) |
| 🛠️ Scripts | Access our utility scripts | [View Scripts](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/scripts) |
| 📚 Documentation | Comprehensive guide to using LLM-SmartAudit | [Read Docs](https://github.com/LLMAudit/LLMSmartAuditTool/wiki) |
| 🐛 Issue Tracker | Report bugs or request features | [Issues](https://github.com/LLMAudit/LLMSmartAuditTool/issues) |
<!-- | 🧪 Test Cases | Explore our test suite | [View Tests](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/tests) |
| 📝 API Reference | Detailed API documentation | [View API Docs](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/API.md) | -->
<!-- | 🚀 Installation Guide | Step-by-step setup instructions | [Getting Started](#️#getting-started) |
| 👥 Contributing Guidelines | Learn how to contribute to the project | [Getting Started](#️#notebook-usage) | -->
<!-- | 📜 License | View our project license | [License](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/LICENSE) | -->
<!-- | 💬 Discussions | Join our community discussions | [Discussions](https://github.com/LLMAudit/LLMSmartAuditTool/discussions) | -->

## 🦙 LLM-SmartAudit.ai News
- 🆕 **New Experiments!** 114 distinct vulnerability types from 5,245 vulneablility labels in Code4rena [Code4rena](https://code4rena.com/) project, the summary files are available in [Report](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/evaluation/classficationSummary) folder.
- 🆕 **New Experiments!** Operational cost for all 5,063 contracts in 102 real-world projects, detailed cost for each contract is list in [Report](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/evaluation/costAnalysis)
- 🆕 **New Release!** New version of OPENAI API, and new models available for use.


## ⚡️ Getting Started

### 🖥️ Terminal Usage

For single contract analysis, follow these steps:

#### 1. Set Up Environment

```bash
pip install -r requirements.txt
```

#### 2. Set Your OpenAI API Key

```bash
export OPENAI_API_KEY="your_openai_api_key"
```

#### 3. Run the Tool

Input your Solidity smart contract code into `task`.

- **Run BA mode:**
  ```bash
  python3 run.py --org "" --config "SmartContractBA" --task "" --name "" --model ""
  ```

- **Run TA mode:**
  ```bash
  python3 run.py --org "" --config "SmartContractTA" --task "" --name "" --model ""
  ```

### 📓 Notebook Usage

For batch contract analysis and result compilation, we provide the following notebooks:

| Feature | Notebook Link |
|---------|---------------|
| **Automatic Batch Contract Analysis** | [▶️ Start Analysis](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/scripts/auto_test.ipynb) |
| **Result Compilation** | [▶️ Compile Results](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/scripts/generateTAReports.ipynb) |

### 💻️ Web Visualization

To start the web interface:

```bash
python3 visualizer/app.py
```

Then open your browser and navigate to: http://127.0.0.1:8000/

#### Workflow of Our Auditing Process

<div align="center">
  <img src='./images/chatchain_1.png' width="45%" style="max-width: 250px;" alt="Auditing Workflow BA">
  <img src='./images/chatchain_2.png' width="45%" style="max-width: 250px;" alt="Auditing Workflow TA">
</div>

#### Monitoring the Running Process

<div align="center">
  <img src='./images/Index.png' width="35%" style="max-width: 300px;" alt="Monitoring Process 1">
  <img src='./images/index2.png' width="30%" style="max-width: 300px;" alt="Monitoring Process 2">
  <img src='./images/index3.png' width="30%" style="max-width: 300px;" alt="Monitoring Process 3">
</div>

#### Replay Multi-conversations Between LLM-based Agents

<div align="center">
  <img src='./images/replay_1.png' width="45%" style="max-width: 300px;" alt="Replay Process 1">
  <img src='./images/replay_2.png' width="45%" style="max-width: 300px;" alt="Replay Process 2">
</div>

## 🐞 Prompt of Detector Design in TA Mode

| ID | Scenario | Description |
|---|-------|---------------------------|
|1|Arithmetic Detector| Integer Overflow/Underflow vulnerabilities can occur in the following cases: <br> 1. When the result of an arithmetic operation exceeds the maximum or falls below the minimum value that can be stored in the data type being used in the contract code. <br> 2. When the contract does not include any checks for integer overflow/underflow when performing calculations involving tokens and prices. <br> 3. When the contract uses `SafeMath`, ensure that each arithmetic operation uses `SafeMath` functions to prevent overflow and underflow. <br> Please conduct a thorough analysis, considering the following information: <br> 1. Review the contract's code logic to identify any potential areas where arithmetic operations might cause overflow or underflow. <br> 2. Examine critical functions, particularly those involving token transfers, balances, and price calculations, to ensure they have proper checks in place. <br> 3. Verify that every arithmetic operation in the contract uses `SafeMath` functions to prevent overflow and underflow.
|2|Reentrancy Detector|Reentrancy vulnerabilities can occur in the following cases:<br>1. When the contract makes an external call to another contract or address, and that call can re-enter the original contract before the initial function execution is complete, <br> 2. When state changes in the contract are performed after an external call, allowing reentrant calls to manipulate the contract's state,<br>3. When there are no proper mechanisms such as the Checks-Effects-Interactions pattern or ReentrancyGuard to prevent reentrancy attacks.<br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where external calls are made that could lead to reentrancy issues,<br>2. Examine critical functions, particularly those involving Ether transfers, token transfers, and balance updates, to ensure they have proper checks in place,<br>3. Verify that the contract uses the Checks-Effects-Interactions pattern or ReentrancyGuard to prevent reentrancy attacks. |
|3|Unchecked Send Detector|Unchecked External Call vulnerabilities can result in unintended consequences and create opportunities for malicious actors to exploit the contract. Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where external calls are made without checking the success of the call,<br>2. Examine critical functions, particularly those involving fund transfers or interactions with other contracts, to ensure they check the return value of external calls,<br>3. Investigate scenarios in which external calls can fail silently, leading to potential security risks or loss of funds,<br>4. Pay special attention to instances of ERC20 transfer and transferFrom calls to ensure their return values are checked.|
|4|Unchecked Low-Level-Call Detector|There are three cases, the contract may have Unchecked Low-level Calls:<br>1. When low-level calls (such as `call`, `delegatecall`, `send`) are not adequately checked, the calling contract may execute code in the external contract without ensuring the external contract's behavior is as expected.<br>2. When the external contract's code is not trusted or its behavior is unpredictable, it can compromise the overall security and stability of the calling contract.<br>3. When the execution of low-level function calls fails, the contract does not handle errors. The contract does not provide any mechanism to handle or revert the transaction, potentially resulting in a loss of funds.|
|5|TOD Detector| Transactions Order Dependence vulnerabilities can result in unintended consequences and create opportunities for malicious actors to exploit transaction sequencing.<br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where the order of transaction execution might have an impact on the contract's behavior,<br>2. Examine critical functions, particularly those involving fund transfers or resource allocation, to ensure they are not susceptible to Transactions Order Dependence,<br>3. Investigate scenarios in which gas prices can be manipulated to change the order of transaction execution.|
|6|Timestamp Manipulation Detector|Timestamp Manipulation vulnerabilities can occur in the following cases:<br>1. When the contract relies on block timestamps (e.g., block.timestamp, now) for critical decisions, such as generating randomness or enforcing time-based conditions,<br>2. When the contract uses block timestamps to determine the outcome of random number generation, which can be manipulated by miners,<br>3. When the contract's logic depends on exact timestamps for time-based conditions like auction timing or lockup periods, allowing miners to manipulate the outcome,<br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where block timestamps are used for critical decisions,<br>2. Examine critical functions, particularly those involving randomness generation, timed conditions, and state changes based on timestamps, to ensure they have proper checks in place,<br>3. Verify that the contract minimizes reliance on block timestamps and uses alternative methods where possible to prevent manipulation.|
|7|Predictable Randomness Detector| There are two cases, the code may have Predictable Randomness vulnerabilities:<br>1. Reliance on blockhash for randomness, which pertains to the flawed generation of random numbers within smart contracts. Random numbers often influence the decisions or outcomes of contract functionalities. If the process of random number generation is compromised, adversaries may predict the contract outcome, leading to potential exploitation,<br>2. Reliance on blocknumber for randomness, which will be used by attacker if he control the number of blocks mined in a given time frame. If the process of random number generation is compromised, adversaries may predict the contract outcome, leading to potential.|
|8|TX Reliance Detector|There are one cases, the code may have Reliance on `tx.origin` vulnerabilities:<br>1. When the contract relies on `tx.origin` to verify the owner of the contract or ensure that only the contract owner can call a withdraw function, it's important to note that `tx.origin` represents the original sender of the transaction, which can differ from the immediate caller, making it an unsafe access control method in contract-to-contract interactions.<br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where `tx.origin` is used for access control.<br>2. Examine critical functions, particularly those involving ownership verification and access control mechanisms, to ensure they do not rely on `tx.origin`.<br>3. Verify that the contract uses safer alternatives like `msg.sender` for access control where possible to prevent vulnerabilities.|
|9|Suicide Detector|Your analysis should determine if this function is protected by strong access control mechanisms, preventing its misuse and the potential loss of contract funds. Proceed with the following steps in your analysis:<br>1. Scrutinize the contract's code to determine if the `selfdestruct` function is safeguarded with appropriate restrictions to prevent unauthorized access,<br>2. Scan the contract for any uses of `selfdestruct(msg.sender)`. Document each instance and investigate the associated access control logic to ensure only the legitimate contract owner can invoke this function,<br>3. Similarly, identify any usage of `suicide(owner)` within the contract's code. Review the access controls in place to confirm that only authorized parties can execute this function,<br>4. Evaluate the current access control setup for both patterns. Look for vulnerabilities that could allow non-owners or unauthorized users to exploit these functions.|
|10|Gas Limit Detector|There are two cases, the code may have Gas Limit vulnerabilities: <br>1. Lack of gas limit considerations: the contract does not consider the gas limit when executing a function OR external calls, and the function performs a while loop that can potentially iterate a large number of times, leading to out-of-gas errors and failed transactions,<br>2. Potential denial-of-service (DoS) vulnerability: the contracts do not include any gas limit checks or other mechanisms to prevent DoS attacks. This can allow malicious actors to perform resource-intensive operations, leading to network congestion or contract unavailability.|
|11|Price Manipulation Detector|  There are two cases where the contract may have Price Manipulation vulnerabilities:<br>1. When the contract allows arbitrary adjustment of token prices by a centralized authority without any checks or balances, potentially leading to unfair trades,<br>2. When the contract does not utilize decentralized or transparent mechanisms for determining token prices, allowing for potential exploitation by the controlling entity. <br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where token prices can be manipulated by a centralized authority or other entities.<br>2. Examine critical functions involved in price determination and trading mechanisms to ensure they use decentralized and transparent methods, such as price oracles or automated market makers.<br>3. Verify that the contract includes safeguards to prevent unauthorized or unfair price adjustments, such as multi-signature requirements, time delays, or on-chain governance mechanisms.|
|12|Data Corruption Detector| There are two cases where the contract may have Assumption of Fixed-Length Array vulnerabilities:<br>1. When the contract incorrectly assumes that an array returned by a function has a fixed length, potentially leading to data corruption or out-of-bounds errors if the actual array length differs,<br>2. When the contract does not handle dynamic array lengths properly, causing incorrect data processing or logic errors.|
|13|Withdrawal Function Detector|Your analysis should determine if the contract provides a secure method for users to withdraw their funds.<br>Proceed with the following steps in your analysis:<br>1. Scrutinize the contract's code to determine if there is a function that allows users to withdraw their deposited funds,<br>2. Scan the contract for any functions related to withdrawing Ether or other assets. Document each instance and investigate the logic to ensure it is implemented securely，<br>3. Evaluate whether the withdrawal function, if present, follows best practices to prevent common vulnerabilities such as reentrancy attacks. Ensure it uses the Checks-Effects-Interactions pattern，<br>4. If no withdrawal function is found, assess the impact on users who have deposited funds into the contract. Highlight the importance of having a secure withdrawal mechanism.|
|14|Lack Authorization Detector| This type of vulnerability occurs when functions are accessible to unauthorized users, leading to potential misuse and exploitation of contract functionalities. Proceed with the following steps in your analysis: <br>1. Scrutinize the contract's code to identify all functions that modify the state of the contract or perform sensitive operations,<br>2. Determine if each identified function has appropriate access control mechanisms, such as `onlyOwner`, `onlyAdmin`, or other custom modifiers that restrict access to authorized users only,<br>3. Look for any functions that do not have explicit access control modifiers and assess whether their unrestricted access could lead to unauthorized actions,<br>4. Evaluate the current access control setup for potential bypasses or weaknesses that could allow unauthorized users to call restricted functions.|
|15|Data Inconsistency Detector|This type of vulnerability occurs when data may become inconsistent due to incorrect assumptions about how data is stored, accessed, or modified.<br>Proceed with the following steps in your analysis:<br>1. Scrutinize the contract's code to identify any assumptions made about the behavior of storage and memory when handling data.<br>2. Look for patterns where data is copied from storage to memory, or vice versa, and determine if these operations are performed correctly.<br>3. Identify any functions or segments of code where temporary copies of data are made, and assess whether these copies are used appropriately without causing unintended modifications to the original data.<br>4. Evaluate the overall logic of data manipulation within the contract to ensure that all operations maintain consistency and integrity of the stored data.|
|16|Hash Collision Detector|  This type of vulnerability occurs when different inputs produce the same hash due to improper handling of concatenated values, leading to potential security issues. Proceed with the following steps in your analysis:<br>1. Scrutinize the contract's code to identify any functions that generate hashes from input values,<br>2. Look for patterns where multiple input values are concatenated without clear delimiters before hashing. Pay special attention to the use of `abi.encodePacked` for concatenation,<br>3. Determine if the concatenated inputs can produce the same hash for different combinations of input values, leading to potential hash collisions,<br>4. Evaluate the logic for generating and handling hashes within the contract to ensure that the potential for hash collisions is minimized.|
|17|Uninitialized Return Variable Detector|  This type of vulnerability occurs when a function declares a return variable but does not properly initialize or set it, leading to incorrect or unpredictable return values. Proceed with the following steps in your analysis:<br>1. Scrutinize the contract's code to identify any functions that declare return variables,<br>2. Look for patterns where return variables are declared but not properly initialized or assigned a value within the function,<br>3. Determine if the function correctly returns the intended value, ensuring that the return variable is set appropriately before the function exits,<br>4. Evaluate the logic and flow of the function to ensure that all paths correctly initialize and set the return variable.|
|18|Misdeclared Constructor Detector| This type of vulnerability occurs when a constructor is incorrectly declared using outdated syntax, causing it to be treated as a normal function rather than a constructor. This can lead to unauthorized initialization or modification of contract state variables.<br>Proceed with the following steps in your analysis:<br>1. Scrutinize the contract's code to identify any functions that are intended to be constructors,<br>2. Look for functions that have the same name as the contract and determine if they are intended to act as constructors. In modern Solidity versions, constructors should use the `constructor` keyword instead,<br>3. Check if these functions are public and can be called by any user, leading to potential unauthorized access or modification of contract state variables,<br>4. Evaluate the overall contract initialization logic to ensure that constructors are correctly declared and that no unintended public functions exist that can initialize or modify contract state variables.|
|19|Missing Only Owner Detector|There are two main cases where this vulnerability might occur:<br>1. Functions intended to be restricted to the contract owner are callable by any user due to the absence of the `onlyOwner` modifier or equivalent access control mechanism. This can lead to unauthorized actions such as token minting, ownership transfer, or critical state changes.<br>2. Functions intended to be restricted to specific authorized users lack proper access control, allowing any user to execute them and potentially exploit the contract.|
|20|Misuse Msg Value Detector| There are key indicators of this vulnerability:<br>1. Incorrectly allocating the total `msg.value` to each item within a loop, rather than dividing `msg.value` properly among the items.<br>2. Misallocation of funds where each iteration of the loop assigns the entire `msg.value` instead of the correct portion, leading to an unintended and excessive distribution.｜
|21|Precision Loss Detector|There are specific cases where the code may have Precision Loss vulnerabilities:<br>1. Loss of precision in arithmetic operations, which can occur when dealing with fractional values, particularly in reward calculations or proportional distributions. This can lead to incorrect computations and unfair distributions.<br>2. Use of integer division for operations requiring high precision, which can result in truncation and significant errors, especially for small or unevenly distributed values.|
|22|Redundant Conditional Detector|There are specific cases where the code may have Redundant Conditional Check vulnerabilities:<br>1. Conditional checks that always evaluate to true or false, which add unnecessary complexity and gas costs to the code.<br>2. Conditions that duplicate checks already performed earlier in the code, leading to redundant operations and inefficient execution.|
|23|Oracle Dependency Detector|There are two main concerns related to External Oracle Dependency vulnerabilities:<br>1. Dependence on a single external oracle for critical data, which pertains to the reliability of the data source. If the oracle is compromised, provides incorrect data, or becomes unavailable, the contract's functionalities could be adversely affected.<br>2. Lack of fallback mechanisms, which can lead to the contract failing if the external oracle call fails or returns invalid data. This could be exploited by adversaries to disrupt the contract's operations.|
|24|Ownership Hijacking Detector|There is one main concern related to this vulnerability:<br>1. The change owner function allows any address to change the owner of the contract without any authorization checks. This can lead to unauthorized access and control over the contract.|
|25|Centralization Risk Detector|There are specific cases where the code may have Centralization Risk vulnerabilities:<br>1. Functions that can only be executed by a single address (e.g., owner), which centralizes control and poses a risk if that address is compromised.<br>2. Lack of decentralized or multi-signature mechanisms for critical operations, leading to potential abuse of power by a single entity.|
|26|Funding Calculation Detector|There are two cases where the code may have Funding Rate Calculation Precision vulnerabilities:<br>1. Simplistic funding rate calculation that does not consider all necessary factors. This can lead to incorrect funding rates, which can be manipulated by providing incorrect input values. A robust funding rate calculation should account for various factors and validations to prevent exploitation.<br>2. Lack of input validation for critical parameters (e.g., spotPrice, markPrice) used in the funding rate calculation. Malicious actors could potentially manipulate these parameters to influence the funding rate calculation.|
|27|Flash Loan Detector| There is one main case where the code may have Flash Loan Fee Manipulation vulnerabilities:<br>1. Lack of access control on the function that sets the flash loan fee. If the process of setting the flash loan fee is not properly restricted, any user could manipulate the fee to an arbitrary value, potentially increasing it right before taking a loan and reducing it immediately after, affecting the fees paid by others or manipulating the contract for profit.|
|28|Mapping Getter Detector|There is one main case where the code may have Misuse of Mapping Getter vulnerabilities:<br>1. Incorrect use of mapping getter syntax by attempting to call the mapping as a function, e.g., `this.mappingName(key)`, instead of accessing it directly, e.g., `mappingName[key]`. This can lead to syntax errors and increased gas costs.|
|29|GetterFunctionDetector|There is one main case where the code may have Lack of Getter Function Implementation vulnerabilities:<br>1. Interface functions are declared but not implemented in the contract. If an interface declares a function, it must be implemented by the contract to ensure the contract complies with the interface requirements.|
|30|Unnecessary Comparison Detector| There are specific cases where the code may have Unnecessary Comparison vulnerabilities:<br>1. Comparing a boolean value to true or false explicitly, instead of using the boolean value directly. This can reduce readability and potentially introduce errors in logical expressions.<br>2. Using redundant comparisons in conditional statements where a simpler, more direct approach can be applied.|
|31|Inconsistent Initialization Detector|This type of vulnerability arises when state variables are initialized using a function that relies on the state of other variables, which may not yet be set or initialized, leading to unpredictable or unintended behavior.<br>There are two cases where the code may have Inconsistent Initialization vulnerabilities:<br>1. Initialization of a state variable using a function call where the function's logic depends on the state of other variables that are not yet initialized. This can lead to incorrect values being set for the variable.<br>2. Initialization order of state variables where the value of one variable depends on the value of another variable that has not been initialized yet.|
|32|Source Swapping Detector| This type of vulnerability arises when a function allows the swapping of yield sources without ensuring that the deposit token of the new yield source matches the current one, which can lead to inconsistencies and potential issues in the contract's operations.<br>There is one primary case where the code may have Potential Inconsistency in Yield Source Swapping vulnerabilities:<br>1. A function that allows the owner to swap the current yield source with a new one without verifying that the deposit token of the new yield source is the same as the current one. This can lead to inconsistencies and operational issues if the deposit tokens are different.|
|33|Signature Verification Detector|This type of vulnerability arises when the contract verifies the signer in an insecure or incorrect manner, which can lead to unauthorized transactions and potential security breaches.<br>There is one primary case where the code may have Incorrect Signature Verification vulnerabilities:<br>1. A function that uses the signature to recover the signer and then verifies that the signer is the `msg.sender`. This allows any caller to execute transactions using their own signature, leading to unauthorized actions.|
|34|Order Initialization Detector|There are specific cases where the code may have Order of Inheritance Initialization vulnerabilities:<br>1. The constructors of the inherited contracts are called in the order determined by the linearized order, not by the order specified in the derived contract’s constructor. This can lead to unexpected and incorrect initialization of state variables.<br>2. The diamond problem, where a contract inherits from multiple contracts that share a common base, can cause ambiguity and lead to unpredictable behavior due to multiple initializations of the base contract.|
|35|ImpracticalityMatchDetector|There are specific cases where the code may have Impracticality of Exact Match vulnerabilities:<br>1. The use of `this.balance` for checking if the funding goal is reached is flawed. This exact comparison is risky because even a tiny amount above or below the target amount will result in a false value. Moreover, users could manipulate the contract by sending an exact amount to influence the outcome.<br>2. Relying on an exact balance match for contract logic can lead to unexpected failures or exploitations due to the granularity of ether (wei) and typical transaction handling in Ethereum.|
|36|Inconsistent Tokens Detector|There are two cases, the code may have Inconsistent Base Tokens vulnerabilities:<br>1. The contract does not verify that both the old and new strategies use the same base token during migration. If the new strategy uses a different base token, it will not recognize the tokens received during migration, potentially resulting in the loss of funds.<br>2. The contract should ensure that any strategy migrations verify the base token consistency to avoid tokens getting stuck or being inaccessible.|
|37|Partial Withdrawals Detector|There are two primary cases where the code may have No Fallback Function vulnerabilities:<br>1. Contracts that do not define a fallback function, which could lead to accidental loss of ether sent to the contract, as the contract will reject ether transfers if there is no payable fallback function.<br>2. Contracts that require handling unexpected ether transfers, but lack a mechanism to do so, potentially causing ether to be locked in the contract or the transaction to revert.|
|38|Unlimited Token Detector|This vulnerability occurs when a contract approves an unlimited or unnecessarily large amount of tokens for another address to spend. There are two primary cases where the code may have Unlimited Token Approval vulnerabilities:<br>1. Calls to approve() or increaseAllowance() methods with very large values (e.g., type(uint256).max, 2^256 - 1, or -1).<br>2. Approval of token amounts significantly larger than what's immediately necessary for a transaction.<br>Remember that proper token approval should only grant permission for the exact amount needed for the current operation.|
|39|Input Validation Detector|Lack of Input Validation vulnerabilities can lead to unexpected behavior and security risks, allowing attackers to exploit invalid or malicious inputs.<br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where inputs are not properly validated.<br>2. Examine critical functions, particularly those involving fund transfers, resource allocation, or state changes, to ensure they are not susceptible to Lack of Input Validation.<br>3. Investigate scenarios where user inputs can be manipulated or are not checked for validity, such as zero addresses, negative values, or values exceeding certain thresholds.|
|40|DoS Detector| Your primary objective is to conduct a comprehensive inspection of the provided contract code, with a particular focus on identifying vulnerabilities related to Denial of Service (DoS). DoS vulnerabilities can occur in the following cases:<br>1. When loops have an unbounded iteration count, leading to potential gas exhaustion.<br>2. When the contract makes external calls that can fail or consume excessive gas.<br>3. When the contract depends on certain state conditions that can be manipulated by an attacker to cause failures.<br>4. When an attacker can send high-gas transactions to consume most of the block's gas limit, making it difficult for other transactions to be included in the block.<br>Please conduct a thorough analysis, considering the following information:<br>1. Review the contract's code logic to identify any potential areas where unbounded loops might cause gas exhaustion.<br>2. Examine external calls in the contract and ensure they are handled properly to avoid excessive gas consumption or failures.<br>3. Analyze state-dependent logic to identify any potential manipulations that could cause DoS.<br>4. Consider the overall design of the contract to ensure it is resilient against high-gas transactions and other DoS tactics.|


## 🚀 Newly Discovered Vulnerabilities:
Our models have successfully identified **11 vulnerabilities** across **4 different types** that were not detected in the audit reports from Real-world datasets. These findings have been submitted to the Code4rena community for verification.


- **Unlimited Token Approval**:

 > -- SushiYieldSource.sol of Project `14`: The `supplyTokenTo` function, the contract calls `sushiAddr.approve(address(sushiBar), amount);` which approves the SushiBar contract to spend the specified `amount` of tokens. If the `amount` is significantly larger than what is necessary for the current operation, it can lead to a situation where the SushiBar contract has excessive approval to spend tokens on behalf of the user. This can be exploited if the SushiBar contract is compromised or behaves unexpectedly, allowing an attacker to drain tokens from the user's account.


  > --  NFTXStakingZap.sol of Project `69`: The contract contains a potential Unlimited Token Approval vulnerability in the constructor where it calls the approve function with a maximum value for the WETH token. Specifically, the line:
  `IERC20Upgradeable(address(IUniswapV2Router01(_sushiRouter).WETH())).approve(_sushiRouter, type(uint256).max);`
  This allows the sushiRouter to spend an unlimited amount of WETH tokens on behalf of the contract, which can be exploited if the sushiRouter is compromised or if there are any unforeseen issues with the router's implementation. 

 >  -- PARMinerV2.sol of Project `115`: The contract contains a line where it approves an unlimited amount of tokens for the core contract to spend on behalf of the PARMinerV2 contract. Specifically, the line `_par.approve(address(_a.parallel().core()), uint256(-1));` sets the allowance to the maximum possible value for the core contract. This creates a vulnerability known as Unlimited Token Approval, which can be exploited by malicious actors if they gain control over the core contract, allowing them to drain tokens from the PARMinerV2 contract without any restrictions.

- **Lack of Input Validation**:
>  -- sYETIToken.sol of Project `66`: In the `setTransferRatio` function, there is a check to ensure that the `newTransferRatio` is not zero and does not exceed `1e18`. However, there is no validation to ensure that the `newTransferRatio` is within a reasonable range for the intended use case. If an excessively high value were to be set, it could lead to unintended consequences in the contract's logic.

-- **Handling Partial Withdrawals**
> -- yVault.sol of Project `107`: The contract does not adequately handle scenarios where the old strategy may not have sufficient funds to fulfill the `withdraw` call for the full amount during migration. If the old strategy has insufficient funds, tokens could be left behind, leading to potential loss of funds or incomplete migration.

> -- synthVault.sol of Project `20`: The contract does not adequately handle scenarios where a user attempts to withdraw a partial amount of their deposit. In the `_processWithdraw` function, the withdrawal amount is calculated based on the basis points provided, but there is no check to ensure that the amount being withdrawn is available in the user's balance. If the user tries to withdraw more than their available balance, it could lead to an underflow or an incorrect state of the user's deposit and weight mappings. This could result in the user being unable to withdraw their full balance or losing track of their actual deposits and weights.

-- **Unchecked External Calls**
>  -- yVault.sol of Project `107`: The `earn` function and `withdraw` function makes an external call to the `controller` contract to earn tokens after transferring the tokens to the controller. However, there is no check on the success of the `safeTransfer` call. If the `controller` contract is malicious or fails for any reason, the contract would not be aware of this failure, potentially leading to a loss of funds or unintended behavior.

> -- IndexTemplate.sol of Project `71`: In the `deposit` function, the contract calls `vault.addValue(_amount, msg.sender, address(this));` without checking the return value. If the `addValue` function in the `vault` contract fails (e.g., due to a require statement), the transaction will revert, but the state changes that occur before this call (like minting tokens) will not be reverted, leading to inconsistent states.

> -- IndexTemplate.sol of Project `71`: The contract makes several external calls to other contracts, particularly in the `getUnifiedAssets` function where it calls `IVault(vaults[i]).totalAssets()` and `IERC20Detailed(IVault(vaults[i]).token()).decimals()`. These calls do not check the return values, which can lead to silent failures if the called contract does not behave as expected. For instance, if `totalAssets()` fails or returns an unexpected value, it could lead to incorrect calculations and potential loss of funds.

>  -- UniV3Vault.sol of Project `58`: The contract makes several external calls to the `INonfungiblePositionManager` interface, particularly in the `collectEarnings`, `_push`, and `_pullUniV3Nft` functions. These functions involve transferring tokens and collecting earnings without checking the return values of these calls.


<div align="center">

  <img src="https://i.ibb.co/sJ7RhGG/image-41.png" alt="Smart Contract Auditing Banner">
</div>

## Citation
Feel free to cite us if you like LLM-SmartAudit.
```bibtex
@article{wei2024llm,
  title={LLM-SmartAudit: Advanced Smart Contract Vulnerability Detection},
  author={Wei, Zhiyuan and Sun, Jing and Zhang, Zijiang and Zhang, Xianhao},
  journal={arXiv preprint arXiv:2410.09381},
  year={2024}
}
```

## 🤝 Contributing

We welcome contributions to make this project better! To contribute, please follow these steps:

1. Fork the repository to your own GitHub account
2. Create a new branch for the feature or fix you want to work on
3. Make your changes and write clear, concise commit messages
4. Push your changes to your forked repository
5. Open a pull request with a description of what you've done

We'll review your pull request and get back to you as soon as possible!

## 📄 License

This project is licensed under the Apache-2.0 License. See the [LICENSE](LICENSE) file for more details.

