RNA-seq data analysis course for biologists - part 1 - data preprocessing
-------------------------------------------------------------------------
May 2018, Warsaw

About:
======
This is part of a introductory RNA-seq tutorial intended to provide and 
overview of data handling and general analysis workflow. Tutorial covers such
aspects as obtaining raw data, quality asssesments, data preprocessing, 
generating reads counts. Further downstream analyses including differential
gene expression analyses are covered in second part of the tutorial that is
done using R programin language.

Overview:
=========
During our workshops we will be using multiple bioinformatics tools that for
your convenice already have been localy installed in workshop directory. Below
is the short description of the tools we're going to use during our exercises:
+ fastqc - A quality control tool for high throughput sequence data.
+ multiqc - Aggregate results from bioinformatics analyses across many samples
            into a single report.
+ cutadapt - Cutadapt finds and removes adapter sequences, primers, poly-A
             tails and other types of unwanted sequence from your 
             high-throughput sequencing reads.

paper - http://dev.biologists.org/content/144/19/3487.long
we choose data from 30 and 72 hpf libraries
data from ncbi SRA archive
data 50bp single end
Obtaining the data:
The data required for our workshop can be easly obtained from Sequence Read
Archive (SRA), which is a data base storing raw sequencing data and alignment
information from high-throughput sequencing platforms. More information about
sra can be found at NCBI website. First think we have to do in order to
download our data is to find RNA-Seq records we are intrested in. 

Task 1.
=======
For this workshop we are intrested in reanalyzing samples from 30 and 72 hpf
time points. Please locate the appropiate records in SRA. To to this first
open your browser and navigate to https://www.ncbi.nlm.nih.gov/sra/. Then use
information from the paper to locate the apropiate records. Note that we are
only intrested in particular SRA run accession numbers.

Having identified the SRRs of intrested we can easly download them using the
SRA Toolkit. This is set of tools that alows interaction with SRA datata base.
For our purpose would use the fastq-dump program, like this:
fastq-dump SRR
However each of the files we intend to download is quite large (~6Gb) so it
would definetely take too long. Instead all required files have been already
dowloaded for you before hand and can be found in raw dir.
