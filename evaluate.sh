
for i in $(seq 110 10 240)
do
CUDA_VISIBLE_DEVICES=2 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/chatglm3/chatglm3-6b/ \
    --do_predict \
    --dataset point_dev \
    --template chatglm3 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/chatglm3/checkpoint_point_2/checkpoint-$i \
    --output_dir point_2/point_0/$i \
    --per_device_eval_batch_size 16 \
    --predict_with_generate
done