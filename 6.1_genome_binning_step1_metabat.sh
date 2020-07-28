#!/bin/bash
#SBATCH --job-name="metabat_step1"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_metabat_step1
#SBATCH --error=errorlog_metabat_step1

export PATH=$PATH:/home/ywx1845/software/berkeleylab-metabat-cc5ccff537e8/metabat


#you need the sorted.bam files generated from the bowtie mapping step, map the contigs to two metagenome datasets

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/fa/

jgi_summarize_bam_contig_depths --outputDepth depth.txt *.sorted.bam