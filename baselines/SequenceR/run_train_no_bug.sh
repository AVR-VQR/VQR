python sequencer_main.py \
    --model_name=no_bug_model.bin \
    --output_dir=./saved_models \
    --tokenizer_name=./tokenizer \
    --do_train \
    --train_data_file=../../data/cve_fixes_and_big_vul/train.csv \
    --eval_data_file=../../data/cve_fixes_and_big_vul/val.csv \
    --test_data_file=../../data/cve_fixes_and_big_vul/test.csv \
    --epochs 100 \
    --encoder_block_size 512 \
    --decoder_block_size 256 \
    --train_batch_size 32 \
    --eval_batch_size 32 \
    --learning_rate 5e-3 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456  2>&1 | tee train_no_bug.log