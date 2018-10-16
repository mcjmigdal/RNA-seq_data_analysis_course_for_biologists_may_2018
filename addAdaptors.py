#!/usr/bin/evn python3
epilog='''author=migdal
        date=09/18'''

from sys import argv
import gzip
from random import random
from Bio.SeqIO.QualityIO import FastqGeneralIterator

fastq = argv[1]
pAdaptors = float(argv[2])
adaptorSeq = argv[3]
adaptorLen = len(adaptorSeq)

with gzip.open(fastq, "rt") as in_handle:
    for title, seq, qual in FastqGeneralIterator(in_handle):
        if random() >= pAdaptors:
            insertLen = int(random() * adaptorLen)
            print("@%s" % title)
            print(seq[:-insertLen] + adaptorSeq[:insertLen])
            print("+")
            print(qual)
        else:
            print("@%s" % title)
            print(seq)
            print("+")
            print(qual)

