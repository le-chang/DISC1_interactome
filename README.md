## Transcriptional regulation of the DISC1 interactome 
---
This repository includes the files for node perturbation and attractor analysis used for analysing the transcriptional regulation of the DISC1 interactome mediating neuronal migration. The code for node perturbation analysis was adapted from [BooleanNet](https://github.com/ialbert/booleannet) and attractor analysis from [BoolNet](https://cran.r-project.org/web/packages/BoolNet/index.html) by Priyadarshini Thirunavukkarasu and Pravesh Parekh at the [Multimodal Brain Image Analysis Laboratory (MBIAL)](https://mbial.weebly.com/), supervised by Dr. John P. John in collaboration with Dr. Akira Sawa and Dr. Koko Ishizuka from Johns Hopkins University, School of Medicine, Baltimore. 

### Software
---
Attractor analysis was performed using R 3.4.1 [BoolNet 2.1.3](https://cran.r-project.org/web/packages/BoolNet/index.html) package. 

Node perturbation analysis was performed using Python 2.7.11 [BooleanNet 1.2.7](https://github.com/ialbert/booleannet) package.

The code used for node perturbation analysis is an edited version of an [example](https://github.com/ialbert/booleannet/tree/master/examples/projects/LGL) from [BooleanNet](https://github.com/ialbert/booleannet)

The supplementary figures S03-S34 were generated using [matplotlib 1.5.1](https://matplotlib.org/1.5.1/contents.html)

### Data organization
---
The files are organized into the following structure:


![DataOrganization](https://github.com/mbialnimhans/DISC1_interactome/raw/master/DISC1_interactome_DataOrganization.png) 

There are two types of analyses: **node perturbation** and **attractor analysis**. For each analysis, source code is present in the respective folder. *FM* refers to *Functional Module* while *sim* refers to *simulation*. The *\*_plot.py* files were used for generating supplementary figures S03-S34; *create_barh_graphs.m* file was used for creating supplementary figures S35-S42. 

* **Simulation 1** refers to TF activating gene and miRNA expression


* **Simulation 2** refers to TF inhibiting gene and miRNA expression


* **Simulation 3** refers to TF activating gene and inhibiting miRNA expression


* **Simulation 4** refers to TF inhibiting gene and activating miRNA expression



### Citation
---
This work is under review. During the review period, if you use any of this work, please contact the authors for citation details.

**Title:** A novel in silico approach for discovery of microRNA-TF regulation of DISC1 interactome mediating neuronal migration

**Authors:** John P. John<sup>1,2</sup>, Priyadarshini Thirunavukkarasu<sup>1,2</sup>, Koko Ishizuka<sup>3</sup>, Pravesh Parekh<sup>1,2</sup>, and Akira Sawa<sup>4</sup>

**Affiliations:** <sup>1</sup>Multimodal Brain Image Analysis Laboratory (MBIAL); <sup>2</sup>Department of Psychiatry, National Institute of Mental Health and Neurosciences (NIMHANS), Bangalore 560029, India


<sup>3</sup>Department of Psychiatry and Behavioral Sciences, Johns Hopkins University, School of Medicine, Baltimore, MD 21287, USA.


<sup>4</sup>Departments of Psychiatry, Mental Health, Neuroscience, and Biomedical Engineering, Johns Hopkins University, School of Medicine, Bloomberg School of Public Health, Baltimore, MD 21287, USA.


### Correspondence
---
Dr. John P. John (jpj@nimhans.ac.in, jpjnimhans@gmail.com)


*For code related queries, please contact:*


Priyadarshini Thirunavukkarasu: galaxie2485@yahoo.co.in


Pravesh Parekh: praveshparekh@gmail.com
