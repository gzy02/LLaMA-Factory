python src/export_model.py \
    --model_name_or_path /raid/gzy/chatglm3/chatglm3-6b/ \
    --template chatglm3 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/chatglm3/checkpoint_history/checkpoint-110/ \
    --export_dir /raid/gzy/chatglm3/model_emotion_history_110/