# Kraken-Krona
A repository of scripts to run Kraken and Krona on FastQ files

    # Create a conda environment
    $ conda env create -f=environment.yml -n k2
    # Activate the environment
    $ conda activate k2
    # Download the data dependencies
    $ ./get_dependencies.sh
    # Run the analysis on your data
    $ ./run.sh <infile.fastq> <tag>

`<infile.fastq>` is your input data in FASTQ format, and `<tag>` is the prefix that your result outputs will be labelled with.
