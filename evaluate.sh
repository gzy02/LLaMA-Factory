# 推理
CUDA_VISIBLE_DEVICES=1 python src/train_bash.py \
    --adapter_name_or_path  /raid/gzy/llama2/checkpoint \
    --model_name_or_path /raid/gzy/llama2/Llama-2-7b-ms/ \
    --output_dir rec/llama/360 \
    --template llama2 \
    --stage sft \
    --do_predict \
    --dataset test \
    --finetuning_type lora \
    --per_device_eval_batch_size 4 \
    --predict_with_generate \
    --fp16
