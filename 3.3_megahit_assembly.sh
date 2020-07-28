#!/bin/bash
#MSUB -N Megahit_carrier_2
#MSUB -A b1042
#MSUB -q genomicsguest
#MSUB -m abe
#MSUB -l nodes=1:ppn=24
#MSUB -l walltime=48:00:00
#MSUB -o outlog_Megahit_carrier_2nd
#MSUB -e errorlog_Megahit_carrier_2nd
#MSUB -M yuboer@northwestern.edu

module load megahit/1.0.6.1

cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/

megahit --k-min 21 --k-max 121 --k-step 10 -t 24 -m 0.9 -1 /home/ywx1845/Carrier_1.fq -2 /home/ywx1845/Carrier_2.fq -o megahit_carrier_2nd
