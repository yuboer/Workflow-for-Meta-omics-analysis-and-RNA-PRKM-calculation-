
#!/bin/bash
#SBATCH --job-name="IDBA_assembly_Michelle_carrier"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=outlog_IDBA_carrier
#SBATCH --error=errorlog_IDBA_carrier


export PATH=$PATH:/home/ywx1845/software/idba-1.1.3/bin
#module load idba/2016_12
cd /projects/b1042/Wells/yuboer/SG_3_metagenome/clean_reads/

#interleave the 3 metagenome DNA reads, respectively and do the co-assembly
fq2fa --merge --filter SG_01_11_2017_S17_R1_trimmed.fq SG_01_11_2017_S17_R2_trimmed.fq ../idba/interleaved_SG_01_11_2017.fa
fq2fa --merge --filter SG_05_27_2016_S16_R1_trimmed.fq SG_05_27_2016_S16_R2_trimmed.fq ../idba/interleaved_SG_05_27_2016.fa
fq2fa --merge --filter SG_07_05_2017_S18_R1_trimmed.fq SG_07_05_2017_S18_R2_trimmed.fq ../idba/interleaved_SG_07_05_2017.fa

#mink means minimal kmer length, maxk means maximum kmer lenth, step means kmer length would increas from 21 bp t0 101 bp by 10 each time, you may modify these values according to your data, e.g., the PE length ect
idba_ud -r ../idba/interleaved_SG_01_11_2017.fa -r ../idba/interleaved_SG_05_27_2016.fa -r ../idba/interleaved_SG_07_05_2017.fa -o idba_coassembly_SG --mink 21 --maxk 101 --step 10 --num_threads 24

#-----------------------------------------------
#yuboer's note
#why i cannot write the scripts in a way as:
#export PATH=$PATH:/home/ywx1845/idba-1.1.3/
#bin/fq2fa --merge --filter /home/ywx1845/Carrier_1.fq /home/ywx1845/Carrier_2.fq ./interleaved_carrier.fa