
for i in $(seq 10 10 920)
do
CUDA_VISIBLE_DEVICES=1 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/qwen/Qwen-14B-Chat/ \
    --do_predict \
    --dataset 4_chat_dev \
    --template qwen \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/qwen/checkpoint/chat_4/checkpoint-$i \
    --output_dir chat_4/qwen/$i \
    --per_device_eval_batch_size 16 \
    --predict_with_generate
done