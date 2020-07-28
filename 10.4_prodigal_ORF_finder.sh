#!/bin/bash
#SBATCH --job-name="prodigal"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=o.prodigal
#SBATCH --error=e.prodigal

module load R
module load prodigal/2.6.3
module load hmmer/3.1b2
BASENAME="carrier"

cd /projects/b1042/Wells

mkdir metaspa_carrier_ORF_prediction/

prodigal -i metaspa_carrier_scaffolds.fa -m -o metaspa_carrier_ORF_prediction/$BASENAME.txt -a metaspa_carrier_ORF_prediction/$BASENAME.protein.translations.faa -d metaspa_carrier_ORF_prediction/$BASENAME.dna.translations.faa -p meta -q

cut -f1 -d " " metaspa_carrier_ORF_prediction/$BASENAME.protein.translations.faa > metaspa_carrier_ORF_prediction/$BASENAME.assembly.orfs.faa
#hmmsearch --tblout ORF_prediction/$BASENAME.protein.hmm.orfs.txt --cut_tc --notextw /home/hgx080/multi-metagenome/R.data.generation/essential.hmm ORF_prediction/$BASENAME.protein.translations.faa
#tail -n+4 ORF_prediction/$BASENAME.protein.hmm.orfs.txt | sed 's/ * / /g' | cut -f1,4 -d " " > ORF_prediction/$BASENAME.protein.hmm.id.txt
#tail -n+4 ORF_prediction/$BASENAME.protein.hmm.orfs.txt | cut -f1 -d " "> ORF_prediction/$BASENAME.list.of.positive.orfs.txt
#perl /home/hgx080/multi-metagenome/R.data.generation/extract.using.header.list.pl -l ORF_prediction/$BASENAME.list.of.positive.orfs.txt -s ORF_prediction/$BASENAME.assembly.orfs.faa -o ORF_prediction/$BASENAME.assembly.orfs.hmm.faa
#cd ORF_prediction/
#module load blast/2.4.0
#blastp -query $BASENAME.assembly.orfs.hmm.faa -db /projects/b1052/GaoHan_d20725/refSeq/refSeq.protein.blast/refSeq.protein -evalue 1e-5 -num_threads 24 -max_target_seqs 5 -outfmt 5 -out DNA-Total.assembly.orfs.hmm.blast.xml
