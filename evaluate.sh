
for i in $(seq 10 10 360)
do
CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/chatglm3/chatglm3-6b/ \
    --do_predict \
    --dataset annotation_dev \
    --template chatglm3 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/chatglm3/checkpoint_4/checkpoint-$i \
    --output_dir chat_4/instruction_4/$i \
    --per_device_eval_batch_size 16 \
    --predict_with_generate
done