CUDA_VISIBLE_DEVICES=2 python src/train_bash.py\
    --stage sft \
    --model_name_or_path /raid/gzy/llama2/Llama-2-7b-ms/ \
    --do_train \
    --dataset train \
    --template llama2 \
    --finetuning_type lora \
    --lora_target q_proj,v_proj \
    --output_dir /raid/gzy/llama2/checkpoint \
    --overwrite_cache \
    --per_device_train_batch_size 16 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 100 \
    --learning_rate 1e-4 \
    --num_train_epochs 30 \
    --overwrite_output_dir \
    --plot_loss \
    --bf16 