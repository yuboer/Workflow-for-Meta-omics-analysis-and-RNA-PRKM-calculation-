#!/bin/bash
#MSUB -N RNA-Ac-2_S8_htseq-count
#MSUB -A b1042
#MSUB -q genomics
#MSUB -m abe
#MSUB -l nodes=1:ppn=1
#MSUB -l walltime=48:00:00
module load python/anaconda3.6
cd /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/binning/metabat/contig_1500/high_quality_bin/
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.10.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin10.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.11.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin11.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.14.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin14.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.16.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin16.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.18.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin18.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.28.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin28.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.29.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin29.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.33.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin33.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.35.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin35.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.36.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin36.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.37.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin37.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.39.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin39.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.40.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin40.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.43.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin43.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.45.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin45.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.47.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin47.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.48.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin48.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.52.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin52.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.54.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin54.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.60.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin60.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.61.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin61.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.63.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin63.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.64.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin64.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.69.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin69.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.70.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin70.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.71.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin71.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.73.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin73.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.76.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin76.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.78.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin78.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.80.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin80.txt
#htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff/bin.86.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin86.txt

htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff_ref/bin.AccIA.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin.AccIA.txt
htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff_ref/bin.AccIC.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin.AccIC.txt
htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff_ref/bin.AccIB.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin.AccIB.txt
htseq-count -s no -t CDS -m intersection-strict --idattr=Parent RNA-Ac-2_S8_filter.sort.sam /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/annotation/gff_ref/bin.87.gff > /projects/b1052/Wells_b1042/yuboer/GaoHan/CANDO_RNA/mapping/RNA_mapping/RNA_mapping_genomes/htseq/RNA-Ac-2_S8/RNA-Ac-2_S8_bin.87.txt