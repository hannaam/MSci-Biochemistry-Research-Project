# MSci-Biochemistry-Research-Project

All of the files in this repository are for the purpose of complementing the research paper produced for coursework. These files can also be used as a tool for further work in the topic of coarse-grained molecular dynamic simulations for predicting helix-helix interactions. All of this work builds upon and complements previous work:

*Altwaijry, N. A., Baron, M., Wright, D. W., Coveney, P. V., and Townsend-Nicholson, A. (2017) An Ensemble-Based Protocol for the Computational Prediction of Helix-Helix Interactions in G Protein-Coupled Receptors using Coarse-Grained Molecular Dynamics. Journal of Chemical Theory and Computation. 13, 2254–2270*

This repository contains:
* Files required to run coarse-grained molecular dynamic simulations presented in the coursework with example commands and files in B1AR_TM1TM1_MD_simulation. 
* Files in the main repostiory are parameter files, topology files force field and scripts required for any CG-MD simulations.
* Set-up of a file to be transferred to HPC for the last step of the MD simulation to run an ensemble 
* Code to calculate the 3D distance between atom residues for a PDB file and the resulting distance heatmap
* Code for ensemble distance analysis for atomistic and coarse-grained files from molecular dynamic simulations

The text below gives more detailed instructions for what is to be found in each folder. 

**B1AR_TM1TM1_MD_simulation**
- All of the files contained within this folder are needed in order to carry out the simulation from the beginning input of two helix structures (TM1_1.gro and TM1_2.gro). There is a file within the folder named ‘COMMANDS’ which instruct the user what commands are necessary and were carried out in this work. Example output files from the commands are included for reference. 
- These files are for running with an elastic network but the alternative command for no constraints is listed in the COMMANDS file. 

The following outputs from the simulation run are required to be transferred onto a HPC to run an ensemble simulation.
- Protein_A.itp
- TM1TM1_npt.cpt
- TM1TM1_npt.gro
- system.top 
- index.dx

- These files are already present in B1AR_TM1TM1_ensemble_folder_for_HPC for completion. 

**B1AR_TM1TM1_ensemble_folder_for_HPC**
- This folder has then got to be moved onto a HPC. The submit50 script was then executed on a working node to produce 50 scripts for the ensemble. These 50 scripts were then sent as jobs to run. 
- A Common folder containts all of the files that are needed for each simulation.
- 50 Rep folders are created for the outputs of each different job.

ANALYSIS:
- In this repository, the A2A_TM5TM5 martini and elastic network data is used as an example. 

**A2A_TM5TM5_atomistic_analysis**
- All of the output files were then backmapped into atomistic representation for downstream analysis. These were then put in one folder. 
- This folder containts code to calculate the number of dimerized replicas in an ensemble, as well as further analysis code and code to calculate the mean distances in an ensemble. 

**A2A_TM5TM5_CG_analysis**
- This contains all of the output coarse-grained files.
- The code provides tools for analysis of distances between coarse-grained residues.

**CXCR4_crystal_structure_distance_analysis**
- An example notebook showing code to analyse the distance between residues in a crystal structure for comparison to simulations. 
