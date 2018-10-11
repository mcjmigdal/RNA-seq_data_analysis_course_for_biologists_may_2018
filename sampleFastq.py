#!/usr/bin/evn python3
epilog='''author=migdal
        date=09/18'''

from sys import argv
import gzip
from random import random
from Bio.SeqIO.QualityIO import FastqGeneralIterator

fastq = argv[1]
nReads = int(argv[2])

with gzip.open(fastq, "rt") as in_handle:
    count = 0
    for title, seq, qual in FastqGeneralIterator(in_handle):
        if random() >= 0.5:
            count += 1
            print("@%s" % title)
            print(seq)
            print("+")
            print(qual)
        if count == nReads:
            break
