#!/bin/bash

KRAKENDB="./kraken2_db"

# First we run Kraken2
kraken2 --use-names --threads 24 --db ${KRAKENDB} --report ${2}.report.txt ${1} > ${2}.kraken

# Conert output to something we can feed into Krona
./k2k.py ${2}

# Run Krona
ktImportTaxonomy -q 1 -t 2 -tax krona_db -o ${2}.html ${2}.kraken.krona
