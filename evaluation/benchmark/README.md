<div align="center">
  <img src="../images/logo1.png" height="80" alt="FTAudit Logo">

  # LLM-SmartAudit Evaluation Dataset and Resources
</div>

## 🔗 Dataset and Resources
| Type | Description | Source | HuggingFace |
|------|-------------|--------|-------------|
| 🛠️ **Labeled Dataset** | Curated smart contracts with known vulnerabilities | [Smartbugs](https://github.com/smartbugs/smartbugs-curated) | [📥 Download](https://huggingface.co/datasets/weifar/DetectableDataset) |
| ⚙️ **Real-world Dataset** | Vulnerabilities found in DeFi project audits | [Web3bugs](https://github.com/ZhangZhuoSJTU/Web3Bugs) | [📥 Download](https://huggingface.co/datasets/weifar/ContestDataset) |

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