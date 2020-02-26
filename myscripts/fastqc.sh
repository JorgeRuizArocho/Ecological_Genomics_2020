#!/bin/bash

cd ~/Ecological_Genomics_2020/myresults
 
for file in /data/project_data/RS_RNASeq/fastq/KAN*D*fastq*

do

fastqc ${file} -o fastqc/ 

done

for file in /data/project_data/RS_RNASeq/fastq/KAN*H*fastq* 

do 

fastqc ${file} -o fastqc/

done
 

