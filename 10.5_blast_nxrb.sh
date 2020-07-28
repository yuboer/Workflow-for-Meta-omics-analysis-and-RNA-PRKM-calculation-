#!/bin/bash
#SBATCH --job-name="blast_nxrb"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=o.blast_nxrb
#SBATCH --error=e.blast_nxrb

module load blast/2.4.0

#make blast database from a nxrb gene fasta file
makeblastdb -in nxrB_from_genomes.fasta -parse_seqids -dbtype nucl

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/fa/

#blast amino acid sequences to neleotide sequences, we use tblastn
tblastn -query ./bowtie_bin_metaspades_01_05/assembly.orfs.faa -db /home/ywx1845/database/amoa.fa -num_threads 24 -evalue 1e-5 -max_target_seqs 1 -outfmt 6 -out ./bowtie_bin_metaspades_01_05/amoA_01_assembly.orfs.txt