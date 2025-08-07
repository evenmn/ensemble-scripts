#!/bin/bash

#SBATCH -A DestE_330_25
#SBATCH -p boost_usr_prod
# #SBATCH -q boost_qos_bprod
#SBATCH --nodes=32
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=24:00:00
#SBATCH --job-name=MEPS-ENS
#SBATCH --output=logs/IFS-n320_MEPS-2p5km_smallerlr_2.out
# #SBATCH --dependency=singleton
set -x

export HYDRA_FULL_ERROR=1
source /leonardo_work/DestE_330_25/enordhag/venv/bin/activate

srun anemoi-training train --config-name=config.yaml
