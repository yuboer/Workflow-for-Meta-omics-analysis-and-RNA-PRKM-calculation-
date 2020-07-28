#!/bin/bash
#SBATCH --job-name="prokka"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=o.prokka
#SBATCH --error=e.prokka


module load python/anaconda3.6
source activate /projects/b1052/pythonenvs/python3.6/prokka
module load perl

cd /projects/b1052/Wells_b1042/yuboer/ongoing/AOB_genomes/g_Nitrosomonas/

prokka --prefix GCA_002083395.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCA_002083395.1_genomic.fna --outdir GCA_002083395.1
prokka --prefix GCA_002083595.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCA_002083595.1_genomic.fna --outdir GCA_002083595.1
prokka --prefix GCA_002435335.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCA_002435335.1_genomic.fna --outdir GCA_002435335.1
prokka --prefix GCF_000175095.2 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_000175095.2_genomic.fna --outdir GCA_000175095.2
prokka --prefix GCF_000219585.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_000219585.1_genomic.fna --outdir GCA_000219585.1
prokka --prefix GCF_001007935.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_001007935.1_genomic.fna --outdir GCA_001007935.1
prokka --prefix GCF_900100485.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900100485.1_genomic.fna --outdir GCA_900100485.1
prokka --prefix GCF_900100815.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900100815.1_genomic.fna --outdir GCA_900100815.1
prokka --prefix GCF_900103035.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900103035.1_genomic.fna --outdir GCA_900103035.1
prokka --prefix GCF_900105875.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900105875.1_genomic.fna --outdir GCA_900105875.1
prokka --prefix GCF_900106555.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900106555.1_genomic.fna --outdir GCA_900106555.1
prokka --prefix GCF_900107165.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900107165.1_genomic.fna --outdir GCA_900107165.1
prokka --prefix GCF_900107265.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900107265.1_genomic.fna --outdir GCA_900107265.1
prokka --prefix GCF_900110145.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900110145.1_genomic.fna --outdir GCA_900110145.1
prokka --prefix GCF_900110495.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900110495.1_genomic.fna --outdir GCA_900110495.1
prokka --prefix GCF_900111165.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900111165.1_genomic.fna --outdir GCA_900111165.1
prokka --prefix GCF_900111605.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900111605.1_genomic.fna --outdir GCA_900111605.1
prokka --prefix GCF_900112825.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900112825.1_genomic.fna --outdir GCA_900112825.1
prokka --prefix GCF_900113925.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900113925.1_genomic.fna --outdir GCA_900113925.1
prokka --prefix GCF_900114305.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900114305.1_genomic.fna --outdir GCA_900114305.1
prokka --prefix GCF_900114745.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900114745.1_genomic.fna --outdir GCA_900114745.1
prokka --prefix GCF_900114795.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900114795.1_genomic.fna --outdir GCA_900114795.1
prokka --prefix GCF_900115725.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900115725.1_genomic.fna --outdir GCA_900115725.1
prokka --prefix GCF_900116685.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900116685.1_genomic.fna --outdir GCA_900116685.1
prokka --prefix GCF_900167395.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900167395.1_genomic.fna --outdir GCA_900167395.1
prokka --prefix GCF_900206265.1 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam GCF_900206265.1_genomic.fna --outdir GCA_900206265.1
prokka --prefix UBA8640 --kingdom Bacteria --gcode 11 --proteins /opt/prokka/db/trusted/Ecocyc-17.6 --evalue 1e-9 --rfam UBA8640_genomic.fna --outdir UBA8640
