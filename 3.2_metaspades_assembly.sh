#!/bin/bash
#SBATCH --job-name="metaspades_assembly"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_metaspades
#SBATCH --error=errorlog_metaspades

export PATH=$PATH:/home/ywx1845/software/SPAdes-3.11.1-Linux/bin/

#go to the folder where your data locates
cd /projects/b1042/Wells/yuboer/SG_3_metagenome/
spades.py --meta -1 ./clean_reads/fastx_trimmer_2nd/SG_01_11_2017_S17_R1_trimmed.fq -2 ./clean_reads/fastx_trimmer_2nd/SG_01_11_2017_S17_R2_trimmed.fq -t 24 -m 1000 -k 21,33,55,77 -o metaspa_SG_01-11-17
