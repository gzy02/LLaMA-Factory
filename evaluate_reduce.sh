
for i in $(seq 40 10 3030)
do
CUDA_VISIBLE_DEVICES=1 python src/train_bash.py \
    --stage sft \
    --model_name_or_path /raid/gzy/chatglm3/chatglm3-6b/ \
    --do_predict \
    --dataset test_reduce \
    --template chatglm3 \
    --finetuning_type lora \
    --checkpoint_dir /raid/gzy/chatglm3/feature_reduce_fin2/checkpoint-$i \
    --output_dir predict_test/reduce_$i \
    --per_device_eval_batch_size 16 \
    --predict_with_generate
done