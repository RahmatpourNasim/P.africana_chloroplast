 P.africana chloroplast genome assembly:
 
1) The long reads of P. africana were mapped to chloroplast genome of P. patens via Minimap2 to generate sam and bam alignment files.
2) The information about mapped and unmapped reads were extracted from the bam file by following commands:
samtools view -u -F 4 aln.bam > mapped.bam
samtools view -u -f 4 aln.bam > unmapped.bam
3) The mapped and unmapped bam files were sorted by samtools sort
4) The sequence of mapped and unmapped reads were extracted by samtools
5) The mapped reads were assembled by Unicyler (bacterial genome assembler)
6) The assembly results is shown in uncycler.log
