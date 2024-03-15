# How to run this repo

Install Conda Environment
```Shell
conda create -n llava python=3.10 -y
conda activate llava
pip install --upgrade pip  # enable PEP 660 support
pip install -e .
pip install -e ".[train]"
pip install flash-attn --no-build-isolation
```

## Inference
```Python
python -m llava.serve.cli \
    --model-path liuhaotian/llava-v1.5-7b \
    --image-file "https://llava-vl.github.io/static/images/view.jpg" \
    --load-4bit
```

## Training
### Pre-Training
1. Download Pre-Training Data
- Dowload [chat.json](https://huggingface.co/datasets/liuhaotian/LLaVA-CC3M-Pretrain-595K/blob/main/chat.json) into playground/data/train/pretrain
- Rename `chat.json` to `LLaVA-CC3M-Pretrain-595K.json`
- Dowload and unizp [images](https://huggingface.co/datasets/liuhaotian/LLaVA-CC3M-Pretrain-595K/blob/main/images.zip) into playground/data/train/pretrain/images
2. Login into to Weights and Biases

```sh
wandb login
```
3. Pre-Training
  
```sh
bash /scripts/Mistral/pretrain.sh
```

### Fine-Tuning
1. Download Fine-Tune Data
- Download and unzip [train.zip](https://drive.google.com/drive/folders/1w8imCXWYn2LxajmGeGH_g5DaL2rabHev?usp=sharing) into playground/data/train/finetune
- Rename train directory to images
2. Login into to Weights and Biases

```sh
wandb login
```

3. Fine-Tune
```sh
bash /scripts/Mistral/finetune_lora_hand_picked.sh
bash /scripts/Mistral/finetune_lora_l2.sh.sh
```

## Evaluation
### Pretrain
```sh
bash /scripts/Mistral/eval/sqa_mistral_7b_pretrain.sh
```
### Finetune
```sh
bash scripts/Mistral/eval/sqa_mistral_7b_hand_picked_2.sh
bash scripts/Mistral/eval/sqa_mistral_7b_l2.sh
```
