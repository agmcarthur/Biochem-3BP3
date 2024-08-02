## BIOCHEM 3BP3 Practical Bioinformatics in the Genomics Era

*Department of Biochemistry & Biomedical Sciences, Faculty of Health Sciences, McMaster University, Hamilton, Ontario, Canada*

**This is a living document, content will be updated frequently.**

Introduction to bioinformatics theory, tools, and practice with an emphasis on high-throughput DNA sequencing technologies. Areas of emphasis include gene sequence analysis, functional prediction, genome assembly and annotation, gene expression analysis, gene regulation analysis, genome databases, and microbial genomics. Includes an introduction to the command line, software development, and cloud computing.

By the end of this course, the student should have practical skills with a number of bioinformatics techniques common in a modern research laboratory, familiarity with online databases and their use, and a knowledge of the use of genomics data for hypothesis testing.

https://academiccalendars.romcmaster.ca/preview_course_nopop.php?catoid=24&coid=142047

> This GitHub repository only contains material developed by [Dr. McArthur](http://mcarthurbioinformatics.ca) directly and does not include guest lectures, student generated content, or course documents. These are only available to registered students via Avenue to Learn. In addition, some of the exercises require password access to class servers, available to registered students only. These can be provided by request for undergraduate and graduate students in Biochemistry & Biomedical Sciences, the Michael G. DeGroote Institute for Infectious Disease Research, or other affiliated programs. Please see [License and Copyright information](https://github.com/agmcarthur/Biochem-3BP3/blob/master/LICENSE).

## Course Schedule 2024

| Week | Dates | Lecture | Tutorial | Flash Updates | Assessments |
|-----|-----|-----|-----|-----|
| 1 | September 3, 5, 6 | [Lecture 1](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Introduction to Bioinformatics & the Course | **Tours of FHS SeqCore & SHARCNET** | |
| 2 | September 10, 12, 13 | **Tours of FHS SeqCore & SHARCNET** | [Lab 1](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_1_Genome_Databases): Introduction to Lab & Genome Databases | GenBank, Ensembl, Growth of Sequencing Data | tutorial |
| 3 | September 17, 19, 20 | [Lecture 2](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Sequence Similarity & Searching | [Lab 2](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_2_Gene_Finding): Searches, Protein Annotation | BLAST, Pfam, PROSITE | tutorial |
| 4 | September 24, 26, 27 | [Lecture 3](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Evolutionary Biology, Bonus: [Bayesian Phylogenetics](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/EYCAZ2CJGghMoXEFU7YEMTcBDDwCaNTTV6fh8A7UH_CKQQ) | [Lab 3](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_3_Phylogenetics): Phylogeny Lab | Terminology, Sequence Alignment, Phylogenetic Trees | tutorial |
| 5 | October 1, 3, 4 | [Lecture 4](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Beyond the Gene - Networks, Ontologies | [Lab 4](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_4_Ontologies): Ontology and Antimicrobial Resistance | Gene Ontology, KEGG, CARD | tutorial |
| 6 | October 8, 10, 11 | TA Research Talk | [Lab 5](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_5_Linux): Linux & Sequencing Informatics (demo) | Sanger Sequencing, FASTA, Linux | lecture quiz | 
| 7 | October 15, 17, 18 | *mid-term recess* | | |
| 8 | October 22, 24, 25 | [Lecture 6](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): DNA Sequencing & Genome Assembly,  Bonus: [De Bruijn graph walkthrough](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/Efjr1LXuDp9MiqUjpzESEzMBMAPkDonE1UrmdA8Bn9O70A) | [Lab 6](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_6_Genome_Assembly): Galaxy, FASTQ, Assembly | Illumina Sequencing, FASTQ, Galaxy | tutorial |
| 9 | October 29, 31, & November 1 | [Lecture 7](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Molecular Epidemiology | [Lab 7](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_7_Epidemiology): SNP analysis & Molecular Epidemiology | SNPs, Horizontal Gene Transfer, Metagenomics | tutorial |
| 10 | November 5, 7, 8 | [Lecture 8](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Gene Expression Analysis | [Lab 8](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_8_Microarrays): Microarray Lab (demo) | Microarrays, Normalization, False Discovery | | 
| 11 | November 12, 14, 15 | [Lecture 9](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): RNA-Seq, ChIP-Seq, Bisulfite-Seq | [Lab 9](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_9_RNASeq): RNA-Seq | RNA-Seq, Illumina HT-12, Tn-Seq | tutorial |
| 12 | November 19, 21, 22 | Guest Lecture: [Dr. Kathleen Houlahan](https://houlahanlab.github.io) | Houlahan Lab | Random Forest, Logistic Regression, Natural Language Processing | lecture quiz, tutorial |
| 13 | November 26, 28, 29 | [Lecture 10](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Advances in DNA Sequencing | | | lecture quiz |
| 14 | December 3 | [Lecture 11](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Genomics of Pandemics | | | lecture quiz |

**BONUS LECTURE** (not official course content in 2024): [Lecture 12](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Internet of Things & Big Data [video ~44 minutes](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/EQAJiNZwUz5MtWFWj1P7eJABIYYMB86koLiat51DL8Ycew)

## Due Dates
* All assignments are to be submitted to A2L by 11:59 pm on the date the assignment is due unless otherwise stated.
* The Critical Review is to be submitted to the assessment drop box on A2L by 11:59 pm on October 27, 2024.
* Throughout the term, each student will give a single 10-minute Flash Update presentation on an assigned topic and must upload their slides to A2L before the start of their tutorial.

## Supplementary Videos

*Not official course content, recorded during Fall 2020, requires McMaster authorized access. Please note, Stream (Classic) is being decommissioned and all videos will be migrated to Stream (on OneDrive and SharePoint) in August, 2023.*

* Dr. Joanna Wilson, Department of Biology, McMaster University discusses their research program in aquatic toxicology and the role of genomics and bioinformatic in their research, [video ~10 minutes](https://web.microsoftstream.com/video/d8efccec-57d6-4439-ba13-2d5bff4f365b)
* Dr. Christine Mader, Farncombe Metagenomics DNA Sequencing Core, McMaster University provides an overview of McMaster high-throughput DNA sequencing facility, [video ~72 minutes](https://web.microsoftstream.com/video/8c74bee8-8f96-4bb6-b58a-1e768d7e1e85)
* Mark Hahn, SHARCNET/Digital Alliance provides an overview of the SHARCNET high-performance computing platform, [video ~50 minutes](https://web.microsoftstream.com/video/3b619d7c-c31e-434e-b6d2-b8579e441145)
* Dr. Robyn Lee, Dalla Lana School of Public Health discusses critical infectious disease analyses in the Canadian north, [video ~7 minutes](https://web.microsoftstream.com/video/8a04da03-951c-42cb-8059-53be0012d1b4)
* Dr. Fiona Whelan, University of Nottingham discusses genomics and bioinformatics of the human microbiome, [video ~6 minutes](https://web.microsoftstream.com/video/8ff9ee66-8892-4041-99ae-6d1a8f4333be)
* Dr. Guillaume Paré, Population Health Research Institute, McMaster University discusses exome sequencing and the genetics of cardiovascular disease, [video ~17 minutes](https://web.microsoftstream.com/video/83533954-b7ca-44e9-be83-61e833106c23)
* Dr. Shawn Hercules, Department of Biology McMaster University discusses the genetic underpinnings of triple negative breast cancer, [video ~56 minutes](https://web.microsoftstream.com/video/36f73c78-b3b9-4b4e-8145-3cbed5a0e09b)
* Drs. Michael Chong & Ricky Lali, Population Health Research Institute, McMaster University discuss genome-wide association and cardiovascular disease, [video ~95 minutes](https://web.microsoftstream.com/video/dfb7c46e-ce4e-4657-951b-54d51a231262)
* Dr. Sandrine Moreira, National de Santé Publique du Québec discusses implementation of microbial genomics in a public health lab [video ~50 minutes](https://web.microsoftstream.com/video/b3d8eb8c-52a9-4a6f-8f30-9f89efd49e2f)
* Dr. Kara Tsang, London School of Hygiene & Tropical Medicine discusses analytics and machine learning to predict antimicrobial resistance [video ~50 minutes](https://web.microsoftstream.com/video/9cffd333-8cca-4db1-a17c-884963dcc009)

## Flash Updates

WEEK 2 - GenBank, Ensembl, Growth of Sequencing Data
* **NCBI & GenBank**. Provide a review of the GenBank resource, with an emphasis on the variety of tools and data it offers. See *Nucleic Acids Res.* 2023 Jan 6;51(D1):D29-D38. [PMID 36370100](https://pubmed.ncbi.nlm.nih.gov/36370100), *Nucleic Acids Res.* 2022 Jan 7;50(D1):D161-D164. [PMID 34850943](https://pubmed.ncbi.nlm.nih.gov/34850943).
* **Ensembl**. Provide a review of the Ensembl resource, with an emphasis on the variety of tools and data it offers. See *Nucleic Acids Res.* 2023 Jan 6;51(D1):D933-D941. [PMID 36318249](https://pubmed.ncbi.nlm.nih.gov/36318249).
* **Growth of Sequencing Data**. Provide an overview of the growth of DNA sequencing data as well as predicted growth. See *Nucleic Acids Res.* 2023 Jan 6;51(D1):D141-D144. [PMID 36350640](https://pubmed.ncbi.nlm.nih.gov/36350640), [GenBank and WGS Statistics](http://www.ncbi.nlm.nih.gov/genbank/statistics), [The Cost of Sequencing a Human Genome](http://www.genome.gov/sequencingcosts/), and [In The Year 2030—Looking at How Genomic Data Might Evolve](https://datascience.cancer.gov/news-events/blog/year-2030-looking-how-genomic-data-might-evolve).

WEEK 3 - BLAST, Pfam, PROSITE
* **BLAST**. Provide a review of the purpose of BLAST algorithms for database searching and how to perform them online. Specifically, outline the difference between BLASTN, BLASTP, BLASTX, TBLASTN, and TBLASTX. See [*Nature Education* 1: 215](http://www.nature.com/scitable/topicpage/basic-local-alignment-search-tool-blast-29096) & *Curr Protoc Mol Biol.* 2001 May;Chapter 19:Unit 19.3 [PMID 18265177](https://pubmed.ncbi.nlm.nih.gov/18265177).
* **Pfam**. Provide a review of the Pfam resource, with an emphasis on the variety of tools and data it offers (as well as its migration to InterPro). See *Nucleic Acids Res.* 2021 Jan 8;49(D1):D412-D419 [PMID 33125078](https://pubmed.ncbi.nlm.nih.gov/33125078) and *Nucleic Acids Res.* 2023 Jan 6; 51(D1): D418–D427 [PMID 36350672](https://pubmed.ncbi.nlm.nih.gov/36350672).
* **PROSITE**. Provide a review of the PROSITE resource, with an emphasis on the variety of tools and data it offers. See *Nucleic Acids Res.* 2013 41(Database issue):D344-7 [PMID 23161676](https://pubmed.ncbi.nlm.nih.gov/23161676) and the [PROSITE website](https://prosite.expasy.org).

WEEK 4 - Terminology, Sequence Alignment, Phylogenetic Trees
* **Terminology**. Explain the difference between the terms “similarity” and “homology”. Differentiate between the terms “homolog”, “paralog”, “ortholog”. See *Annu Rev Genet.* 2005;39:309-38 [PMID 16285863](https://pubmed.ncbi.nlm.nih.gov/16285863) and [BLAST Glossary](http://www.ncbi.nlm.nih.gov/books/NBK62051/).
* **Sequence Alignment**. Explain the difference between local alignment (e.g. BLAST) and global alignment (e.g. CLUSTAL) and introduce the CLUSTAL family of algorithms. See *Protein Sci.* 2018 Jan;27(1):135-145 [PMID 28884485](https://pubmed.ncbi.nlm.nih.gov/28884485).
* **Phylogenetic Trees**. Overview what a phylogenetic tree represents and the major concepts for its interpretation. See [*Nature Education* 1: 190](http://www.nature.com/scitable/topicpage/reading-a-phylogenetic-tree-the-meaning-of-41956) and [How to read a phylogenetic tree](https://artic.network/how-to-read-a-tree.html).

WEEK 5 - Gene Ontology, KEGG, CARD
* **Gene Ontology**. Introduce the Gene Ontology. See *Nucleic Acids Res.* 2019 Jan 8;47(D1):D330-D338 [PMID 30395331](https://pubmed.ncbi.nlm.nih.gov/30395331) and *Genetics* 2023 May 4;224(1):iyad031 [PMID 36866529](https://pubmed.ncbi.nlm.nih.gov/36866529).
* **KEGG**. Introduce the Kyoto Encyclopedia of Genes and Genomes (KEGG). See *Nucleic Acids Res.* 2023 Jan 6;51(D1):D587-D592 [PMID 36300620](https://pubmed.ncbi.nlm.nih.gov/36300620) and *Nucleic Acids Res.* 2019 Jan 8;47(D1):D590-D595 [PMID 30321428](https://pubmed.ncbi.nlm.nih.gov/30321428).
* **CARD**. Introduce the Comprehensive Antibiotic Resistance Database. See *Nucleic Acids Res.* 2023 Jan 6;51(D1):D690-D699 [PMID 36263822](https://pubmed.ncbi.nlm.nih.gov/36263822) and *Nucleic Acids Res.* 2020 48(Database issue):D517-D525 [PMID 31665441](https://pubmed.ncbi.nlm.nih.gov/31665441).

WEEK 7 - Sanger Sequencing, FASTA, Linux
* **Sanger Sequencing**. Review the Sanger DNA sequencing method, with emphasis upon automation by Applied Biosystems. See [*Nature Education* 1:193](http://www.nature.com/scitable/topicpage/dna-sequencing-technologies-690) and [The Order of Nucleotides in a Gene Is Revealed by DNA Sequencing](http://www.nature.com/scitable/topicpage/the-order-of-nucleotides-in-a-gene-6525806). *Note: You do not need to introduce 454, Illumina, or Next-Generation Sequencing (NGS) methods.*
* **FASTA**. Introduce the FASTA file format, review it’s origins and illustrate how it was adapted for raw DNA sequencing results. Also introduce the concept of quality scores generated by the legacy base calling software PHRED (the QUAL format file). See [Wikipedia](https://en.wikipedia.org/wiki/FASTA_format), [PHRED](http://www.phrap.com/phred), and *Nucleic Acids Res.* 2010 38:1767-71 [PMID 20015970](https://pubmed.ncbi.nlm.nih.gov/20015970). *Note: You do not need to introduce the FASTQ format for Next-Generation Sequencing (NGS) methods.*
* **Linux**. Introduce the concept of the operating systems (Windows, Mac, “command line”). Give a brief history of the origins of UNIX and how it differs from LINUX. See [What is Linux](http://www.linuxfoundation.org/what-is-linux), [Differentiating UNIX and Linux](https://developer.ibm.com/articles/au-unix-difflinux/), and [Difference between Unix and Linux](https://www.geeksforgeeks.org/linux-vs-unix/).

WEEK 8 - Illumina Sequencing, FASTQ, Galaxy
* **Illumina Sequencing**. Review the Illumina DNA sequencing method, see [DNA Sequencing: How to Choose the Right Technology](https://frontlinegenomics.com/dna-sequencing-how-to-choose-the-right-technology/) and [Explore Illumina sequencing technology](http://www.illumina.com/technology/next-generation-sequencing/sequencing-technology.html). *Note: you may use images from the “Illumina Sequencing Introduction” PDF).*
* **FASTQ**. Introduce the FASTQ file format, review how it was developed for Next-Generation Sequencing (NGS). Review the concept of base calling quality and how it is encoded in FASTQ. *Nucleic Acids Res.* 2010 38:1767-71 [PMID 20015970](https://pubmed.ncbi.nlm.nih.gov/20015970). *Note: We will be handling recent Illumina FASTQ data, which uses an offset of 33, see https://en.wikipedia.org/wiki/FASTQ_format.*
* **Galaxy**. Introduce the Galaxy platform for bioinformatics analysis, see *Genome Biol.* 2010;11(8):R86 [PMID 20738864](https://pubmed.ncbi.nlm.nih.gov/20738864) and *Nucleic Acids Res*. 2022 Jul 5;50(W1):W345-W351 [PMID 35446428](https://pubmed.ncbi.nlm.nih.gov/35446428).

WEEK 9 - SNPs, Horizontal Gene Transfer, Metagenomics
* **SNPs**. Define the term Single Nucleotide Polymorphism (SNP) and explain how these data can be used to determine organism/strain relatedness. Use SARS-CoV-2 as an example, see *Microbiol Spectr*. 2023 Jun 15;11(3):e0190022 [PMID 37093060](https://pubmed.ncbi.nlm.nih.gov/37093060) and [Phylogenetic Analysis of SARS-CoV-2 in Ontario](https://www.publichealthontario.ca/en/Data-and-Analysis/Infectious-Disease/COVID-19-Data-Surveillance/Nextstrain).
* **Horizontal Gene Transfer**. Define the term Horizontal Gene Transfer (HGT; also known as Lateral Gene Transfer, LGT) and discuss how it could confound determination of organism/strain relatedness using SNP analysis. Use the emergence of MCR-1 as an example, *Lancet Infect Dis.* 2015 Nov 18. pii: S1473-3099(15)00424-7 [PMID 26603172](https://pubmed.ncbi.nlm.nih.gov/26603172).
* **Metagenomics**. Introduce metagenomics in the context of molecular and clinical epidemiology. See *Expert Rev Mol Diagn.* 2018 Jul;18(7):605-615. [PMID 29898605](https://pubmed.ncbi.nlm.nih.gov/29898605).

WEEK 10 - Microarrays, Normalization, False Discovery
* **Microarrays**. Review microarray technology for measurement of absolute or relative gene expression levels. Highlight the key difference between microarrays and RNA sequencing approaches. See [*Nature Education* 1:195](http://www.nature.com/scitable/topicpage/transcriptome-connecting-the-genome-to-gene-function-605) and [Scientists Can Study an Organism's Entire Genome with Microarray Analysis](http://www.nature.com/scitable/topicpage/scientists-can-study-an-organism-s-entire-6526266).
* **Normalization**. Introduce the concept of normalization and why it is needed in microarray analysis. Review the major normalization approaches. See *Nat Genet.* 32 Suppl:496-501. [PMID 12454644](https://pubmed.ncbi.nlm.nih.gov/12454644).
* **False Discovery**. Introduce the concept of the false discovery rate and how it is handled in genomic analyses. See *Proc Natl Acad Sci USA*. 100: 9440-5. [PMID 12883005](https://pubmed.ncbi.nlm.nih.gov/12883005) and [P-values, False Discovery Rate (FDR) and q-values](http://www.nonlinear.com/support/progenesis/comet/faq/v2.0/pq-values.aspx).

WEEK 11 - RNA-Seq, Illumina HT-12, Tn-Seq
* **RNA-Seq**. Overview the steps in RNA-Seq analysis of transcriptomes. See *Nat Rev Genet.* 10:57-63. [PMID 19015660](https://pubmed.ncbi.nlm.nih.gov/19015660) and [Study gene expression using RNA sequencing](https://www.illumina.com/techniques/sequencing/rna-sequencing.html).
* **Illumina Bead Microarrays**. Introduce ‘bead chip’ technologies for measurement of gene expression levels. Contrast the method with RNA-Seq and traditional two-channel microarrays. Illustrate how the technology can be use for gene expression, gene copy number, and gene methylation measurement. See [Bead-Based Microarray Technology](http://www.illumina.com/technology/beadarray-technology.html) and embedded links.
* **Tn-Seq**. Provide an overview on the Tn-Seq approach to examining bacterial genetics. See *MBio* 2:e00315-10. [PMID 21253457](https://pubmed.ncbi.nlm.nih.gov/21253457).

WEEK 12 - Random Forest, Logistic Regression, Natural Language Processing
* **Random Forest**. Provide an overview of the Random Forest method for classification of complex data. see [An Introduction to Random Forest](https://towardsdatascience.com/random-forest-3a55c3aca46d), *Proc Natl Acad Sci U.S.A.* 115:1690-1692 [PMID 29440440](https://pubmed.ncbi.nlm.nih.gov/29440440), and *Front Genet.* 9:297 [PMID 30123241](https://pubmed.ncbi.nlm.nih.gov/30123241).
* **Logistic Regression**. Provide an overview of Logistic Regression, a predictive machine learning method. See [Introduction to Logistic Regression](https://towardsdatascience.com/introduction-to-logistic-regression-66248243c148) and *mSystems* 4:e00211-19 [PMID 31387929](https://pubmed.ncbi.nlm.nih.gov/31387929).
* **Natural Language Processing**. Provide an overview of Natural Language Processing for turning text into data, see [Introduction to Natural Language Processing for Text](https://towardsdatascience.com/introduction-to-natural-language-processing-for-text-df845750fb63) and *BMC Bioinformatics* 9:193 [PMID 18410678](https://pubmed.ncbi.nlm.nih.gov/18410678).
