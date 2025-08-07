#!/bin/bash

#SBATCH -A DestE_330_25
#SBATCH -p boost_usr_prod
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=00:30:00
#SBATCH --job-name=MEPS-ENS
#SBATCH --output=logs/IFS-n320_MEPS-2p5km_1.out
set -x

export HYDRA_FULL_ERROR=1
source /leonardo_work/DestE_330_25/enordhag/venvs/training/bin/activate

srun anemoi-training train --config-name=config.yaml
