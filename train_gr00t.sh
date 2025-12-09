# run the training scripts 
# accelerate launch \
#     --num_processes=1 \
#     $(which lerobot-train) \
#     --dataset.repo_id=ami-iit-team-x/xbg_lerobotv3_manipulation_hd \
#     --dataset.root=/home/amiuser/data/xbg_lerobotv3_manipulation_hd \
#     --dataset.revision=v3.0 \
#     --policy.type=groot \
#     --policy.push_to_hub=false \
#     --policy.tune_diffusion_model=false \
#     --wandb.enable=true \
#     --job_name=gr00t_training \
#     --steps=10000 \
#     --save_freq=2000 \
#     --policy.device=cuda \
#     --batch_size=16 

python src/lerobot/scripts/lerobot_train.py \
    --dataset.repo_id=ami-iit-team-x/xbg_lerobotv3_manipulation_hd \
    --dataset.root=/home/amiuser/data/xbg_lerobotv3_manipulation_hd \
    --dataset.revision=v3.0 \
    --policy.type=groot \
    --policy.push_to_hub=false \
    --policy.tune_diffusion_model=false \
    --wandb.enable=true \
    --job_name=gr00t_training \
    --steps=100000 \
    --save_freq=20000 \
    --policy.device=cuda \
    --batch_size=16 
