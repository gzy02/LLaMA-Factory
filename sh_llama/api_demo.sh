CUDA_VISIBLE_DEVICES=1 python src/api_demo.py \
    --model_name_or_path /raid/gzy/qwen/Qwen-14B-Chat/ \
    --adapter_name_or_path /raid/gzy/qwen/checkpoint/chat_4/checkpoint-200 \
    --template default \
    --finetuning_type lora