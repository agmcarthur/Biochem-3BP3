## Lab # 9 RNA-Seq

## Table of Contents
1. [Introduction](#intro)
2. [Setting Up](#setup)
3. [The Experiment](#experiment)
4. [Data Cleaning](#clean)
5. [Mapping Reads to the Human Genome](#mapping)
6. [Transcript Assembly](#transcripts)
7. [Differential Gene Expression Analysis](#dge)
8. [Interpretation](#interpretation)

<a name="intro"></a>
## Introduction

The goal of this lab is to review the analysis of RNA-Seq data using the public Galaxy platform.

**Lectures** - [Lecture 9](https://github.com/agmcarthur/Biochem-3BP3/blob/master/Lectures/Lecture%208%20-%20RNA-Seq.pptx) RNA-Seq, ChIP-Seq, Bisulfite-Seq ([~34 minute video](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/EcZMiU9kvzNEsvLCbkX9aiAB92qPdecMT2-SbmjLDGtPUg))

**Flash Updates**
* *RNA-Seq* 
* *Illumina Bead Microarrays* 
* *Tn-Seq* 

**Demo Videos**
* [Set-Up & Data Cleaning](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/EaUn4n_JRlhFrcSJiVhg9cYBWzv_sJPX6pBDC2ENcfh3eg) ~11 minutes
* [Read Mapping](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/ESvw9oUNBwtIg7dO_PMATlMBmbZ6aPhZ4SBuiKqQXbxIig) ~4 minutes
* [Transcript Assembly](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/EcbU-9ZwW2BKhMKQanVXkEgBxt4BZxP0My4mj3SzReYCtw) ~6 minutes
* [Differential Gene Analysis & Interpretation](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/Ee8IQz_I8c9BiFfZ-98JSksBY30ATte94sccEwi2aoX6Wg) ~13 minutes

**Background Reading** (optional)
* Bock. 2012. Analysing and interpreting DNA methylation data. [Nat Rev Genet. 13:705-19](https://www.ncbi.nlm.nih.gov/pubmed/?term=22986265)
* Liu et al. 2010. Q&A: ChIP-seq technologies and the study of gene regulation. [BMC Biol. 8:56](https://www.ncbi.nlm.nih.gov/pubmed/?term=20529237)

**Links**
* http://usegalaxy.org - this lab will be performed using the public Galaxy website, which was introduced in [Lab 6](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_6_Genome_Assembly)
* https://david.ncifcrf.gov - we will also use DAVID, which was introduced in [Lab 4](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_4_Ontologies)

**Computer Resources**
* You can complete this entire lab by using your web browser

**Grading**
* Questions are for your learning and are not graded
* Problems are worth 5 points each (-1 for each error)
* Submit your answers to the Problems, plus any supplmental multiple choice questions, on **A2L Quizzes** before the deadline
* An answer key to Questions and Problems will be provided on A2L after the deadline

<a name="qc"></a>
## Setting Up

Today’s lab will use the public server of the Galaxy project, http://usegalaxy.org, using the account you set up previously. Upload all the data files via the Paste/Fetch tool (manually indicating the file type):

**Annotation (GTF format) File(s):**

```
https://dl.dropboxusercontent.com/s/cr7u5npcqj6xp5w/gencode.v29.annotation.gtf.gz?dl=0
```

**Illumina Sequencing (FASTQ format) Files(s):**

```
https://dl.dropboxusercontent.com/s/ng1qit5698hra02/adrenal.fastq?dl=0
https://dl.dropboxusercontent.com/s/qgig0gsegvmkgs7/HLE_Cd_1_forward.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/cushi8ut6mfb1ph/HLE_Cd_1_reverse.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/vpjl91pa2myciwi/HLE_Cd_2_forward.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/epdxowzgc7biglt/HLE_Cd_2_reverse.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/e6vgsls07scm3re/HLE_Cd_3_forward.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/5x1lw926ftljpgr/HLE_Cd_3_reverse.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/7927y0q1qf6l9at/HLE_Ctrl_1_forward.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/rcy4wjswr9xfzwm/HLE_Ctrl_1_reverse.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/3478jpj8mlpa9im/HLE_Ctrl_2_forward.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/gbsv0594lw1ncl0/HLE_Ctrl_2_reverse.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/9re3pkjfkv4odj6/HLE_Ctrl_3_forward.fastq.gz?dl=0
https://dl.dropboxusercontent.com/s/czyd9wdrih4givw/HLE_Ctrl_3_reverse.fastq.gz?dl=0
```

<a name="experiment"></a>
## The Experiment

> Flash Update - RNA-Seq

We are going to examine the response of the human transcriptome in a human lens epithelial cell line (part of the eye) exposed to Cadmium, as preliminary microarray work has suggested Cadmium exposure, via the MTF-1 transcription factor, impacts lens development and maintenance. The experiment is RNA-Seq of three Cadmium exposed replicates and 3 Control replicates, using the GRCh38 version of the human genome annotation as reference. The RNA-Seq was performed using an Illumina HiSeq with 2 x 50 bp mate pair sequencing.

We are going to manipulate these data files multiple times, so download the [Sample Tracking.xlsx](Sample_Tracking.xlsx) spreadsheet to keep track of each step. Start by recording the identifiers of the upload boxes.

Use the FastQC tool to examine the quality of some of the RNA-Seq data. As before, details on all the plots can be found here: [FASTQC Documentation](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/3%20Analysis%20Modules/) and [video tutorial](http://www.youtube.com/watch?v=bz93ReOv87Y), or you can review [Lab 6](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_6_Genome_Assembly).

**Question #1. How many mRNA were sequenced from each replicate and does this data need any adaptor removal or quality trimming?**

**Problem #1. This lab is using only a fraction of the total data so it does not take too long, but also perform FASTQC on the full replicate from a different experiment (adrenal.fastq). When a full RNA-Seq run is analyzed, do the samples pass FastQC's quality control checks for per-sequence GC content and sequence duplication levels? These checks passed when we were assembling bacterial genomes. If they do not pass for these RNA-Seq data, suggest reasons.**

<a name="clean"></a>
## Data Cleaning

Even if the data as a whole passed FASTQC, quality trimming and filtering is still highly recommended to remove or trim individual sequences of poor quality. First, convert the data to Galaxy's preferred FASTQ format using *FASTQ Groomer* (default settings) and then run *Trimmomatic* (paired-end with separate input files, plus ILLUMINACLIP with TruSeq3 for paired-end MiSeq or HiSeq) on all the samples, using the [Sample Tracking.xlsx](Sample_Tracking.xlsx) spreadsheet to keep track of your results. For example:

![trimmomatic](./trimmomatic.jpg)

**Note**, Trimmomatic under these settings creates both **paired** and **unpaired** output. We only want to use paired reads in our data, so will ignore the unpaired files.

**Question #2. Run *FASTQC* on a couple of your samples to see if the data has changed in quality. Has anything improved?**


> Flash Update - Illumina HT-12

<a name="mapping"></a>
## Mapping Reads to the Human Genome

Before we can interpret these data, we need to map the FASTQ reads to the reference human genome (hg38). We cannot use the standard Burrows-Wheeler Transform software BWA or Bowtie, since RNA-Seq data needs to be corrected for introns and exons. Instead, we will use the HiSAT2 tool, which can handle splice junction boundaries as well as control for fragment sizes. 

Perform *HiSAT2* read mapping for each sample, using the hg38 built in reference: *Human (Homo sapiens) (b38): hg38 Canonical* on **each mate pair**. FASTA/Q file #1 = forward = left, FASTA/Q file #2 = reverse = right. For strand settings, use the default *Unstranded*. For example:

![HiSAT2](./HiSAT2.jpg)

> Flash Update - Tn-Seq

Record the results identifiers in the the [Sample Tracking.xlsx](Sample_Tracking.xlsx) spreadsheet.

**Problem #2. HiSAT2 creates a BAM file that contains the alignment information. Click on the HiSAT2 results for HLE Ctrl 1 replicate and then the *i* icon to access the STDERR. What percentage of read pairs aligned uniquely to one location in the genome and what percentage may represent multiple copy genes? What was the overall alignment rate? Would you say this is a good RNA-Seq data set? Why?**

<a name="transcripts"></a>
## Transcript Assembly

Now that the raw RNA-Seq data have been aligned to the reference human genome, we can assemble the data into individual transcripts as a step towards identifying differential gene expression (DGE). The *htseq-count* tool determines the transcripts at each gene in the reference and provides un-normalized counts.

Perform *htseq-count* on each replicate's *HiSAT2* BAM file, using the *gencode.v29.annotation.gtf.gz* annotation file and the *Reverse* stranded option (which reflects use of a first-strand synthesis kit during library construction, see [PMID 32415774](https://pubmed.ncbi.nlm.nih.gov/32415774/)). For example:

![htseq-count](./htseq-count.jpg)

**Ignore the *(no feature)* results, as these are not mapped to genes**. Record the results identifiers in the the [Sample Tracking.xlsx](Sample_Tracking.xlsx) spreadsheet. 

**Question #3. Examine the results of htseq-count and then using *Filter*, determine how many assembled transcripts were found in the Cadmium and Control collections (give the range covered by the three replicates).**

![filter](./filter.jpg)

<a name="dge"></a>
## Differential Gene Expression Analysis

> Note - The DESeq2 tool may not que properly, only use it once all previous steps are complete.

We are going to use *DESeq2* to both normalize and perform significance tests on these data. To do this we have to define the factors in the experiment and assign the *htseq-count* data to these factors. The controls should be in the first factor. For example:

![factors](./deseq2.jpg)

Make sure *Files have header?*, *Generate plots for visualizing the analysis results,* and *Output normalized counts table* are set to **Yes** and then run the analysis: 

![factors](./deseq2options.jpg)

*DESeq2* will normalize the data and perform the statistical testing as outlined in the lecture, but it will also create a table of normalized transcript counts that you could export for traditional ANOVA using MeV4 like you performed in the microarray lab.

*DESeq2* will create a results file that included significance testing (using the P-adj to reflect correction for false discovery), a principal components plot to visualize differences in overall transcriptome among the replicates, and a table of normalized counts.

**Question #4. Look at transcript differential expression testing and then try *Filter* for significant differences in transcript abundance (P-adj < 0.05). How many genes are differentially expressed in this experiment at this corrected alpha value?**

![filter](./filter2.jpg)

**Question #5. Look at the normalized counts and then try *Sort* to determine the most highly expressed gene in Cadmium exposed cells. Is it the same for each replicate?**

![sort](./sort.jpg)

<a name="interpretation"></a>
## Interpretation

At this point, we have a robust statistical analysis of these RNA-Seq data, with a resulting list of significantly differentially expressed genes, that are labeled using *ENSEMBL_GENE_ID* identifiers. Using the techniques of [Lab 4](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_4_Ontologies), use the [DAVID tool](https://david.ncifcrf.gov) to interpret these results. 

> Note - DAVID gets confused with the version identifiers in these Ensembl gene identifiers. The file [Ensembl_list.txt](Ensembl_list.txt) contains the list of significant hits with the versioning removed.

**Problem #3. What is your overall interpretation of the impact of Cadmium on human lens epithelial cells?**

