#!/usr/bin/env python

import sys

label = sys.argv[1]

with open(f"{label}.kraken", "r") as f, open(f"{label}.kraken.krona", "w") as g:
    for line in f:
        _, read_id, tax_id, *_ = line.strip().split("\t")
        tax_id = tax_id.split()[-1][:-1]
        g.write(f"{read_id}\t{tax_id}""\n")
