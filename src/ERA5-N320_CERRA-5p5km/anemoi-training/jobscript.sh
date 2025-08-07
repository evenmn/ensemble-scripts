#!/bin/bash

#SBATCH -A DestE_330_25
#SBATCH -p boost_usr_prod
# #SBATCH -q boost_qos_bprod
# #SBATCH -q boost_qos_dbg
#SBATCH --nodes=64 #128
#SBATCH --ntasks-per-node=4 #8
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=24:00:00
#SBATCH --job-name=cerra
#SBATCH --output=logs/ERA5-N320_CERRA-5p5km_1.out
#SBATCH --error=logs/ERA5-N320_CERRA-5p5km_1.err
# #SBATCH --dependency=singleton
set -x

export HYDRA_FULL_ERROR=1

source /leonardo_work/DestE_330_25/enordhag/anemoi_cerra/venv_cerra/bin/activate

srun anemoi-training train --config-name=config.yaml
