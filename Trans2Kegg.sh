#!/bin/bash
Rscript rox.R
cd ..
R CMD build Trans2Kegg
R CMD check Trans2Kegg_0.99.0.tar.gz
R CMD BiocCheck Trans2Kegg_0.99.0.tar.gz
cd Trans2Kegg