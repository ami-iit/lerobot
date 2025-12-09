# run the training scripts 
python src/lerobot/scripts/lerobot_train.py \
    --dataset.repo_id=ami-iit-team-x/xbg_lerobotv3_manipulation_hd \
    --dataset.root=/home/amiuser/data/xbg_lerobotv3_manipulation_hd \
    --dataset.revision=v3.0 \
    --policy.push_to_hub=false \
    --wandb.enable=true \
    --job_name=smolvla_training \
    --steps=10000 \
    --save_freq=2000 \
    --policy.device=cuda \
    --batch_size=64 \
    --policy.path=lerobot/smolvla_base \
    --rename_map='{"observation.images.rgb": "observation.images.camera1"}'
    # --policy.type=smolvla \
