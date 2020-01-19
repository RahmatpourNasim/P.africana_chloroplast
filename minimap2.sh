#!/bin/bash
#SBATCH --job-name=minimap2
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

module load minimap2/2.17
module load samtools/1.7

 
minimap2 -ax map-ont -t 8 /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/cholorplast/P.patens_chloroplast.fasta /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/cholorplast/5074_test_LSK109_30JAN19-reads-pass.fastq > aln.sam
samtools view -S -b aln.sam > aln.bam
