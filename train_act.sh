# run the training scripts 
python src/lerobot/scripts/lerobot_train.py \
    --dataset.repo_id=ami-iit-team-x/xbg_lerobotv3_manipulation_hd \
    --dataset.root=/home/amiuser/data/xbg_lerobotv3_manipulation_hd \
    --dataset.revision=v3.0 \
    --policy.type=act \
    --policy.push_to_hub=false \
    --wandb.enable=true \
    --job_name=act_training \
    --steps=100000 \
    --save_freq=20000 \
    --policy.device=cuda \
    --batch_size=64 
