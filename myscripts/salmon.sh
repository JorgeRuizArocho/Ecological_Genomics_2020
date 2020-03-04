#!/bin/bash
output = /data/project_data/RS_RNASeq/salmon/cleanreads

for ${file} in data/data_project/RS_RNASeq/cleanreads/KAN*D*.cl.fq*
  
  do 

salmon quant -i /data/project_data/RS_RNASeq/RefererenceTranscriptome/Pabies_HC27_index -l A -r ${file} --validateMappings -o transcripts_quant

done

for ${file} in data/data_project/RS_RNASeq/cleanreads/KAN*H*.cl.fq*
  
  do 

salmon quant -i /data/project_data/RS_RNASeq/RefererenceTranscriptome/Pabies_HC27_index -l A -r ${file} --validateMappings -o transcripts_quant

done