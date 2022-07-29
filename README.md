# Improving EvoSuite with GI
##### An artefact for the SSBSE challenge track.

We provide supplementary material an instructions on how to reproduce our experiments.

## Patches

The best patches generated in our experiments can be found in the Patches directory.

## Pareto Fronts

Graphs displaying the pareto fronts found accross our experiments are in the Fronts directory.


## Reproduction Instructions

To reproduce our experiments, you should:

-Ensure you have Java 8 and maven installed and configured.

-Download EvoSuite and Ensure it builds.

-Run the gin.main.util.NSGAII class with the profilerMethods.csv file, point gin to evosuites location, and specify the other arguments appropriately for your system.