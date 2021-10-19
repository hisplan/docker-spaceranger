# docker-spaceranger

Dockerized Space Ranger v1.3.0

https://support.10xgenomics.com/spatial-gene-expression/software/pipelines/latest/what-is-space-ranger

## License

The code is available to everyone under the standard [MIT license](./LICENSE.txt). However, it internally uses 10x software, so please make sure that you read and agree to [10x End User Software License](https://www.10xgenomics.com/end-user-software-license-agreement).

## Build Container Image

SCING (Single-Cell pIpeliNe Garden; pronounced as "sing" /siŋ/) is required for smooth and uninteruppted build process (e.g. CI/CD). For setup, please refer to [this page](https://github.com/hisplan/scing). All the instructions below is given under the assumption that you have already configured SCING in your environment.

[SCING](https://github.com/hisplan/scing) installation is required.

```bash
conda activate scing

./build.sh
```

## Push to Docker Registry

```bash
conda activate scing

./push.sh
```

## Usage

```bash
$ spaceranger

spaceranger spaceranger-1.3.0
Process 10x Genomics Spatial Gene Expression data

USAGE:
    spaceranger <SUBCOMMAND>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    count               Count gene expression and feature barcoding reads from a single capture
                        area
    aggr                Aggregate data from multiple 'spaceranger count' runs
    targeted-compare    Analyze targeted enrichment performance by comparing a targeted sample
                        to its cognate parent WTA sample (used as input for targeted gene
                        expression)
    targeted-depth      Estimate targeted read depth values (mean reads per spot) for a
                        specified input parent WTA sample and a target panel CSV file
    mkfastq             Run Illumina demultiplexer on sample sheets that contain 10x-specific
                        sample index sets
    testrun             Execute the 'count' pipeline on a small test dataset
    mat2csv             Convert a gene count matrix to CSV format
    mkref               Prepare a reference for use with 10x analysis software. Requires a GTF
                        and FASTA
    mkgtf               Filter a GTF file by attribute prior to creating a 10x reference
    upload              Upload analysis logs to 10x Genomics support
    sitecheck           Collect linux system configuration information
    help                Prints this message or the help of the given subcommand(s)
```
