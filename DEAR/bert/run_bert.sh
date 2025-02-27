export BERT_BASE_DIR=./bert_base/
export DATA_DIR=../bert_data/MRPC
python run_classifier.py --task_name=MRPC  --do_train=true  --do_eval=true  --data_dir=$DATA_DIR  --vocab_file=$BERT_BASE_DIR/vocab.txt  --bert_config_file=$BERT_BASE_DIR/bert_config.json  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt  --max_seq_length=128  --train_batch_size=32  --learning_rate=2e-5  --num_train_epochs=3.0  --output_dir=$BERT_BASE_DIR/bert_output
