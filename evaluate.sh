
for i in $(seq 10 10 240)
do
CUDA_VISIBLE_DEVICES=1 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/chatglm3/chatglm3-6b/ \
    --do_predict \
    --dataset point_dev \
    --template chatglm3 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/chatglm3/checkpoint_point/checkpoint-$i \
    --output_dir point_2/point/$i \
    --per_device_eval_batch_size 16 \
    --predict_with_generate
done