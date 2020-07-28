#!/bin/bash
#SBATCH --job-name="QUAST"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_QUAST
#SBATCH --error=errorlog_QUAST

module load python/anaconda3.6
module load boost/1.56.0

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/

# you can evalute as many assembly results as you like, specify the path to your assembly files as below


quast.py ./idba/idba_coassembly_SG/idba_coassembly_scaffold.fa ./idba/assembly_07_05_SG/idba_07_05_SG_scaffold.fa ./idba/timepoints_2_idba_coassembly_SG/idba_2timepoints_scaffold.fa ./idba_trimmer_2nd/timepoints_2_idba_coassembly_SG/trimmed_idba_2timepoints_scaffold.fa ./metaspa_SG_07-05-17/metaspades_07_scaffolds.fasta ./metaspa_SG_05-27-16/metaspades_05_scaffolds.fasta -o quast
quast.py ./metaspa_SG_01-11-17/metaspa_01_scaffolds.fasta -o quast_metaspa_01_scaffolds
