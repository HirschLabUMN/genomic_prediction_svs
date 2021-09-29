#!/bin/bash
#SBATCH --time=8:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=40gb
#SBATCH -J create_hybrid_genotypes
#SBATCH -o /home/hirschc1/della028/projects/genomic_prediction/simulation/analysis/trait_sim_hybrids/MSI_dump/%x_%j.out
#SBATCH -e /home/hirschc1/della028/projects/genomic_prediction/simulation/analysis/trait_sim_hybrids/MSI_dump/%x_%j.err
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=della028@umn.edu
#SBATCH --no-requeue

module load R/3.6.0

# go to project folder
cd ~/projects/genomic_prediction/simulation

Rscript scripts/create_hybrid_genotypes.R ${HYBINFO} ${RILGENO} ${OUT}
