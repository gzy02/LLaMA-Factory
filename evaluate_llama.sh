
for i in $(seq 10 10 120)
do
CUDA_VISIBLE_DEVICES=2 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/llama2/Llama-2-7b-ms/ \
    --do_predict \
    --dataset annotation_dev \
    --template llama2 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/llama2/checkpoint/checkpoint-$i \
    --output_dir emotion_llama/$i \
    --per_device_eval_batch_size 16 \
    --predict_with_generate
done