# LLM-SmartAudit Evaluation

<div align="center">
  <img src="../images/logo1.png" height="80" alt="FTAudit Logo">
</div>

## 📖 Overview

The main evaluation results have been presented in our paper. Below is a summary of our findings across different datasets and modes.

|Dataset| Mode | Results |
|-------|---------|---------------|
|Labeled| **Board Analysis (BA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/LabeledResult/BA) |
|Labeled| **Target Analysis (TA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/LabeledResult/TA) |
|Real-World| **Board Analysis (BA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/RealworldResult) |
|Real-World| **Target Analysis (TA)** | [Summary](https://github.com/LLMAudit/LLMSmartAuditTool/tree/main/evaluation/RealworldResult) |


For more detailed evaluation results, please visit our [HuggingFace Repository](https://huggingface.co/datasets/weifar/FTSmartAuditTool).


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

