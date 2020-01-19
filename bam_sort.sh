#!/bin/bash
#SBATCH --job-name=bam_sort
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=20G
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err


module load samtools/1.7
samtools sort -n mapped.bam -o mapped.sort.bam
samtools sort -n unmapped.bam -o unmapped.sort.bam 
