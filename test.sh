CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/chatglm3/chatglm3-6b/ \
    --do_predict \
    --dataset test \
    --template chatglm3 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/chatglm3/feature_fin/checkpoint-150 \
    --output_dir predict_dev/fin2/190 \
    --per_device_eval_batch_size 16 \
    --predict_with_generate