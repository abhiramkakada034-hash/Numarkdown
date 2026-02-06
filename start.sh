#!/bin/bash

set -e

echo "Starting NuMarkdown-8B-Thinking with vLLM..."

export HF_HOME=/app/hf_cache
export TRANSFORMERS_CACHE=/app/hf_cache
export CUDA_VISIBLE_DEVICES=0

vllm serve numind/NuMarkdown-8B-Thinking \
  --host 0.0.0.0 \
  --port 8000 \
  --dtype float16 \
  --max-model-len 8192 \
  --gpu-memory-utilization 0.90
