
export XMLIR_CUDNN_ENABLED=true

# # xfa
# export XMLIR_FA_ACCUM_TYPE="float16"
# export XMLIR_FA_GEMM_TYPE="float16"

# export XPUAPI_DEBUG=0X1
# export XPUAPI_DEBUG=0Xff
# export XPURT_DISPATCH_MODE=PROFILING

# 单卡
export XPU_VISIBLE_DEVICES=7
python3 generate.py  \
    --task t2v-14B \
    --size 1280*720 \
    --sample_steps 1 \
    --ckpt_dir /klxlake/public/models/Wanxiang2.1/Wan2.1/Wan2.1-T2V-14B/ \
    --prompt "Two anthropomorphic cats in comfy boxing gear and bright gloves fight intensely on a spotlighted stage."

# 多卡
# export XPU_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
# torchrun --nproc_per_node=8 generate.py \
#     --task t2v-14B \
#     --size 1280*720 \
#     --sample_steps 10 \
#     --ckpt_dir /klxlake/public/models/Wanxiang2.1/Wan2.1/Wan2.1-T2V-14B/ \
#     --dit_fsdp --t5_fsdp \
#     --ulysses_size 8 \
#     --base_seed 1111 \
#     --prompt "Two anthropomorphic cats in comfy boxing gear and bright gloves fight intensely on a spotlighted stage."