#!/bin/bash
#MSUB -N RNA_ORF_bowtie
#MSUB -A b1042
#MSUB -q genomics
#MSUB -m abe
#MSUB -l nodes=1:ppn=20
#MSUB -l walltime=48:00:00
module load bowtie2/2.2.6
module load samtools/1.2
cd /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/mapping/map_contig_bowtie/DNA_all_ORF
#generate mapping file from the ORFs annotated in the co-assembled contigs
bowtie2-build /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/assemble/final/idba/DNA-all/ORF_prediction/DNA-all.dna.translations.faa mapping.contigs
#map the mRNA reads of each sample to the mapping file
bowtie2 --threads 20 -f -x mapping.contigs -U /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/filter_reads/RNA-Ac-1_S7_filter.fasta -S RNA-Ac-1_S7_filter.sam -L 25 -i S,1,0.75 --mp 10,5 --end-to-end --score-min L,0,-0.5
bowtie2 --threads 20 -f -x mapping.contigs -U /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/filter_reads/RNA-Ac-2_S8_filter.fasta -S RNA-Ac-2_S8_filter.sam -L 25 -i S,1,0.75 --mp 10,5 --end-to-end --score-min L,0,-0.5
bowtie2 --threads 20 -f -x mapping.contigs -U /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/filter_reads/RNA-Ac-3_S8_filter.fasta -S RNA-Ac-3_S9_filter.sam -L 25 -i S,1,0.75 --mp 10,5 --end-to-end --score-min L,0,-0.5
bowtie2 --threads 20 -f -x mapping.contigs -U /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/filter_reads/RNA-Pr-1_S10_filter.fasta -S RNA-Pr-1_S10_filter.sam -L 25 -i S,1,0.75 --mp 10,5 --end-to-end --score-min L,0,-0.5
bowtie2 --threads 20 -f -x mapping.contigs -U /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/filter_reads/RNA-Pr-2_S11_filter.fasta -S RNA-Pr-2_S11_filter.sam -L 25 -i S,1,0.75 --mp 10,5 --end-to-end --score-min L,0,-0.5
bowtie2 --threads 20 -f -x mapping.contigs -U /projects/b1052/Wells_b1042/GaoHan/CANDO_RNA/clean_reads/Wells02/filter_reads/RNA-Pr-3_S12_filter.fasta -S RNA-Pr-3_S12_filter.sam -L 25 -i S,1,0.75 --mp 10,5 --end-to-end --score-min L,0,-0.5
samtools sort -O sam -T RNA-Ac-1_S7_filter.sort -o RNA-Ac-1_S7_filter.sort.sam RNA-Ac-1_S7_filter.sam
samtools sort -O sam -T RNA-Ac-2_S8_filter.sort -o RNA-Ac-2_S8_filter.sort.sam RNA-Ac-2_S8_filter.sam
samtools sort -O sam -T RNA-Ac-3_S9_filter.sort -o RNA-Ac-3_S9_filter.sort.sam RNA-Ac-3_S9_filter.sam
samtools sort -O sam -T RNA-Pr-1_S10_filter.sort -o RNA-Pr-1_S10_filter.sort.sam RNA-Pr-1_S10_filter.sam
samtools sort -O sam -T RNA-Pr-2_S11_filter.sort -o RNA-Pr-2_S11_filter.sort.sam RNA-Pr-2_S11_filter.sam
samtools sort -O sam -T RNA-Pr-3_S12_filter.sort -o RNA-Pr-3_S12_filter.sort.sam RNA-Pr-3_S12_filter.sam
