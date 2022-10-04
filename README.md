<div align="center">
  
# VQR Replication of Experiments
  
</div>

![VQR](img/cover.png)

<p align="center">
  </a>
  <h3 align="center">VQR</h3>
  <p align="center">
    Automated Software Vulnerability Repair Through Vulnerability Queries
  </p>
</p>
     
## Table of contents

<!-- Table of contents -->
<details open="open">
  <summary></summary>
  <ol>
    <li>
      <a href="#how-to-replicate">How to replicate</a>
        <ul>
          <li><a href="#environment-setup">Environment Setup</a></li>
          <li><a href="#datasets">Datasets</a></li>
          <li><a href="#replication-of-experiments">Replication of Experiments</a></li>
        </ul>
    </li>
    <li>
      <a href="#license">License</a>
    </li>
    <li>
      <a href="#citation">Citation</a>
    </li>
  </ol>
</details>

## How to replicate 

### Environment Setup
<details open="open">
  <summary></summary>
  
First of all, clone this repository to your local machine and access the main dir via the following command:
```
git clone https://github.com/AVR-VQR/VQR.git
cd VQR
```

Then, install the python dependencies via the following command:
```
pip install -r requirements.txt
cd VQR/transformers
pip install .
cd ../..
```

* We highly recommend you check out this <a href="https://pytorch.org/">installation guide</a> for the "torch" library so you can install the appropriate version on your device.
  
* To utilize GPU (optional), you also need to install the CUDA library, you may want to check out this <a href="https://docs.nvidia.com/cuda/cuda-quick-start-guide/index.html">installation guide</a>.
  
* <a href="https://www.python.org/downloads/release/python-397/">Python 3.9.7</a> is recommended, which has been fully tested without issues.
 
</details>
  
### Datasets
<details open="open">
  <summary></summary>

data...
  
</details>
 
### Replication of Experiments
  
  <details open="open">
    <summary></summary>
    
  Download necessary data and unzip via the following command: 
  ```
  cd data
  sh download_data.sh 
  cd ..
  ```
  
  </details>  
  
  <details open="open">
    <summary></summary>
  
  #### Reproduce Main Results (Section 4.5.1 in the paper)
  - VQR (proposed approach)
    * Inference
    ```
    cd VQR/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ..
    ```
    * Retrain Localization Model
    ```
    cd VQR
    sh run_pretrain_loc.sh
    sh run_train_loc.sh
    cd ..
    ```
    * Retrain Repair Model
    ```
    cd VQR
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ..
    ```
 
 - VulRepair
    * Inference
    ```
    cd baselines/VulRepair/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd baselines/VulRepair
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
 
  - TFix
    * Inference
    ```
    cd baselines/TFix/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd baselines/TFix
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
    
  - GraphCodeBERT
    * Inference
    ```
    cd baselines/GraphCodeBERT/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd baselines/GraphCodeBERT
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
    
  - CodeBERT
    * Inference
    ```
    cd baselines/CodeBERT/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd baselines/CodeBERT
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
  
  - VRepair
    * Inference
    ```
    cd baselines/VRepair/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd baselines/VRepair
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
    
  - SequenceR
    * Inference
    ```
    cd baselines/SequenceR/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd baselines/SequenceR
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
   
  </details>
 
  <details open="open">
    <summary></summary>
    
  #### Ablation - Vulnerability Query Mask (Section 4.5.2-(1) in the paper)
  - Vul Mask Encoder + Vul Mask Decoder (proposed approach - VQR)
    * Inference
    ```
    cd VQR/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ..
    ```
    * Retrain
    ```
    cd VQR
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ..
    ```
  
  - Vul Mask Encoder
    * Inference
    ```
    cd ablation_mask/Vul_mask_enc_only/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd ablation_mask/Vul_mask_enc_only/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
  
  - Vul Mask Decoder
    * Inference
    ```
    cd ablation_mask/Vul_mask_cross_only/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd ablation_mask/Vul_mask_enc_only/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
  
  - Perfect Mask Encoder + Perfect Mask Decoder
    * Inference
    ```
    cd ablation_mask/Vul_perfect_mask/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test.sh
    cd ../..
    ```
    * Retrain
    ```
    cd ablation_mask/Vul_mask_enc_only/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_pretrain.sh
    sh run_train.sh
    sh run_test.sh
    cd ../..
    ```
  
  </details>
 
  <details open="open">
    <summary></summary>
    
  #### Ablation - Pre-training on Bug-fix Data (Section 4.5.2-(2) in the paper)
  - VQR (proposed approach)
    * Inference
    ```
    cd VQR/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ..
    ```
 
 - VulRepair
    * Inference
    ```
    cd baselines/VulRepair/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ../..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ../..
    ```
 
  - TFix
    * Inference
    ```
    cd baselines/TFix/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ../..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ../..
    ```
    
  - GraphCodeBERT
    * Inference
    ```
    cd baselines/GraphCodeBERT/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ../..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ../..
    ```
    
  - CodeBERT
    * Inference
    ```
    cd baselines/CodeBERT/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ../..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ../..
    ```
  
  - VRepair
    * Inference
    ```
    cd baselines/VRepair/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ../..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ../..
    ```
    
  - SequenceR
    * Inference
    ```
    cd baselines/SequenceR/saved_models/checkpoint-best-loss
    sh download_models.sh
    cd ../..
    sh run_test_no_bug.sh
    cd ../..
    ```
    * Retrain
    ```
    sh run_train_no_bug.sh
    sh run_test_no_bug.sh
    cd ../..
    ```
  </details>
    
## License 
<a href="https://github.com/AVR-VQR/VQR/blob/main/LICENSE">MIT License</a>

## Citation
```bash
under review
```
