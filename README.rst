RNA-seq data analysis course for biologists - README
----------------------------------------------------
This repository is short RNA-seq workshop covering one of the simplest workflows
starting with data download and finishing at differential expression calling. 

Overview
========
The tutorial.rst file covers the first part of our workshops, while workshop.sh
is basicaly  solution of this part (TODO).

Downloading the raw data
========================
This repository contains just tutorial materials and solution script that
can perform all covered analysis. To download raw data use script
`download_raw_data.sh` that can be find in main directory.

Dependecies
===========
Tutorial assumes that user have access to following programs and packages:
+ fastq-dump
+ fastqc
+ multiqc
+ cutadapt
+ salmon
+ R
