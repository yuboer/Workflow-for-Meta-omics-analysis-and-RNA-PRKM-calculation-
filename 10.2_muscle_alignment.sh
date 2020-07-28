#!/bin/bash
#SBATCH --job-name="muscle"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_muscle
#SBATCH --error=errorlog_muscle

module load muscle


cd /projects/b1052/Wells_b1042/yuboer/ongoing

muscle -in ./amoA_gene.fasta -out ./amoA_gene.muscle

#muscle load FastTreeMP
#FastTree -wag ./accumulibacter.genome.msa.fasta > ../final.tree.nwk