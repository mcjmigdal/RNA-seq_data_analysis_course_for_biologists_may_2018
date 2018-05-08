RNA-seq data analysis course for biologists - README
----------------------------------------------------
This repository is short RNA-seq workshop covering one of the simplest workflows
starting with data download and finishing at differential expression calling. 

Overview
========
The tutorial.rst file covers the first part of our workshops, while workshop.sh
is basicaly  solution of this part (TODO).

Virtual enviorment
==================
The tutorial comes with all tools required for the first part of the workshops
(the second one makes use of R and Rstudio). To be able to easly use those 
tools you have to first activate the virtual enviorment. This is as easy as
executing following command: `source .local/bin/activate`. This will have
number of effects on your shell variable from which the most important is 
yours PATH. Now you should be able to use programs we've provided together
with this repository, you can try running `fastqc --help`.
Once you are done you can execute `deactivate` command to exit virtual
enviorment, or simply close your terminal.

Downloading the row data
========================
If you have downloaded this repository you will have all results files ie. 
fastqc reports, reads quantifications (**so far**). However you will be missing
the raw files which are fastqc's and cDNA fasta, and salmon index. You can 
easly download the raw files by runing workflow.sh script with any argument, 
like :bash:`bash workflow.sh 1`. This will tell the script to download the raw data 
even when the raw and ref directories already exists, which I've used as the 
conditional for the workflow. Still you will be missing salmon index file.
