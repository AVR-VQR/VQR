python run.py \
--model_name pretrained_model.bin \
--do_train \
--model_type roberta \
--source_lang c_sharp \
--model_name_or_path microsoft/graphcodebert-base \
--tokenizer_name microsoft/graphcodebert-base \
--config_name microsoft/graphcodebert-base \
--train_filename=../../data/vrepair_non_domain_data/processed_non_domain_train.csv \
--dev_filename=../../data/vrepair_non_domain_data/processed_non_domain_val.csv \
--output_dir ./saved_models \
--max_source_length 512 \
--max_target_length 256 \
--train_batch_size 8 \
--eval_batch_size 8 \
--learning_rate 1e-4 \
--num_train_epochs 75 \
--seed 123456  2>&1 | tee pretrain.log