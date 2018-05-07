# paper - http://dev.biologists.org/content/144/19/3487.long
Names="A30 B30 C30 A72 B72 C72"
SRA="SRR6039677 SRR6039675 SRR6039689 SRR6039684 SRR6039688 SRR6039673"
if [ ! -d raw ]; then
  mkdir raw
  cd raw
  for sra in ${SRA}; do
    fastq-dump $sra &
  done
  cd ..
fi

if [ ! -d ref ]; then
  mkdir ref
  cd ref
  wget ftp://ftp.ensembl.org/pub/release-92/fasta/danio_rerio/dna/Danio_rerio.GRCz11.dna_sm.toplevel.fa.gz &
  wget ftp://ftp.ensembl.org/pub/release-92/fasta/danio_rerio/cdna/Danio_rerio.GRCz11.cdna.all.fa.gz
fi


