#!/bin/bash
#SBATCH --job-name=Unicycler
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=END
#SBATCH --mem=100G
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
module load unicycler/0.4.8
module load racon/0.5.0
module load blast/2.7.1
unicycler-runner.py -l /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/cholorplast/mapped.fastq -o /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/cholorplast/Unicycler --keep 2 --threads 8

module list
python --version
