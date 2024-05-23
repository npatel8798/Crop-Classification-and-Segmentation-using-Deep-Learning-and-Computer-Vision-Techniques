#!/bin/bash 
#SBATCH --job-name=train_model              # Job name
#SBATCH --mail-user=npatel23@umbc.edu       # Where to send mail
#SBATCH --mem=50000                       # Job memory request
#SBATCH --gres=gpu:1                     # Number of requested GPU(s) 
#SBATCH --time=50:00:00                   # Time limit days-hrs:min:sec
#SBATCH --constraint=rtx_6000            # Specific hardware constraint
#SBATCH --error=slurm.err                # Error file name
#SBATCH --output=slurm.out               # Output file name

python export_medians_multi.py --band B02 B03 B04 B08 --num_workers 2