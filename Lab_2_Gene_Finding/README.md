## Lab # 2 - Protein Annotation & Gene Finding

## Table of Contents
1. [Introduction](#intro)
2. [Saccoglossus kowalevskii & Splicing](#acorn)
3. [Finding Putative P450s via BLAST](#blast)
4. [Predicting a Single P450 Gene](#p450)
5. [Annotating a Single P450 Gene](#annotate)

<a name="intro"></a>
## Introduction

The goal of this lab is to annotate the P450 proteins in a recently sequenced invertebrate genome, using BLAST, Pfam, and other tools plus a number of available databases. This is a problem-based learning lab and you will work both collectively and individually. The results of this week’s lab will be used in next week’s evolution lab.

**Lectures** - [Sequence Similarity & Searching](https://github.com/agmcarthur/Biochem-3BP3/blob/master/Lectures/Lecture%202%20-%20Sequence%20Searching.pptx)

**Flash Updates**
* *BLAST*. Provide a review of the purpose of BLAST algorithms for database searching and how to perform them online.  Specifically, outline the difference between BLASTN, BLASTP, BLASTX, TBLASTN, and TBLASTX. See Lobo 2008. Basic Local Alignment Search Tool (BLAST). [Nature Education 1: 215](http://www.nature.com/scitable/topicpage/basic-local-alignment-search-tool-blast-29096)
* *Pfam*. Provide a review of the Pfam resource, with an emphasis on the variety of tools and data it offers. See [Nucleic Acids Res. 2019 Jan 8;47(D1):D427-D432](https://www.ncbi.nlm.nih.gov/pubmed/?term=30357350) and [Nucleic Acids Res. 2018 Jul 2;46(W1):W200-W204](https://www.ncbi.nlm.nih.gov/pubmed/?term=29905871).
* *PROSITE*. Provide a review of the PROSITE resource, with an emphasis on the variety of tools and data it offers. See [Nucleic Acids Res. 2013 41(Database issue):D344-7](https://www.ncbi.nlm.nih.gov/pubmed/?term=23161676).

**Background Reading** (optional)
* Altschul et al. 1990. Basic local alignment search tool. [J Mol Biol. 215: 403-10](https://www.ncbi.nlm.nih.gov/pubmed/?term=2231712)
* Eddy. 2004. What is a hidden Markov model? [Nat Biotechnol. 22:1315-6](https://www.ncbi.nlm.nih.gov/pubmed/?term=15470472)
* Haft 2015. Using comparative genomics to drive new discoveries in microbiology. [Curr Opin Microbiol. 23: 189-96](https://www.ncbi.nlm.nih.gov/pubmed/?term=25617609)

**Links**
* NCBI & GenBank, http://www.ncbi.nlm.nih.gov
* Ensembl, http://www.ensembl.org
* *Saccoglossus kowalevskii* genome, https://metazome.jgi.doe.gov
* Translate tool, http://web.expasy.org/translate/
* Pfam, http://pfam.xfam.org
* Prosite, http://prosite.expasy.org

**The Lab**
* The computers in the laboratory are terminals – clients within a large maintained computer system. They have limited computational power – often we will be using them to access web-based tools or specialized servers with more computational resources.
* You log into the computers using your MacID. You will be automatically logged out after 10 minutes of mouse inactivity. Use **CAFFEINE** to override the automatic log out – **REMEMBER TO LOG OUT MANUALLY AT THE END OF THE LAB**.
* All files and work on the computers will be lost when you log out. Be sure to save your work elsewhere. 

**Grading**
* The WORD file for answers is available on A2L, be sure to submit your answers on A2L before the deadline
* An answer key will be provided on A2L after the deadline
* Each question worth 1 point = 12 points maximum

<a name="acorn"></a>
## *Saccoglossus kowalevskii*

![Acorn Worm. Source: Lowe Laboratory](http://lowe.stanford.edu/wp-content/uploads/2014/05/Saccoglossus-adult.jpg)

_Acorn Worm. Source: Lowe Laboratory_

Dr. Joanna Wilson (Biology) or Dr. McArthur will introduce *Saccoglossus kowalevskii* (acorn worm) and its importance for evolutionary biology, with a focus on the P450 enzymes in the defensome. Using query sequences from the zebrafish, fruit fly, *C. elegans*, and human genomes, it is your job to use the BLAST tools and genome browser at the *Saccoglossus kowalevskii* website to collectively find all the putative P450 genes in this genome. Once the class had developed a list of putative genes, each student will be assigned a gene to map out intron/exon boundaries and the predicted protein sequence. Remember what you have learned about splicing sites:

![mRNA Splicing. Source: Wikipedia](https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/RNA_splicing_reaction.svg/1280px-RNA_splicing_reaction.svg.png)

_mRNA Splicing. Source: Wikipedia_

![Introns and Exons. Source: Wikipedia](https://upload.wikimedia.org/wikipedia/commons/a/a8/Intron_miguelferig.jpg)

_Introns and Exons (py = pyrimidines, i.e. C or U). Source: Wikipedia_

<a name="blast"></a>
## Finding Putative P450s via BLAST

> Flash Update - BLAST

Using your query sequence (as protein!) in FASTA format, search the *Saccoglossus kowalevskii* genome sequence at the DOE website (the unmasked genome) for all the possible P450 genes. Remember, since you are submitting a protein query against a genome that contains both introns & exons, a single putative P450 gene will likely have multiple High-scoring Segment Pairs (HSPs). Also, since all P450s are related, your single query may detect more than one putative P450 gene. 

**Question #1. How many HSPs in your best BLAST hit?**

**Question #2. How many possible P450 genes did your search identify? What was your cut-off?**

Once you have generated a list of possible P450 genes in *Saccoglossus kowalevskii*, enter the number of HSPs and contig number of the top BLAST hit into the class spreadsheet so we can generate a master list from all queries.

**Question #3. What is the class’ prediction of the number of P450 genes in this genome based on the best BLAST hits?**

**Question #4. Did any of the genes predicted with your query overlap those found with other queries? Why?**

<a name="p450"></a>
## Predicting a Single P450 Gene

Now that the class has generated a master list of putative P450s, you will annotate your best BLAST hit. Using the *Saccoglossus kowalevskii* website’s BLAST and genome browser tools, work to define the complete gene and answer the questions below. Use the genome browser to extract the DNA sequence and the Translate tools (http://web.expasy.org/translate/) to define the complete protein sequence. Submitting your predicted protein sequences to BLAST against GenBank can help determine if you have possibly missed an exon or made an error on intron/exon boundaries.

**Hint**: In the JGI Browser, turn on the “Reference sequence” track. When you are zoomed in on a region you want to save, hit on that track’s widget and select “Save track data”. The "Gaps" track can also show where genome sequencing data does not exist, in which case you will only be able to determine a partial gene sequence.

**Question #5. List the query used to initially predict your gene (e.g. CYP4V7 in zebrafish, CYP6A2 in fruit fly).**

**Question #6. List your gene's co-ordinates within the genome assembly (possibly includes introns):**
* Contig: 
* Start codon: 
* End codon:
* Strand:

**Question #7. How many exons are in your P450 gene? List their co-ordinates.**

**Question #8. Do you think your gene model is correct or do you have concerns about your exon detection and intron/exon boundaries? Why?**

<a name="annotate"></a>
## Annotating a Single P450 Gene

> Flash Update - Pfam

> Flash Update - PROSITE

**Question #9. Paste in your gene’s predicted protein sequence. How many amino acids long is it? Is this length similar to P450 proteins in GenBank from other organisms?**

**Question #10. What Pfam domains are predicted for your protein sequence? What predictions can you make about the function of this protein?**

**Question #11. What PROSITE motifs are predicted for your protein sequence? What predictions can you make about the function of this protein?**

**Question #12. Given all your analysis results, including BLAST against GenBank, can you predict which P450 family or subfamily this protein belongs to (e.g. CYP2, CYP4, CYP19, etc.)? Remember:**
* CYPs > 40% identical aa in same family (numeric)
* CYPs > 55% identical aa in same subfamily (alpha)

This completes today’s laboratory. The protein you predicted today will be used in the next lab, which uses phylogenetics to further determine the accuracy of your prediction plus test your P450 family assignment.






