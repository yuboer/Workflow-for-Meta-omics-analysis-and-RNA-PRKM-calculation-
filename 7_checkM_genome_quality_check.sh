#!/bin/bash
#SBATCH --job-name="checkM"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=checkM_outlog
#SBATCH --error=checkM_errorlog

module load checkm/1.0.7

cd /projects/b1052/Wells_b1042/yuboer/ongoing/

#you need the bin_dir folder as inPut, in this example, it is "input_bin_dir"
#and the output directory was named as "checkM_results" as in the command line below, you can name it whatever you want
checkm lineage_wf -t 24 -x fa ./sea_strains ./sea_strains_checkM_results

#the quality of each genome bin is in the file of checkM_outlog