## Lab # 7 - Epidemiology

## Table of Contents
1. [Introduction](#intro)
2. [Data](#data)
3. [Tasks](#tasks)
4. [Questions](#questions)

<a name="intro"></a>
## Introduction

The goal of this lab is to develop molecular epidemiology skills by examining a *Salmonella* outbreak.

**Lectures** - [Molecular Epidemiology](https://github.com/agmcarthur/Biochem-3BP3/blob/master/Lectures/Lecture%206%20-%20Molecular%20Epidemiology.pptx)

**Flash Updates**
* *SNPs*. Define the term Single Nucleotide Polymorphism (SNP) and explain how these data can be used to determine organism/strain relatedness. Use the spread of MRSA as an example, [Science 2010 327: 469-74](https://www.ncbi.nlm.nih.gov/pubmed/?term=20093474).
* *Horizontal Gene Transfer*. Define the term Horizontal Gene Transfer (HGT; also known as Lateral Gene Transfer, LGT) and discuss how it could confound determination of organism/strain relatedness using SNP analysis. Use the emergence of MCR-1 as an example, [Lancet Infect Dis. 2015 Nov 18. pii: S1473-3099(15)00424-7](https://www.ncbi.nlm.nih.gov/pubmed/?term=26603172).
* *Metagenomics*. Introduce metagenomics in the context of molecular epidemiology. See [Expert Rev Mol Diagn. 2018 Jul;18(7):605-615](https://www.ncbi.nlm.nih.gov/pubmed/?term=29898605).

**Background Reading** (optional)
* *Mutreja et al .2011. Evidence for several waves of global transmission in the seventh cholera pandemic. [Nature 477: 462-5](https://www.ncbi.nlm.nih.gov/pubmed/?term=21866102)
* *Cassidy et al. 2015. Neolithic and Bronze Age migration to Ireland and establishment of the insular Atlantic genome. [Proc Natl Acad Sci U S A. Dec 28. pii: 201518445](https://www.ncbi.nlm.nih.gov/pubmed/?term=26712024)
* *Li & Durbin. 2010. Fast and accurate long-read alignment with Burrows-Wheeler transform. [Bioinformatics 26: 589-95](https://www.ncbi.nlm.nih.gov/pubmed/?term=20080505)

**Links**
* http://wgsa.net - Rapid Online Interpretation of Microbial Genomics for Surveillance and Epidemiology
* CARD: Comprehensive Antibiotic Resistance Database, http://card.mcmaster.ca
* RAxML Blackbox, http://www.genome.jp/tools/raxml/
* The AMR++ workflow on the McArthur Galaxy server, http://galaxylab.mcmaster.ca

**The Lab**
* The computers in the laboratory are terminals - clients within a large maintained computer system. They have limited computational power - often we will be using them to access web-based tools or specialized servers with more computational resources.
* You log into the computers using your MacID. You will be automatically logged out after 10 minutes of mouse inactivity. Use **CAFFEINE** to override the automatic log out - **REMEMBER TO LOG OUT MANUALLY AT THE END OF THE LAB**.
* All files and work on the computers will be lost when you log out. Be sure to save your work elsewhere. 

**Grading**
* The WORD file for answers is available on A2L.
* An answer key will be provided on A2L after the deadline.
* Points indicated for each question, total = 25.

<a name="data"></a>
## Data

In the previous lab you assembled a *Salmonella enterica* genome sequence, learning the steps of how to filter and assemble raw Illumina sequencing reads to form genome contigs and scaffolds. Now you are going to analyze 45 *Salmonella enterica* genomes from an outbreak. These samples are from 2012, when Public Health Ontario encountered a spike in food poisoning from a number of locations in Ontario, later determined to be *Salmonella* by traditional culture methods. Each isolate had DNA extracted, sequenced, and genome assembled. There is also one metagenomic sequencing data set from a single patient, for reasons explained below.

<a name="tasks"></a>
## Tasks

Your instructor will demonstrate the software needed to complete the following tasks:

> Flash Update - SNPs

* http://WGSA.net provides molecular typing tools for a number of pathogens. While it does not have a core genome MLST (cgMLST) framework for *Salmonella enterica*, it can perform traditional MLST profiling. Upload your sequences to WGSA.net to examine the MLST typing. Note that an alternate site, SISTR, can perform *Salmonella* cgMLST but it lacks sufficient hardware to be workable in a classroom setting (https://lfz.corefacility.ca/sistr-app/). We won’t be trying SISTR for this lab.

> Flash Update - Horizontal Gene Transfer

* In addition to WGSA.net, these genomes have been run through the PARSNP algorithm to catalog whole-genome SNPs (less SNP dense regions indicative of horizontal gene transfer). The result is a PHYLIP format file that also includes a reference sequence from the same MLST as well as the strain labels from a k-mer analysis. Perform a RAxML analysis (http://www.genome.jp/tools/raxml/) to determine fine-resolution relationships of these strains. Note: this is a nucleotide alignment, not a protein alignment, but as before include a gamma model of rate heterogeneity, a maximum likelihood search, and estimated proportion of invariable sites. The results file to look at is *RAxML_bipartitions.out* and the results are easier to look as a cladogram (i.e. no branch lengths).

> Flash Update - RAD-Seq

* *Salmonella* infections are often treated without antibiotics, except for severe cases in which trimethoprim (pediatric) or fluoroquinolones (adult) are used. If you find evidence of clonal outbreaks in your data, sample a genome from each subset for Resistance Gene Identifier analysis (part of http://card.mcmaster.ca). 

* Unexpectedly, a single patient has proven abnormally resistant to antibiotics, suggesting the *Salmonella* is not the only pathogen involved, even though it is the only pathogen successfully isolated. This patient has had their fecal metagenome sequenced. Use the AMR++ Galaxy workflow (http://galaxylab.mcmaster.ca) to screen these data for antimicrobial resistance genes. Note: these data have been pre-screened for host DNA sequences, so to keep things fast we are only screening for host against human chromosome 21 since AMR++ cannot skip host screening entirely.

<a name="questions"></a>
## Questions

**Question #1 (3 points). Are all your outbreak samples from the same known MSLT? Are any from novel or unresolved MLSTs?**

**Question #2 (1 point). If some MLST are unresolved, explain why for one sample.**

**Question #3 (2 points). Based on your answer to Question #1 and #2 above, is there any evidence that this is not a single source outbreak of *Salmonella*? Explain.**

Examine your RAxML results in Forester or another tree viewing program. Midpoint root the tree and order subtrees to answer the following questions.

**Question #4 (1 point). How many positions in the genome of *Salmonella enterica* are being used to generate the phylogenetic tree?**

**Question #5 (2 points). Do the various strain labels assigned by k-mers form monophyletic clades with strong bootstrap support? If not, why do you think this is the case? You can ignore the small number of samples that were not assigned to a specific strain.**

**Question #6 (2 points). Given that the reference sequence NC_011294 may be very closely related to the Ontario strains but all other reference sequences are from different MLSTs and outbreaks, is there any evidence that the Ontario samples do not reflect a single source outbreak of *Salmonella*? Think carefully about the bootstrap values.**

**Question #7 (2 points). Sample 17 is a Nurse suspected of poor hand hygiene leading to infection of a number of patients (sample 14, 11, 35), including himself. Does the RAxML tree provide evidence supporting this suspicion? Is there evidence of further hospital acquired infections? Explain.**

**Question #8 (2 points). Chicken burgers distributed by a local food supplier have been found to be contaminated with *Salmonella* (samples 4 & 5). Subsequently, several patients (samples 2, 7, 8, 15) known to have eaten (and possibly undercooked) these chicken burgers were additionally found to have *Salmonella* infections. Is there evidence of a single source of all these infections? Could the illness of additional patients possibly be explained by contaminated chicken burgers? Explain. (hint: bootstrap support is very important for these interpretations)**

**Question #9 (3 points). *Salmonella* infections are often treated without antibiotics, except for severe cases in which trimethoprim (pediatric) or fluoroquinolones (adult) are used. If you find evidence of independent sub-clades in your RAxML tree (i.e. separated by strong bootstrap support and possibly reflecting strain labels), sample a genome from each subset for Resistance Gene Identifier analysis. What is the predicted susceptibility to trimethoprim or fluoroquinolones? Could you use either drug for treatment of these sub-clades?**

**Question #10 (2 points). For the single patient that is abnormally resistant to antibiotics, does the AMR++ analysis concur that resistance to drugs beyond trimethoprim or fluoroquinolones exists in this microbiome? Which additional drug classes may not work against this microbiome?**

**Question #11 (3 points). Clinical treatment of this patient illustrated failure of rifampin. Using AMR++ and the CARD website, what AMR genes are possibly causing this resistance and what is the mechanism? Can you make a prediction of which pathogen beyond *Salmonella* could infecting this patient? What other disease might they be suffering from?**

**Question #12 (2 points). Looking at the rarefaction curves, do you think this microbiome has been sequenced enough to get an accurate assessment of its capacity for antimicrobial resistance?**
