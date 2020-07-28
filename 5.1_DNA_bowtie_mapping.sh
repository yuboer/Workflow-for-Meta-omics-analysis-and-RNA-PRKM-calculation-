#!/bin/bash
#SBATCH --job-name="bowtie2"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_bowtie2_01
#SBATCH --error=errorlog_bowtie2_01

BASENAME="SG_01_11_2017"

module load bowtie2/2.2.6
module load samtools/1.2
module load perl/5.16

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/fa/

#building mapping files from your contigs assembled
bowtie2-build metaspa_01_scaffolds.fasta mapping.contigs
#bowtie mapping
bowtie2 --threads 24 -f -x ./mapping.contigs -1 $BASENAME.1.fa -2 $BASENAME.2.fa -S $BASENAME.bowtie2.sam
samtools view -bS $BASENAME.bowtie2.sam > $BASENAME.bowtie2.bam
samtools sort $BASENAME.bowtie2.bam $BASENAME.bowtie2.sorted
samtools depth $BASENAME.bowtie2.sorted.bam > $BASENAME.depth.txt
#the above is the end of the mapping

#the below is to generate the coverage and length info of each contig based on the mapping results
#a perl script is needed, which was also uploaded in box, please download and modify the corresponding path
#the coverage info generated could be used to calculate the abundance of each genome bin obtained; and the ratio of reads used to generate the contigs assembled; and the DNA/RBA RPKM values of each gene or genome
perl /home/ywx1845/mmgenome_scripts/calc.coverage.in.bam.depth.pl -i $BASENAME.depth.txt -o $BASENAME.coverage.length.csv