# LLM-SmartAudit Operational Cost 

## 📖 Overview
We provide a detailed analysis of the costs associated with LLM-SmartAudit in both mode. All cost estimations are based on the GPT-4o (version: gpt-4o-2024-11-20) pricing model as of December, 2024. Our framework’s code provides utilities for precise token counting and cost calculation. The cost in LLM-SmartAudit are the number of tokens processed (both **input** and **completion**) by the LLM and the number of conversational turns between the agents.

| Audit Mode | Avg. Cost | Median Cost | Cost Range | Avg. Execution Time | Avg. Token per Contract | 
|---------|---------------| -----------------|-----------------|-----------------|-----------------|
| **BA mode** | $0.21 | $0.16 | ($0.05, $3.56) | 84.86s | 26,549.03 |
| **TA mode** | $0.98 | $0.59 | ($0.12, $9.22) | 120.48s | 110,740.68 |