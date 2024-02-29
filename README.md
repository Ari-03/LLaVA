# How to run this repo

Install Conda Environment
```Shell
conda create -n llava python=3.10 -y
conda activate llava
pip install --upgrade pip  # enable PEP 660 support
pip install -e .
pip install -e ".[train]"
pip install flash-attn --no-build-isolation
pip install transformers==4.34.10
```

## Inference
```Python
python -m llava.serve.cli \
    --model-path liuhaotian/llava-v1.5-7b \
    --image-file "https://llava-vl.github.io/static/images/view.jpg" \
    --load-4bit
```

## Training
1. Download Training Data
- Dowload [blip_laion_cc_sbu_558k](https://huggingface.co/datasets/liuhaotian/LLaVA-Pretrain/blob/main/blip_laion_cc_sbu_558k.json) into playground/data/LLaVA-Pretrain
- Dowload and unizp [images](https://huggingface.co/datasets/liuhaotian/LLaVA-CC3M-Pretrain-595K/blob/main/images.zip) into playground/data/LLaVA-Pretrain/images

2. Train
```Python
./scripts/Mistral/pretrain.sh
```
