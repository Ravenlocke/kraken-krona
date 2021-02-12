#!/bin/bash

# Download the data for kraken2
mkdir kraken2_db
cd kraken2_db
wget https://genome-idx.s3.amazonaws.com/kraken/k2_pluspfp_20210127.tar.gz
tar -zxvf k2_pluspfp_20210127.tar.gz
rm k2_pluspfp_20210127.tar.gz
cd ..


# Set up Krona
mkdir -p krona_db
ktUpdateTaxonomy.sh ./krona_db
