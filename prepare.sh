#!/bin/bash
# By Migdal
# prepares files for workshop
# paper - http://dev.biologists.org/content/144/19/3487.long

# Download reads
Names=(A30 B30 C30)
SRA=(SRR6039677 SRR6039675 SRR6039689)
cd part1/raw
for (( i=0; i<${#SRA[*]}; i++ )); do
  fastq-dump --gzip ${SRA[$i]} && mv ${SRA[$i]}.fastq.gz ${Names[$i]}.fastq.gz &
done
for fastq in part1/raw/*fastq.gz; do
	python sampleFastq.py 5000000 ${fastq} | gzip > ${fastq}.sampled
	rm ${fastq}
	mv ${fastq}.sampled ${fastq}
done
python addAdaptors.py part1/raw/B30.fastq.gz 0.3 CTGTCTCTTATACACATCT | gzip > adapters 
mv adapters part1/raw/B30.fastq.gz
cd ../..

# Download reference manualy only chr5
firefox http://www.ensembl.org/biomart/martview/5bef2b3712508b19386257e4010cee4f?VIRTUALSCHEMANAME=default&ATTRIBUTES=drerio_gene_ensembl.default.sequences.ensembl_transcript_id|drerio_gene_ensembl.default.sequences.cdna&FILTERS=drerio_gene_ensembl.default.filters.chromosome_name."5"&VISIBLEPANEL=resultspanel


