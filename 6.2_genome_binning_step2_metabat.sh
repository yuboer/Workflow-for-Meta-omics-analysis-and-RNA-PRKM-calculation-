#!/bin/bash
#SBATCH --job-name="metabat_step2"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_metabat_step2
#SBATCH --error=errorlog_metabat_step2

export PATH=$PATH:/home/ywx1845/software/berkeleylab-metabat-cc5ccff537e8/metabat

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/fa/


metabat2 -i metaspa_01_scaffolds.fasta -a depth.txt -o bins_dir/bin