## Lab # 5 - Linux and Sequencing Informatics

## Table of Contents
1. [Introduction](#intro)
2. [The Terminal Client and the Remote Server](#terminal)
3. [Login & Home Directory](#login)
4. [Basic Linux](#basic)
5. [File Manipulation](#files)
6. [Process Management](#processes)
7. [Introductory Sequence Informatics](#seq)

<a name="intro"></a>
## Introduction

The goal of this lab is to introduce the Linux operating system and the *command line*, in the context of file manipulation and Sanger DNA sequencing informatics.

**Lectures** - [Lecture 6](https://github.com/agmcarthur/Biochem-3BP3/blob/master/Lectures/Lecture%205%20-%20Genome%20Assembly.pptx) DNA Sequencing & Genome Assembly [video -x minutes]()

**Flash Updates**
* *Sanger Sequencing* 
* *FASTA* 
* *Linux* 

**Demo Videos**
* [Using Microsoft Remote Desktop](https://mcmasteru365-my.sharepoint.com/:v:/g/personal/mcarthua_mcmaster_ca/EW0MD7r2VKNLiF9NcTSWalIBjrQKxeVJVoo6DCF06gFWUQ) ~2 minutes
* [Linux Lab Walkthrough]() ~x minutes

**Computer Resources**
* This lab will use McMaster's virtual Windows servers, so you need to install and set-up [Microsoft Remote Desktop](https://uts.mcmaster.ca/services/teaching-and-learning/computer-labs/#tab-content-how-to-connect) on your personal computer
* See the demo video on how to login using Microsoft Remote Desktop and your MacID. 
* All files and work on the virtual servers will be lost when you log out. Be sure to save your work elsewhere (e.g., email yourself a copy)

**Grading**
* This is a participation lab, not graded.
* An answer key will be provided on A2L after the deadline.

> Instructor: backup files and scripts (with permissions set) can be found in files.tar.gz

<a name="terminal"></a>
## The Terminal Client and the Remote Server

> Flash Update - Linux 

Today’s lab will be performed almost exclusively at the command line and is meant to be an introduction to command line thinking. Your instructor will introduce the terminal client on the class computers and you will use it to connect to a Linux server in the McArthur Laboratory (called *uppsala.mcmaster.ca*). Please note, often Windows terminal clients may not allow cut-and-paste of text. Your credentials for logging in to *uppsala* are available in the A2L WORD file.

**NOTE 1: Case matters for linux computers. Unless otherwise indicated, use lowercase.**

**NOTE 2: If you are familiar with the command line and have client software on your computer (e.g. the Mac *Terminal* program), you may alternatively use your own client. This will require the McMaster VPN to access *uppsala.mcmaster.ca*.**

<a name="login"></a>
## Login, Logout & Home Directory

To login into the course server, we are going to use secure shell (ssh), which is an encrypted connection between machines:

```bash
ssh -l biochem3bp3 uppsala.mcmaster.ca
```

> Note: uppsala.mcmaster.ca is behind the McMaster firewall and requires VPN to connect from off campus or from the MacSecure wireless network , https://uts.mcmaster.ca/services/computers-printers-and-software/virtual-private-networking/

To logout of the course server:

```bash
exit
```

It is always good practice to *exit* an ssh session because it ensures that all running processes associated to the ssh session are closed/ended.

> Linux tip: use of the up arrow on your keyboard to bring back the previous command. Try this now to login to uppsala again.

When you first login, you will see the welcome screen, which varies for each computer. Each account in LINUX has a home directory and since we are all sharing the same account, we all have the same home directory. In linux, this home directory is described as:

> /home/biochem3bp3

LINUX has a directory hierarchy designated by the use of the slash (/) symbol.  The directory above is given as an absolute path (the exact location in the directory hierarchy).  If you ever need to confirm your exact location in the directory hierarchy, use:

```bash
pwd
```

If you ever want to quickly get back to your home directory, use:

```bash
cd ~
```

The tilde is a LINUX symbol meaning *my home directory*.  Thus, the following two commands would both move you to the *temp* directory (one has already been created for this demo):

```bash
cd /home/biochem3bp3/temp
cd ~/temp
```

Note that the command line prompt shows your current location relative to your home directory, e.g. *biochem3bp3@uppsala:~/temp$*

<a name="basic"></a>
## Basic Linux

Ok, let’s start the demo.  Change to your home directory and list the contents:

```bash
cd ~
ls
```

The list command (*ls*) by default just gives a list of file names. For details, you want to add flags:

```bash
ls -la
```

Now you get detailed information for each file, plus see all the normally hidden system files.  To learn about flags for any program, use the *man* command.  To learn about *ls*, use (try space and b to move about, and q to exit):

```bash
man ls
```
 
Flags can be used in an order, thus these two commands are the same:

```bash
ls -la
ls -al
```

Since we are all sharing the same account on the same machine (which is not normal practice!), we are each first going to learn to make a new working directory and then move into it. In the example below, replace yourname with an actual name with no spaces (e.g. agmcarthur):

```bash
mkdir yourname
```

Let’s see the results:

```bash
ls
```

Ok, move into the *yourname* directory and confirm your location in the directory structure:

```bash
cd yourname
pwd
```

Here are the three ways you could return to your home directory. Try moving in and out of *yourname* using them and *cd yourname*:

```bash
cd ~
cd yourname
cd ..
cd yourname
cd /home/biochem3bp3
```

The first is your shortcut to your home directory. The second example uses relative paths as *..* means up one directory. The third example uses absolute paths.

<a name="files"></a>
## File Manipulation

Now we are going to work with some data, using software written by Dr. McArthur, but first everyone should move into their own personal directory:

```bash
cd /home/biochem3bp3/yourname
pwd
```

Are you in your own directory? If not, ask for help. 

> Flash Update - FASTA 

For a moment, open your web browser and look up accession LVLB01000014 in GenBank (http://www.ncbi.nlm.nih.gov). Now lets try the same thing at the command line using a Perl script written by Dr. McArthur:

```bash
gb2fasta LVLB01000014
```

Unfortunately, the output scrolled down the screen too fast, so lets redirect the output to file. The redirect *>* will take the screen output of any command and save it as a file:

```bash
gb2fasta LVLB01000014 > test.fa
ls
```

Did you see the new file in your directory? Let’s look at the contents:

```bash
cat test.fa
```

Blurred by didn’t it? *cat* stands for concatenate and rapidly takes you to the end of a file. Your other option is to use the *more* command:

```bash
more test.fa
```

Now the screen pauses. Here are the controls for *more*:

> enter (down one line)

> space (down a page)

> b (back a page)

> / (search for text)

> q (quit)

While using *more*, try to search for a start codon when using more by entering:

> /ATG

The *more* command will search for that string in the text and go straight to it, but it can be a little confusing because it does not highlight exactly where that text is. Some bioinformaticians may use the alternate command *less*. It is almost identical to *more*, but has more options. Thus, less is more and more is less. Welcome to the painful humour of linux users.

```bash
less test.fa
```

Try again now to search for the start codon using the same keys as above. As you can see, the *less* command will highlight each area that there is a possible start codon (except where they wrap around the end of a line).

Now make a new directory called *mydata* to store *test.fa* in:

```bash
mkdir mydata
ls
```

> Linux tip: if you're tired of typing 'test.fa', we've got a solution! After you type a command (e.g., *cp*) type out the first (few) letters of an existing file/directory name, then click the tab button on your keyboard to fill out the entire file/directory name for you! Try it in this next step!

You can place a copy of *test.fa* in that directory:

```bash
cp test.fa mydata/test.fa
```

Use *ls* to see both copies:

```bash
ls
ls mydata
```
 
Note that all of the following copy commands would have done the same thing:

```bash
cp test.fa mydata/test.fa
cp test.fa mydata/.
cp test.fa ./mydata/.
cp test.fa /home/biochem3bp3/yourname/mydata/.
```

A single dot means *same* or *current*, so the second example means to copy using the same name. The third example explicitly tells linux that the directory *mydata* is in my current location and then to copy using the same name.  

*./* is an example of relative paths and is usually implied in most commands (such as the first two examples), but sometimes you need to explicitly use it. The last example performs the command using the absolute path.

Note that you could have copied and renamed at the same time. Try the example below:

```bash
cp test.fa mydata/baddata.fa
ls mydata
```

Also, you could have just moved the *test.fa* file instead of copying it:

```bash
mv test.fa mydata/baddata2.fa
ls
ls mydata
```

Ok, move into the *mydata* directory and confirm your location in the directory structure:

```bash
cd mydata
pwd
```

Now for the linux concept of *pipes*. Try the following:

```bash
cat baddata2.fa | more
```

The vertical line is called a pipe. The results of *cat* are piped to *more*. *cat* attempts to spit out the entire contents of *baddata2.fa* to the screen, but *more* pauses it. Using pipes (you can use many on one line), you can combine linux programs to do very tricky things.  

Ok, let’s clean things up by moving to our working directory yourname and removing the files we’ve created:

```bash
cd ~/yourname
ls
```

But how do we remove a folder? The command *apropos* will help you find commands (although a Google search is much easier). So, if you want to know about removing, you would use the command:

```bash
apropos remove
```

Blurred by again didn’t it?  We should have used a pipe:

```bash
apropos remove | more
```

Inside the apropos output, you should have seen:

> rm (1) - remove files or directories

> rmdir (1) - remove empty directories

Try to remove the mydata directory:

```bash
rm mydata
```

It didn’t work, did it? Use the man page to help figure out a command to remove this directory:

```bash
man rm
```

**Question #1. What command did you use to remove this non-empty directory?**

<a name="processes"></a>
## Process Management

You have now learned the basics of file manipulation. You can use your computer to do many things at once, but sometimes it is hard to keep track of what your are doing or what is dominating your computer’s processor. For this we have the *ps* and *top* commands. First, see what is running in our shared account and then what is running for the entire computer:

```bash
ps -a
ps -ef | more
```

The *ps* give the process ID number for each job at the left, which you can use with the *kill* command to stop runaway processes.

We can also get a global view of processes again but this time using *htop*:

```bash
htop
```

The server you are using has 8 processors (listed at the top) and 128 GB memory. Unless the server is busy today, most of the processors will be idle and most of the memory will not be used. Exit the *htop* program by entering *q*.

In LINUX, you can run as many jobs as you like simultaneously, but at some point they will begin to slow each other down as they are forced to shared processors (ie. none will run at 100% speed). Similarly, when users and jobs can share memory but when they run out, they start to use swap space.

**Question #2. What is swap space?**

<a name="seq"></a>
## Introductory Sequence Informatics

> Flash Update - Sanger Sequencing 

Now we are going to learn some custom software developed by Dr. McArthur over the years for some simple Sanger sequence manipulation. First, move into your working directory and grab some data:

```bash
cd ~/yourname
gb2fasta LVLB01000014 > plasmodium.fa
ls
```

**Question #3. How many FASTA sequences are in the plasmodium.fa file?**

```bash
facount plasmodium.fa
```
**Question #4. How many nucleotides are in the Plasmodium sequence and what is the GC percentage content?**

```bash
faletters plasmodium.fa
gccontent plasmodium.fa
```

## Assignment #1

Here is the complete list of custom commands provided by Dr. McArthur:

> faletters

> facount

> gccontent

> summarizefasta

> orf2aa

> gb2genbank

> gb2fasta

If you enter any of them without arguments, you will get some help text. **They are not compatible with using pipes**. Using these commands and the commands you learned in the demo above, answer the following questions using the LINUX command line:

The following file on the server is the draft genome sequence of the diplomonad parasite *Giardia intestinalis* in FASTA format:

> ~/data/giardiacontigs.fa

You are going to analyze this file. You may read it or copy it, but please do not move or rename it.

A contig is a consensus sequence of part of the genome produced by genome assembly algorithms (next week’s lab). Assemblies have gaps, some genome assemblies end up being a collection of contigs. Each contig from the genome assembly is a single FASTA entry in the file. 

**How many contigs has the *Giardia* genome been assembled into? What command line(s) did you use?**

**How many total base pairs is the draft *Giardia* genome? What command line(s) did you use?**

**What is the %GC content of the Giardia genome? What command line(s) did you use?**

**What is the size of the largest contig in the *Giardia* genome? What command line(s) did you use?**

## Assignment #2

Starting with GenBank accession DQ667685, answer the following questions.

**What command line(s) would you use to get a copy of this sequence on the server?**

**What command line(s) would you use to translate this sequence into amino acids and then count the amino acids?**
