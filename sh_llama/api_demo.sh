# 部署微调后的LLM
CUDA_VISIBLE_DEVICES=1 python src/api_demo.py \
    --model_name_or_path //raid/gzy/llama2/Llama-2-7b-ms/ \
    --adapter_name_or_path /raid/gzy/llama2/checkpoint-120 \
    --template default \
    --finetuning_type lora