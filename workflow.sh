# paper - http://dev.biologists.org/content/144/19/3487.long

download=$1

# Download reads and reference
Names=(A30 B30 C30 A48 B48 C48 A72 B72 C72)
SRA=(SRR6039677 SRR6039675 SRR6039689 SRR6039680 SRR6039692 SRR6039686 SRR6039684 SRR6039688 SRR6039673)
if [ ! -d raw ] || [ ${download} ]; then
  mkdir raw
  cd raw
  for (( i=0; i<${#SRA[*]}; i++ )); do
    fastq-dump --gzip ${SRA[$i]} && mv ${SRA[$i]}.fastq.gz ${Names[$i]}.fastq.gz &
  done
  cd ..
fi

# TODO gtf will be needed as well
if [ ! -d ref ] || [ ${download}  ]; then
  mkdir ref
  cd ref
  wget ftp://ftp.ensembl.org/pub/release-92/fasta/danio_rerio/cdna/Danio_rerio.GRCz11.cdna.all.fa.gz #TODO transcript names have to be modified for compatibility with gtf file
  #TODO some transcripts in fasta lies in very strange chromosomes perhaps another cdna fasta version could be used here not `all`
  cd ..
fi

# Check reads quality
if [ ! -d raw/multiqc_data ]; then
  cd raw
  fastqc -t 6 *gz
  multiqc .
  cd ..
fi

# Build salmon index | took me about 2 mins at 516A
if [ ! -d ref/Danio_rerio ]; then
  salmon index -t ref/Danio_rerio.GRCz11.cdna.all.fa.gz -i ref/Danio_rerio #TODO test if ref/ works
fi

# Quantify reads
if [ ! -d quants ]; then
  for fq in raw/*.gz; do
    salmon quant -i ref/Danio_rerio -l A -r ${fq} -p 6 -o quants/${fq%.fastq.gz}_quant
  done
fi
