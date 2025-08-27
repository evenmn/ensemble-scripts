#!/bin/bash

#SBATCH -A DestE_330_25 #EUHPC_R04_079
#SBATCH -p boost_usr_prod
# #SBATCH -q boost_qos_dbg
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --job-name=infer
#SBATCH --output=logs/infer.out
set -x

export HYDRA_FULL_ERROR=1

#module load python
#module load cuda/12.6
#module load gcc/12.2
#module load profile/deeplrn
#moduel load cineca-ai/4.2.2

export NCCL_DEBUG=INFO
export NCCL_DEBUG_SYS=INFO

source /leonardo_work/DestE_330_25/enordhag/ensemble-scripts/src/AIFS-ENS/bris-inference/flash-attn-venv/bin/activate

srun bris --config=config.yaml
