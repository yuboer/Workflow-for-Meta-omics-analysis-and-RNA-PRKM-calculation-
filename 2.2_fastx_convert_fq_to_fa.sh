#!/bin/bash
#SBATCH --job-name="convert_fq_to_fa"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_fq_fa
#SBATCH --error=errorlog_fq_fa

#change the "/home/ywx1845/software/fastx/" below to the path of the folder in which fastx have installed by you
export PATH=$PATH:/home/ywx1845/software/fastx/

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/

fastq_to_fasta -Q33 -v -i ./SG_01_11_2017_S17_R1_trimmed.fq -o ./fa/SG_01_11_2017.1.fa
fastq_to_fasta -Q33 -v -i ./SG_01_11_2017_S17_R2_trimmed.fq -o ./fa/SG_01_11_2017.2.fa
#fastq_to_fasta -Q33 -v -i ./SG_05_27_2016_S16_R1_trimmed.fq -o ./fa/SG_05_27_2016.1.fa
#fastq_to_fasta -Q33 -v -i ./SG_05_27_2016_S16_R2_trimmed.fq -o ./fa/SG_05_27_2016.2.fa
#fastq_to_fasta -Q33 -v -i ./SG_07_05_2017_S18_R1_trimmed.fq -o ./fa/SG_07_05_2017.1.fa
#fastq_to_fasta -Q33 -v -i ./SG_07_05_2017_S18_R2_trimmed.fq -o ./fa/SG_07_05_2017.2.fa
