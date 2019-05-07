set -eux

export BERT_BASE_DIR=/notebooks/notebook/bert/chinese_L-12_H-768_A-12
export MY_DATASET=/notebooks/notebook/bert/data_repeat

python -u /notebooks/notebook/bert/bert-master/run_classifier_multi.py \
  --task_name kerry \
  --do_train true \
  --do_eval true \
  --do_predict true \
  --data_dir $MY_DATASET \
  --vocab_file $BERT_BASE_DIR/vocab.txt \
  --bert_config_file $BERT_BASE_DIR/bert_config.json \
  --init_checkpoint $BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length 128 \
  --train_batch_size 32 \
  --learning_rate 5e-5 \
  --num_train_epochs 2.0 \
  --output_dir  /notebooks/notebook/bert/tmp/car_output
