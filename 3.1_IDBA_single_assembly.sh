#!/bin/bash
#SBATCH --job-name="IDBA_assembly"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_IDBA
#SBATCH --error=errorlog_IDBA


export PATH=$PATH:/home/ywx1845/software/idba-1.1.3/bin
#module load idba/2016_12
cd /projects/b1042/Wells/yuboer/SG_3_metagenome/idba

#step1. the pair-end reads of this one metagenome dataset need to be interleaved before assembly

fq2fa --merge --filter SG_07_05_2017_S18_R1_trimmed.fq SG_07_05_2017_S18_R2_trimmed.fq ../idba_trimmer_2nd/interleaved_SG_07_05_2017.fa

#step2. assembly
#mink means minimal kmer length, maxk means maximum kmer lenth, step means kmer length would increas from 21 bp to 51 bp by 10 each time, you may modify these values according to your data, e.g., the PE length ect
idba_ud -r ./interleaved_SG_07_05_2017.fa -o ./assembly_07_05_SG_51 --mink 21 --maxk 51 --step 10 --num_threads 24

