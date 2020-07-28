#!/bin/bash
#SBATCH --job-name="fastani"
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mail-user=yuboer@northwestern.edu
#SBATCH --output=o.fastani
#SBATCH --error=e.fastani

export PATH=$PATH:/home/ywx1845/software/FastANI-1.1

cd /projects/b1052/Wells_b1042/yuboer/ongoing/Miche_bins

fastANI --ql  m_bins.txt --rl m_bins.txt --output m_bins_ani.tab