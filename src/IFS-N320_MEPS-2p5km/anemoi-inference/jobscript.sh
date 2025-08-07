#!/bin/bash

#SBATCH -A DestE_330_25
#SBATCH -p boost_usr_prod
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=02:00:00
#SBATCH --job-name=ERA5-n320-infer
#SBATCH --output=logs/infer_%a.out
#SBATCH --array=0-2  # specify number of members here
set -x

export HYDRA_FULL_ERROR=1
source /leonardo_work/DestE_330_25/enordhag/venvs/inference/bin/activate

srun anemoi-inference run config.yaml date=2023-01-01T00 output.extract_lam.output.netcdf=netcdf/test_$SLURM_ARRAY_TASK_ID.nc
