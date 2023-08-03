   --ntasks=1 --gres=gpu:8 --ntasks-per-node=1 --cpus-per-task=5 --kill-on-bad-exit=1 \

srun -p pat_taurus \
   --ntasks=1 --gres=gpu:1 --ntasks-per-node=1 --cpus-per-task=5 --kill-on-bad-exit=1 \
   --job-name=samsum \
   python llama_finetuning.py  --use_peft --peft_method lora \
   --model_name /mnt/cache/zengwang/data/llama/llama-2-7b-hf \
   --output_dir /mnt/cache/zengwang/data/llama/llama-2-7b-hf-finetune


   torchrun --nnodes 1 --nproc_per_node 8  llama_finetuning.py --enable_fsdp \
   --model_name /mnt/cache/zengwang/data/llama/llama-2-7b-hf \
   --dist_checkpoint_root_folder model_checkpoints --dist_checkpoint_folder fine-tuned


python llama_finetuning.py  --use_peft --peft_method lora --quantization --model_name /patht_of_model_folder/7B --output_dir Path/to/save/PEFT/model