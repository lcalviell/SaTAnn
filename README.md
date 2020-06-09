# SaTAnn (outdated)
an R package to detect and quantify ORF translation using Ribo-seq data (please check ORFquant for an updated version)

*SaTAnn* (Splice-aware Translatome Annotation) is an R package that aims at detecting and quantifiying ORF translation on complex transcriptomes using Ribo-seq data.
This package uses syntax and functions present in Bioconductor packages like *GenomicFeatures*, *rtracklayer* or *BSgenome*. 
*SaTAnn* aims at quantifying translation at the single ORF level taking into account the presence of multiple transcripts expressed by each gene.
To do so, the *SaTAnn* pipeline consists of transcript filtering, *de-novo* ORF finding, ORF quantification and ORF annotation.
A variety of annotation methods, both in transcript and genomic space, is performed for each ORF, to yield a more complete picture of alternative splice sites usage, uORF translation, translation on NMD candidates etc...
More details can be found in our manuscript:

### SaTAnn quantifies translation on the functionally heterogeneous transcriptome ###

*Lorenzo Calviello^, Antje Hirsekorn, Uwe Ohler^*

**biorXiv (2019)**, doi: https://doi.org/10.1101/608794

https://www.biorxiv.org/content/10.1101/608794v1

We recommend users to have a look at the vignette: https://htmlpreview.github.io/?https://github.com/lcalviell/SaTann/blob/master/SaTAnn_vignette.html, or our manual (*SaTAnn_manual.pdf*).


To install *SaTAnn*:

```
library("devtools")
install_github(repo = "lcalviell/SaTAnn")

library("SaTAnn")

```

Three steps are required to use *SaTAnn* on your data:
```
?prepare_annotation_files
```
parses a *.gtf* and a *.2bit* file. (this need to be done once per each annotation-genome combination, a .2bit file can be obtained from a fasta file using the *faToTwoBit* software from UCSC: https://genome.ucsc.edu/goldenpath/help/twoBit.html - http://hgdownload.soe.ucsc.edu/admin/exe/ )


```
?prepare_for_SaTAnn
```
or (**recommended**) the *Ribo-seQC* package (https://github.com/lcalviell/Ribo-seQC) can create input files for *SaTAnn* using a Ribo-seq .bam file.


```
?run_SaTAnn
```

is the master function used to perform the entire analysis workflow, for single genes or (**recommended**) entire transcriptomes.
Please check the vignette for an example workflow.


For any question, please email:

calviello.l.bio@gmail.com or uwe.ohler@mdc-berlin.de


Enjoy!


