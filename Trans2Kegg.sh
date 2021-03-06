#!/bin/bash
Rscript rox.R
cd ..
R CMD build Trans2Kegg \
    1>Trans2Kegg/build.log 2>Trans2Kegg/build.err
R CMD check --timings Trans2Kegg_0.99.25.tar.gz \
    1>>Trans2Kegg/build.log 2>>Trans2Kegg/build.err
R CMD BiocCheck Trans2Kegg_0.99.25.tar.gz \
    1>>Trans2Kegg/build.log 2>>Trans2Kegg/build.err
cd Trans2Kegg
