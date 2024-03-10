#!/bin/bash

python -m llava.eval.model_vqa_science \
    --model-path ./checkpoints/llava-mistral-7b \
    --question-file ./playground/data/eval/scienceqa/llava_test_CQM-A.json \
    --image-folder ./playground/data/eval/scienceqa/images/test \
    --answers-file ./playground/data/eval/scienceqa/answers/llava-mistral-7b-ckpt.jsonl \
    --model-base mistralai/Mistral-7B-v0.1 \
    --num-chunks 100 \
    --single-pred-prompt \
    --temperature 0

python llava/eval/eval_science_qa.py \
    --base-dir ./playground/data/eval/scienceqa \
    --result-file ./playground/data/eval/scienceqa/answers/llava-mistral-7b-ckpt.jsonl \
    --output-file ./playground/data/eval/scienceqa/answers/llava-mistral-7b-ckpt_output.jsonl \
    --output-result ./playground/data/eval/scienceqa/answers/llava-mistral-7b-ckpt_result.json
