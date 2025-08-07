#!/bin/bash

#SBATCH -A DestE_330_25
#SBATCH -p boost_usr_prod
# #SBATCH -q boost_qos_dbg
#SBATCH --nodes=40
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=24:00:00
#SBATCH --job-name=ERA5-n320-infer
#SBATCH --output=logs/ERA5-n320_infer.out
set -x

export HYDRA_FULL_ERROR=1
source /leonardo_work/DestE_330_25/enordhag/venvs/bris2/bin/activate

srun bris --config=config.yaml
