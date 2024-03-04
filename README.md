# How to run this repo

Install Conda Environment
```Shell
conda create -n llava python=3.10 -y
conda activate llava
pip install --upgrade pip  # enable PEP 660 support
pip install -e .
pip install -e ".[train]"
pip install flash-attn --no-build-isolation
pip install transformers==4.34.1
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
- Dowload [chat.json](https://huggingface.co/datasets/liuhaotian/LLaVA-CC3M-Pretrain-595K/blob/main/chat.json) into playground/data/LLaVA-Pretrain
- Rename `chat.json` to `LLaVA-CC3M-Pretrain-595K.json`
- Dowload and unizp [images](https://huggingface.co/datasets/liuhaotian/LLaVA-CC3M-Pretrain-595K/blob/main/images.zip) into playground/data/LLaVA-Pretrain/images
2. Login into to Weights and Biases

```sh
wandb login
```
3. Pre-Training
  
```Python
./scripts/Mistral/pretrain.sh
```

### Fine-Tuning
1. Download Fine-Tune Data
- #TBD
2. Fine-Tune
```Python
./scripts/Mistral/finetune-lora.sh
```
