#!/bin/bash 
#SBATCH --job-name=model_train              # Job name
#SBATCH --mail-user=npatel23@umbc.edu       # Where to send mail
#SBATCH --mem=50000                       # Job memory request
#SBATCH --gres=gpu:1                     # Number of requested GPU(s) 
#SBATCH --time=10:00:00                   # Time limit days-hrs:min:sec
#SBATCH --constraint=rtx_6000            # Specific hardware constraint
#SBATCH --error=slurm_temp.err                # Error file name
#SBATCH --output=slurm_temp.out               # Output file name
#SBATCH --cpus-per-task=4

python test.py