python -m torch.distributed.launch --nproc_per_node=2 \
    --nnodes=1 --master_port=1234 main_finetune.py \
    --output_dir output_dir \
    --log_dir output_dir \
    --batch_size 256  \
    --model vit_large_patch16 --epochs 50 --blr 2e-3 --layer_decay 0.75 \
    --weight_decay 0.05 --drop_path 0.2 --reprob 0.25 \
    --mixup 0.8 --cutmix 1.0 \
    --finetune /shared/cjrd/checkpoints/satmae-pretrained-vit-large.pth \
    --dist_eval --num_workers 8 --dataset rgb \
    --train_path /home/jacklishufan/multiscale-mae/fmow_data/train_62classes.csv \
    --test_path /home/jacklishufan/multiscale-mae/fmow_data/val_62classes.csv \