---
title: "Codes Tutorial 3"
author: "Jorge A. Ruiz-Arocho"
date: "2/5/2020"
output: html_document
---

#!/bin/bash

# We'll use this as a wrappeCDr to run our different

#Path to my repo:

myrepo="/users/s/r/jruizaro/Ecological_Genomics_2020/Sp"

#My population:

mypop="WA"

#Directory to our cleaned and paired reads:

input="/data/project_data/RS_ExomeSeq/fastq/edge_fastq/pairedcleanreads/${mypop}"

# Directory to store the outputs of our mapping

output="/data/project_data/RS_ExomeSeq/mapping"

# Run mapping.sh

source ./mapping.sh

# Run the post-processing steps

source ./process_bam.sh





