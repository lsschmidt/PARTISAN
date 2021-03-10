# PARTISAN

Parameterizing volcanic rock fragments after Dellino and La Volpe (1996); Durig et al. (2012); Cioni et al. (2014); Leibrandt and Le Pennec (2015); Liu et al. (2015); and Schmith et al. (2017).

Copyright (c) Dürig et al. 2018, PARTIcle Shape ANalyzer PARTISAN - an open source tool for multi-standard two-dimensional particle morphometry analysis, Geophys. An., <a href="https://doi.org/10.4401/ag-7865" target="_top">doi:10.4401/ag-7865</a>

Authors: T. Dürig and M. Hamish Bowman

This program is free software licensed under the GPL (>=v3). Read the LICENSE file that comes with this software for details.


## HOW TO RUN PARTISAN


## I. Installation

PARTISAN runs with the standard version of MATLAB, and requires the MATLAB Image Processing toolbox. To install PARTISAN, simply extract the file partisan.zip provided in Supplement S1 into a folder of your choice.



## II. Instruction to run PARTISAN

1. Assign a working folder for the program. This can be done in the MATLAB graphical user interface (GUI) by right-clicking on the respective directory in the "Current folder" pane and selecting "Add path > Selected folders" or using the "addpath()" command. 

2. Specify the type of images to be analyzed. This is done by adjusting line 58 in the code of partisan.m. 

img_files = dir('*.tif');      %%%%%%%%%%%  <-- adjust as needed  %%%%%%%%%%%%

For example, if it is planned to batch analyze a series of PNG images, the operator simply has to assign '*.png', meaning the line would read:

img_files = dir('*.png');      %%%%%%%%%%%  <-- adjust as needed  %%%%%%%%%%%%


3. To enable or disable the generation of figure windows, set the  "do_plots" directive to line 53 in Partisan.m either "true" or "false".


For example, if you want to activate this functionality, line 53 reads:

do_plots = true;


Note that as a result, for each image analyzed, a figure window is opened. It is recommended to deactivate this functionality in case you do run a batch process over a large number of images.
In this case change line 53 as follows:

do_plots = false;
 

4. PARTISAN may be started by simply typing "Partisan" on the MATLAB command line. (Or by clicking on the "Run" button in the MATLAB GUI).


## III OUTPUT
As output file "particle_shapes.csv" is generated.
Furthermore figure windows are opened for each analyzed image, if the "do_plots" directive is set to "true".


## IV EXAMPLES
Two examples of PARTISAN input files for testing are provided in the "Examples" folder


## V. Additional options (for advanced MATLAB users):

To allow for batch processing we have deliberately avoided file selection dialogs which would require interactive user input. To aid in batch processing, the Partisan.m program itself may be embedded within another MATLAB wrapper script  that would automatically recurse into subfolders as needed.
A user with multiple directories of images to be processed can take advantage of a multi-core processor by launching multiple instances of MATLAB, changing into the respective image directories, and launching Partisan.m in each of them.

## License details
This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.

Parts of PARTISAN are not copyright by the PARTISAN development team. The original authors hold the copyrights and you have to abide to their licensing terms where noted. See the headers of the respective .m scripts for details.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License (GPL) for more details.

