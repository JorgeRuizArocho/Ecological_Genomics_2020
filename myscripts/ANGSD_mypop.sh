---
title: "Untitled"
author: "Jorge A. Ruiz-Arocho"
date: "2/12/2020"
output: html_document
---
myrepo="/users/j/r/jruizaro/Ecological_Genomics_2020"

mkdir ${myrepo}/myresults/ANGSD

output="${myrepo}/myresults/ANGSD"

mypop="WA"

ls /data/project_data/RS_ExomeSeq/mapping/BWA/${mypop}_*sorted.rm*.bam >${output}/${mypop}_bam.list

REF="/data/project_data/RS_ExomeSeq/ReferenceGenomes/Pabies1.0-genome_reduced.fa"

# Estimating GL's and allele frequencies for all sites with ANGSD

ANGSD -b ${output}/${mypop}_bam.list \
-ref ${REF} -anc ${REF} \
-out ${output}/${mypop}_allsites \
-nThreads 1 \
-remove_bads 1 \
-C 50 \
-baq 1 \
-minMapQ 20 \
-minQ 20 \
-setMinDepth 3 \
-minInd 2 \
-setMinDepthInd 1 \
-setMaxDepthInd 17 \
-skipTriallelic 1 \
-GL 1 \
-doCounts 1 \
-doMajorMinor 1 \
-doMaf 1 \
-doSaf 1 \
-doHWE 1 \
# -SNP_pval 1e-6