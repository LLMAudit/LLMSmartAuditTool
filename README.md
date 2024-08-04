
<div align="center">

  <a href=""><picture>
    <img src="./images/logo1.png" height=100>
      </picture></a>


# LLM-Powered Multi-Agent for Smart Contract Auditing!

![](https://i.ibb.co/sJ7RhGG/image-41.png)
</div>

## 🏛️  LLM-SmartAudit System

<div align="center">
  <img src="./images/framework.png" alt="LLM-SmartAudit System" height="250">
</div>

LLM-SmartAudit is a cutting-edge tool designed to revolutionize smart contract auditing using advanced language models. Our system provides a comprehensive solution for ensuring the security and reliability of blockchain-based applications.

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
| 🧪 Test Cases | Explore our test suite | [View Tests](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/tests) |
| 📝 API Reference | Detailed API documentation | [View API Docs](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/API.md) |
| 🚀 Installation Guide | Step-by-step setup instructions | [Getting Started](#️#getting-started) |
| 👥 Contributing Guidelines | Learn how to contribute to the project | [Getting Started](#️#notebook-usage) |
| 📜 License | View our project license | [License](https://github.com/LLMAudit/LLMSmartAuditTool/blob/main/LICENSE) |
| 🐛 Issue Tracker | Report bugs or request features | [Issues](https://github.com/LLMAudit/LLMSmartAuditTool/issues) |
| 💬 Discussions | Join our community discussions | [Discussions](https://github.com/LLMAudit/LLMSmartAuditTool/discussions) |


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
  python3 run.py --org "" --config "SmartContractBA" --task "" --name ""
  ```

- **Run TA mode:**
  ```bash
  python3 run.py --org "" --config "SmartContractTA" --task "" --name ""
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
  <img src='./images/chatchain.png' width="100%" style="max-width: 300px;" alt="Auditing Workflow">
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

## 🐞 Detector Design in TA Mode

| ID | Scenario | Description |
|---|---------|-------------------------------|
|1|ArithmeticDetector| Integer Overflow/Underflow vulnerabilities can occur in the following cases: <br> 1. When the result of an arithmetic operation exceeds the maximum or falls below the minimum value that can be stored in the data type being used in the contract code. <br> 2. When the contract does not include any checks for integer overflow/underflow when performing calculations involving tokens and prices. <br> 3. When the contract uses `SafeMath`, ensure that each arithmetic operation uses `SafeMath` functions to prevent overflow and underflow. <br> Please conduct a thorough analysis, considering the following information: <br> 1. Review the contract's code logic to identify any potential areas where arithmetic operations might cause overflow or underflow. <br> 2. Examine critical functions, particularly those involving token transfers, balances, and price calculations, to ensure they have proper checks in place. <br> 3. Verify that every arithmetic operation in the contract uses `SafeMath` functions to prevent overflow and underflow.
|||

<div align="center">

  <img src="https://i.ibb.co/sJ7RhGG/image-41.png" alt="Smart Contract Auditing Banner">
</div>

## 🤝 Contributing

We welcome contributions from the community! If you'd like to contribute, please:

1. Fork the repository
2. Create a new branch for your feature
3. Commit your changes
4. Push to your branch
5. Open a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.