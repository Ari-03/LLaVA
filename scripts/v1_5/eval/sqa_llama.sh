#!/bin/bash

python -m llava.eval.model_vqa_science \
    --model-path liuhaotian/llava-llama-2-13b-chat-lightning-preview \
    --question-file ./playground/data/eval/scienceqa/llava_test_CQM-A.json \
    --image-folder ./playground/data/eval/scienceqa/images/test \
    --answers-file ./playground/data/eval/scienceqa/answers/llava-llama-2-13b-chat-lightning-preview.jsonl \
    --single-pred-prompt \
    --temperature 0 \
    # Adjust or remove --conv-mode if necessary for LLaVA LLaMA 2

python llava/eval/eval_science_qa.py \
    --base-dir ./playground/data/eval/scienceqa \
    --result-file ./playground/data/eval/scienceqa/answers/llava-llama-2-13b-chat-lightning-preview.jsonl \
    --output-file ./playground/data/eval/scienceqa/answers/llava-llama-2-13b-chat-lightning-preview_output.jsonl \
    --output-result ./playground/data/eval/scienceqa/answers/llava-llama-2-13b-chat-lightning-preview_result.json
