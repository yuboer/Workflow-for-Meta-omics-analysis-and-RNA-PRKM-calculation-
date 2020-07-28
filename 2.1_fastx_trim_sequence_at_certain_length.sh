#!/bin/bash
#SBATCH --job-name="fastx_trimmer"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_fastx_trimmer
#SBATCH --error=errorlog_fastx_trimmer

#change the "/home/ywx1845/software/fastx/" below to the path of the folder in which fastx have installed by you
export PATH=$PATH:/home/ywx1845/software/fastx/

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/

#trim the sequences to a certain length, take the example in the command line below, sequences in the 3 fq files were trimmed to 120bp, you may modify this lenght according to the quality of your sequence data;
#in cases where the quality is good enough, you can skip this trimming step (in other words, no trimming is needed)

fastx_trimmer -Q33 -f 1 -l 120 -i SG_01_11_2017_S17_R2_trimmed.fq -o ./fastx_trimmer_2nd/SG_01_11_2017_S17_R2_trimmed.fq
#fastx_trimmer -Q33 -f 1 -l 134 -i SG_05_27_2016_S16_R1_trimmed.fq -o ./fastx_trimmer_2nd/SG_05_27_2016_S16_R1_trimmed.fq
fastx_trimmer -Q33 -f 1 -l 120 -i SG_05_27_2016_S16_R2_trimmed.fq -o ./fastx_trimmer_2nd/SG_05_27_2016_S16_R2_trimmed.fq
fastx_trimmer -Q33 -f 1 -l 120 -i SG_07_05_2017_S18_R2_trimmed.fq -o ./fastx_trimmer_2nd/SG_07_05_2017_S18_R2_trimmed.fq