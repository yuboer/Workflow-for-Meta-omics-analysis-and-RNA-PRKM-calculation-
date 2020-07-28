#!/bin/bash
#MSUB -N nt_fasttreeMP
#MSUB -A b1042
#MSUB -q genomicsguest
#MSUB -m abe
#MSUB -l nodes=1:ppn=2
#MSUB -l walltime=00:10:00
#MSUB -o outlog_fasttree
#MSUB -e errorlog_fasttree
#MSUB -M yuboer@northwestern.edu

module load FastTreeMP

cd /projects/b1042/Wells/yuboer/comammox_phylogenetic_tree/alignment

FastTreeMP -wag -nt ./tree_8_amplicon_100_upper.mafft > ../nwk_files/tree_8_amplicon_100_mafft.nwk

