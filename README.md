## BIOCHEM 3BP3 Practical Bioinformatics in the Genomics Era

*Department of Biochemistry & Biomedical Sciences, Faculty of Health Sciences, McMaster University, Hamilton, Ontario, Canada*

**This is a living document, content will be updated frequently.**

Introduction to bioinformatics theory, tools, and practice with an emphasis on high-throughput DNA sequencing technologies. Areas of emphasis include gene sequence analysis, functional prediction, genome assembly and annotation, gene expression analysis, gene regulation analysis, genome databases, and microbial genomics. Includes an introduction to the command line, software development, and cloud computing.

By the end of this course, the student should have practical skills with a number of bioinformatics techniques common in a modern research laboratory, familiarity with online databases and their use, and a knowledge of the use of genomics data for hypothesis testing.

https://academiccalendars.romcmaster.ca/preview_course_nopop.php?catoid=24&coid=142047

> This GitHub repository only contains material developed by [Dr. McArthur](http://mcarthurbioinformatics.ca) directly and does not include guest lectures, student generated content, or course documents. These are only available to registered students via Avenue to Learn. In addition, some of the exercises require password access to class servers, available to registered students only. These can be provided by request for undergraduate and graduate students in Biochemistry & Biomedical Sciences, the Michael G. DeGroote Institute for Infectious Disease Research, or other affiliated programs. Please see [License and Copyright information](https://github.com/agmcarthur/Biochem-3BP3/blob/master/LICENSE).

## Course Schedule Fall 2023

| Week | Dates | Lecture | Tutorial | Flash Updates |
|-----|-----|-----|-----|-----|
| 1 | September 5 & 7 | [Lecture 1](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Introduction to Bioinformatics & the Course | *Tours of FHS SeqCore and SHARCNET* |
| 2 | September 12 & 14 | *Tours of FHS SeqCore and SHARCNET* | [Lab 1](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_1_Genome_Databases): Introduction to Lab & Genome Databases | GenBank, Ensembl, Growth of Sequencing Data |
| 3 | September 19 & 21 | [Lecture 2](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Sequence Similarity & Searching | [Shark CYPome video](https://web.microsoftstream.com/video/a876db13-6d45-4ac0-86c5-5c0ef83496e6) & [Lab 2](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_2_Gene_Finding): Searches, Protein Annotation | BLAST, Pfam, PROSITE |
| 4 | September 26 & 28 | [Lecture 3](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Evolutionary Biology | [P450 Phylogeny & Classification video](https://web.microsoftstream.com/video/654e2d90-b497-4166-9678-c8c76cb3e1ad) & [Lab 3](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_3_Phylogenetics): Phylogeny Lab | Terminology, Sequence Alignment, Phylogenetic Trees |
| 5 | October 3 & 5 | [Lecture 4](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Beyond the Gene - Networks, Ontologies | [Lab 4](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_4_Ontologies): Ontology and Antimicrobial Resistance | Gene Ontology, KEGG, CARD |
| 6 | October 10 & 12 (mid-term recess) | | | |
| 7 | October 17 & 19 | *Tours of CRLB-GMEL lab* | [Lab 5](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_5_Linux): Linux & Sequencing Informatics (demo) | Sanger Sequencing, FASTA, Linux |
| 8 | October 24 & 26 | [Lecture 6](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): DNA Sequencing & Genome Assembly | [Lab 6](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_6_Genome_Assembly): Galaxy, FASTQ, Assembly | Illumina Sequencing, FASTQ, Galaxy |
| 9 | October 31 & November 2 | [Lecture 7](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Molecular Epidemiology | [Lab 7](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_7_Epidemiology): SNP analysis & Molecular Epidemiology | SNPs, Horizontal Gene Transfer, Metagenomics |
| 10 | November 7 & 9 | [Lecture 8](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Gene Expression Analysis | [Lab 8](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_8_Microarrays): Microarray Lab (demo) | Microarrays, Normalization, False Discovery |
| 11 | November 14 & 16 | [Lecture 9](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): RNA-Seq, ChIP-Seq, Bisulfite-Seq | [Lab 9](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lab_9_RNASeq): RNA-Seq | RNA-Seq, Illumina HT-12, Tn-Seq |
| 12 | November 21 & 23 | [Lecture 10](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Advances in DNA Sequencing | Guest Lecture & Lab: [Dr. Samantha Wilson](https://www.wilsonpregnancylab.com/) | Random Forest, Logistic Regression, Natural Language Processing |
| 13 | November 28 & 30 | [Lecture 11](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Genomics of Pandemics | | 
| 14 | December 5 | [Lecture 12](https://github.com/agmcarthur/Biochem-3BP3/tree/master/Lectures): Internet of Things & Big Data |  | 

* All assignments are to be submitted to A2L by 11:59 pm on the date the assignment is due unless otherwise stated.
* The Critical Review and Reflective Essay are to be submitted to the assessment drop box on A2L by 11:59 pm on October 24, 2023 and December 6, 2023, respectively.
* Throughout the term, each student will give a single 10-minute Flash Update presentation on an assigned topic and must upload their slides to A2L before the start of their tutorial.

## Supplementary Videos

**Not official course content for Fall 2023, recorded during Fall 2020, requires McMaster authorized access. Please note, Stream (Classic) is being decommissioned and all videos will be migrated to Stream (on OneDrive and SharePoint) in August, 2023.**

* Dr. Joanna Wilson, Department of Biology, McMaster University discusses their research program in aquatic toxicology and the role of genomics and bioinformatic in their research [video ~10 minutes](https://web.microsoftstream.com/video/d8efccec-57d6-4439-ba13-2d5bff4f365b)
* Dr. Christine Mader, Farncombe Metagenomics DNA Sequencing Core, McMaster University provides an overview of McMaster high-throughput DNA sequencing facility [video ~72 minutes](https://web.microsoftstream.com/video/8c74bee8-8f96-4bb6-b58a-1e768d7e1e85)
* Mark Hahn, SHARCNET/Digital Alliance provides an overview of the SHARCNET high-performance computing platform [video ~50 minutes](https://web.microsoftstream.com/video/3b619d7c-c31e-434e-b6d2-b8579e441145)
* Dr. Robyn Lee, Dalla Lana School of Public Health discusses critical infectious disease analyses in the Canadian north [video ~7 minutes](https://web.microsoftstream.com/video/8a04da03-951c-42cb-8059-53be0012d1b4)
* Dr. Fiona Whelan, University of Nottingham discusses genomics and bioinformatics of the human microbiome [video ~6 minutes](https://web.microsoftstream.com/video/8ff9ee66-8892-4041-99ae-6d1a8f4333be)
* Dr. Guillaume Paré, Population Health Research Institute, McMaster University discusses exome sequencing and the genetics of cardiovascular disease [video ~17 minutes](https://web.microsoftstream.com/video/83533954-b7ca-44e9-be83-61e833106c23)
* Dr. Shawn Hercules, Department of Biology McMaster University discusses the genetic underpinnings of triple negative breast cancer [video ~56 minutes](https://web.microsoftstream.com/video/36f73c78-b3b9-4b4e-8145-3cbed5a0e09b)
* Drs. Michael Chong & Ricky Lali, Population Health Research Institute, McMaster University discuss genome-wide association and cardiovascular disease [video ~95 minutes](https://web.microsoftstream.com/video/dfb7c46e-ce4e-4657-951b-54d51a231262)

## Flash Updates

WEEK 2 - GenBank, Ensembl, Growth of Sequencing Data
* NCBI & GenBank. Provide a review of the GenBank resource, with an emphasis on the variety of tools and data it offers. See Nucleic Acids Res. 2019 Jan 8;47(D1):D23-D28. [PMID 30395293] & Nucleic Acids Res. 2019 Jan 8;47(D1):D94-D99. [PMID 30365038].
* Ensemble. Provide a review of the Ensembl resource, with an emphasis on the variety of tools and data it offers. See Nucleic Acids Res. 2019 Jan 8;47(D1):D745-D751. [PMID 30407521].
* Growth of Sequencing Data. Provide an overview of the growth of DNA sequencing data as well as predicted growth. See Nucleic Acids Res. 2019 Jan 8;47(D1):D94-D99. [PMID 30365038], http://www.ncbi.nlm.nih.gov/genbank/statistics, http://www.genome.gov/sequencingcosts/ and Science 2011 331:728-9 [PMID 21311016].

WEEK 3 - BLAST, Pfam, PROSITE
* BLAST. Provide a review of the purpose of BLAST algorithms for database searching and how to perform them online.  Specifically, outline the difference between BLASTN, BLASTP, BLASTX, TBLASTN, and TBLASTX. See Lobo 2008. Basic Local Alignment Search Tool (BLAST). Nature Education 1: 215 [http://www.nature.com/scitable/topicpage/basic-local-alignment-search-tool-blast-29096]
* Pfam. Provide a review of the Pfam resource, with an emphasis on the variety of tools and data it offers. See Nucleic Acids Res. 2019 Jan 8;47(D1):D427-D432 [PMID 30357350] and Nucleic Acids Res. 2018 Jul 2;46(W1):W200-W204 [PMID 29905871].
* PROSITE. Provide a review of the PROSITE resource, with an emphasis on the variety of tools and data it offers. See Nucleic Acids Res. 2013 41(Database issue):D344-7 [PMID 23161676].

WEEK 4 - Terminology, Sequence Alignment, Phylogenetic Trees
* Terminology. Explain the difference between the terms “similarity” and “homology”. Differentiate between the terms “homolog”, “paralog”, “ortholog”. See Annu Rev Genet. 2005;39:309-38 [PMID 16285863] and http://www.ncbi.nlm.nih.gov/books/NBK62051/.
* Sequence Alignment. Explain the difference between local alignment (e.g. BLAST) and global alignment (e.g. CLUSTAL) and introduce the CLUSTAL family of algorithms. See Protein Sci. 2018 Jan;27(1):135-145 [PMID 28884485].
* Phylogenetic Trees. Overview what a phylogenetic tree represents and the major concepts for its interpretation. See Baum 2008. Reading a phylogenetic tree: The meaning of monophyletic groups. Nature Education 1: 190 [http://www.nature.com/scitable/topicpage/reading-a-phylogenetic-tree-the-meaning-of-41956].

WEEK 5 - Gene Ontology, KEGG, CARD
* Gene Ontology. Introduce the Gene Ontology. See Nucleic Acids Res. 2019 Jan 8;47(D1):D330-D338 [PMID 30395331].
* KEGG. Introduce the Kyoto Encyclopedia of Genes and Genomes (KEGG). See Nucleic Acids Res. 2016 Jan 4;44(D1):D457-62 [PMID 26476454] and Nucleic Acids Res. 2019 Jan 8;47(D1):D590-D595 [PMID 30321428].
* CARD. Introduce the Comprehensive Antibiotic Resistance Database. See Nucleic Acids Res. 2017 45(Database issue):D566-D573 [PMID 27789705] and  Nucleic Acids Res. 2020 48(Database issue):D517-D525 [PMID 31665441].

WEEK 7 - Sanger Sequencing, FASTA, Linux
* Sanger Sequencing. Review the Sanger DNA sequencing method, with emphasis upon automation by Applied Biosystems. See Nature Education 1:193 [http://www.nature.com/scitable/topicpage/dna-sequencing-technologies-690] and http://www.nature.com/scitable/topicpage/the-order-of-nucleotides-in-a-gene-6525806. Note: You do not need to introduce 454, Illumina, or Next-Generation Sequencing (NGS) methods.
* FASTA. Introduce the FASTA file format, review it’s origins and illustrate how it was adapted for raw DNA sequencing results. Also introduce the concept of quality scores generated by the legacy base calling software PHRED (the QUAL format file). See https://en.wikipedia.org/wiki/FASTA_format, http://www.phrap.com/phred, and Nucleic Acids Res. 2010 38:1767-71 [PMID 20015970]. Note: You do not need to introduce the FASTQ format for Next-Generation Sequencing (NGS) methods.
* Linux. Introduce the concept of the operating systems (Windows, Mac, “command line”). Give a brief history of the origins of UNIX and how it differs from LINUX. See What is Linux (http://www.linuxfoundation.org/what-is-linux) and Differentiating UNIX and Linux (http://www.ibm.com/developerworks/aix/library/au-unix-difflinux.html).

WEEK 8 - Illumina Sequencing, FASTQ, Galaxy
* Illumina Sequencing. Review the Illumina DNA sequencing method, using the MiSeq platform as an example. Nat Biotechnol. 30:434-9 [PMID 22522955] and http://www.illumina.com/technology/next-generation-sequencing/sequencing-technology.html (you may use images from the “Illumina Sequencing Introduction” PDF).
* FASTQ. Introduce the FASTQ file format, review how it was developed for Next-Generation Sequencing (NGS). Review the concept of base calling quality and how it is encoded in FASTQ. Nucleic Acids Res. 2010 38:1767-71 [PMID 20015970]. Note: We will be handling recent Illumina FASTQ data, which uses an offset of 33, see https://en.wikipedia.org/wiki/FASTQ_format.
* Galaxy. Introduce the Galaxy platform for bioinformatics analysis and how it relates to Cloud computing (focus on CloudMan and Amazon Web Services). See Genome Biol. 2010 11:R86 [PMID 20738864] and https://wiki.galaxyproject.org/BigPicture/Choices.

WEEK 9 - SNPs, Horizontal Gene Transfer, Metagenomics
* SNPs. Define the term Single Nucleotide Polymorphism (SNP) and explain how these data can be used to determine organism/strain relatedness. Use the spread of MRSA as an example, Science 2010 327: 469-74 [PMID 20093474].
* Horizontal Gene Transfer. Define the term Horizontal Gene Transfer (HGT; also known as Lateral Gene Transfer, LGT) and discuss how it could confound determination of organism/strain relatedness using SNP analysis. Use the emergence of MCR-1 as an example, Lancet Infect Dis. 2015 Nov 18. pii: S1473-3099(15)00424-7 [PMID 26603172].
* Metagenomics. Introduce metagenomics in the context of molecular epidemiology. See Expert Rev Mol Diagn. 2018 Jul;18(7):605-615. [PMID 29898605].

WEEK 10 - Microarrays, Normalization, False Discovery
* Microarrays. Review microarray technology for measurement of absolute or relative gene expression levels. Highlight the key difference between microarrays and RNA sequencing approaches. See Nature Education 1:195 (http://www.nature.com/scitable/topicpage/transcriptome-connecting-the-genome-to-gene-function-605) and http://www.nature.com/scitable/topicpage/scientists-can-study-an-organism-s-entire-6526266
* Normalization. Introduce the concept of normalization and why it is needed in microarray analysis. Review the major normalization approaches. See Quackenbush. 2002. Microarray data normalization and transformation. Nat Genet. 32 Suppl:496-501. [PMID 12454644]
* False Discovery. Introduce the concept of the false discovery rate and how it is handled in genomic analyses. See Storey & Tibshirani. 2003. Statistical significance for genomewide studies. Proc Natl Acad Sci U S A. 100: 9440-5. [PMID 12883005] and http://www.nonlinear.com/support/progenesis/comet/faq/v2.0/pq-values.aspx

WEEK 11 - RNA-Seq, Illumina HT-12, Tn-Seq
* RNA-Seq. Overview the steps in RNA-Seq analysis of transcriptomes. See Wang et al. 2009. RNA-Seq: a revolutionary tool for transcriptomics. Nat Rev Genet. 10:57-63. [PMID 19015660]
* Illumina Bead Microarrays. Introduce ‘bead chip’ technologies for measurement of gene expression levels. Contrast the method with RNA-Seq and traditional two-channel microarrays. Illustrate how the technology can be use for gene expression, gene copy number, and gene methylation measurement. See http://www.illumina.com/technology/beadarray-technology.html and embedded links.
* Tn-Seq. Provide an overview on the Tn-Seq approach to examining bacterial genetics. See Gallagher et al. 2011. MBio 2:e00315-10. [PMID 21253457]

WEEK 12 - Random Forest, Logistic Regression, Natural Language Processing
* Random Forest. Provide an overview of the Random Forest method for classification of complex data. see “An Introduction to Random Forest”, https://towardsdatascience.com/random-forest-3a55c3aca46d, and Denikso & Hoffman. 2018. Classification and interaction in random forests. Proc Natl Acad Sci U.S.A. 115:1690-1692 [PMID 29440440], and Wenric & Shemirani. 2018. Using Supervised Learning Methods for Gene Selection in RNA-Seq Case-Control Studies. Front Genet. 9:297 [PMID 30123241]
* Logistic Regression. Provide an overview of Logistic Regression, a predictive machine learning method. See “Introduction to Logistic Regression”, https://towardsdatascience.com/introduction-to-logistic-regression-66248243c148, and Maguire et al. 2019. Identification of Primary Antimicrobial Resistance Drivers in Agricultural Nontyphoidal Salmonella enterica Serovars by Using Machine Learning. mSystems 4:e00211-19 [PMID 31387929]
* Natural Language Processing. Provide an overview of Natural Language Processing for turning text into data, see “Introduction to Natural Language Processing for Text”, https://towardsdatascience.com/introduction-to-natural-language-processing-for-text-df845750fb63, Karamanis et al. 2008. Natural language processing in aid of FlyBase curators. BMC Bioinformatics 9:193 [PMID 18410678], and Alex et al. 2008. Automating curation using a natural language processing pipeline. Genome Biol. 2:S10 [PMID 18834488]
