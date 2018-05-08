RNA-seq data analysis course for biologists - README
----------------------------------------------------
This repository is short RNA-seq workshop covering one of the simplest workflows
starting with data download and finishing at differential expression calling. 

The tutorial.rst file covers the first part of our workshops, while workshop.sh
is basicaly a solution to this part of the workshop (TODO).

If you have downloaded this tutorial from the repository you will have all 
results files ie. fastqc reports, reads quantifications (**so far**). 
However you will be missing the raw files which are fastqc's and cDNA fasta.
You can easly download them by runing workflow.sh script with any argument
like :bash:`bash workflow.sh 1`. This will tell the script to download the raw
data even when the raw and ref directories already exists, which I've used 
as the conditional for the workflow.
