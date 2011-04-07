Banner File Import Batch Files
==============================

A collection of batch files to automate processing files prior to import into Banner.


Processing ISIRS before Import
------------------------------

These batch files will move and combine standard daily and pushed ISIRs to speed the import process.

### 1112MoveISIRs.bat ###

Moves ISIRs from the initial import directory, to another directory. (N:\DATA\1112-ISIRS by default)

### 1112ISIRCombine.bat ###

Accomplishes two purposes:

1. Combine ISIRs into one file: 1112esar.tap
2. Move ISIR files into backup subdirectories.

### 1112MoveESAR.bat ###

Move the 1112esar.tap output file to the Banner server. (Mapped to Z:\ by default)

Processing Corrections before Import
------------------------------------

Very similar to the above batch files, but setup for processing correction ISIRs.

### 1112MoveCORRs.bat ###

Moves Corrections from the initial import directory, to another directory. (N:\DATA\1112-ISIRS by default)

### 1112CORRCombine.bat ###

Accomplishes the same two purposes as 1112ISIRCombine.bat

### 1112MoveESAR.bat ###

Same file as above.

Processing Direct Loan Files
----------------------------

These batch files will move, archive and rename Direct Loan files.

### 1112MoveDirectLoans.bat ###

Move all Direct Loan related files from the initial directory to another directory. (N:\DATA\1112-COD by default)

### 1112MoveCRRC.bat ###

If crrc12op.dat exists, copy it to a dated archive folder and then move it to the Banner server. (Mapped to Z:\ by default) If crrc12op.dat does not exist, find the crrc12op file with the lowest extension, rename it crrc12op.dat, copy it to a dated archive folder, and then move it to the Banner server. (Mapped to Z:\ by default) Will display a message when there are no more files to move.

### 1112MoveCRDL.bat ###

Same as 1112MoveCRRC.bat, except that it processes crdl12op files.

### 1112MoveCRBN.bat ###

Same as 1112MoveCRRC.bat, except that it processes crbn12op files.

### 1112MoveCREC.bat ###

Same as 1112MoveCRRC.bat, except that it processes crec12op files.

### 1112MoveCRPN.bat ###

Same as 1112MoveCRRC.bat, except that it processes crpn12op files.

### 1112MoveCRPS.bat ###

Same as 1112MoveCRRC.bat, except that it processes crps12op files.

### 1112MoveCRSP.bat ###

Same as 1112MoveCRRC.bat, except that it processes crsp12op files.

### 1112MoveDSDF.bat ###

Same as 1112MoveCRRC.bat, except that it processes dsdf12op files.

### 1112MoveDSLF.bat ###

Same as 1112MoveCRRC.bat, except that it processes dslf12op files.

Processing Grant (Pell/ACG/Smart) Files
---------------------------------------

These batch files will move, archive and rename Pell Grant files.

### 1112MoveGrants.bat ###

Move all Pell Grant related files from the initial directory to another directory. (N:\DATA\1112-COD by default)

### 1112MoveCRAA.bat ###

If craa12op.dat exists, copy it to a dated archive folder and then move it to the Banner server. (Mapped to Z:\ by default) If craa12op.dat does not exist, find the craa12op file with the lowest extension, rename it craa12op.dat, copy it to a dated archive folder, and then move it to the Banner server. (Mapped to Z:\ by default) Will display a message when there are no more files to move.

Processing Teach Files
----------------------

These batch files will move, archive and rename Teach Grant files.

### 1112MoveTeach.bat ###

Move all Teach Grant related files from the initial directory to another directory. (N:\DATA\1112-COD by default)

### 1112MoveCRTH.bat ###

If crth12op.dat exists, copy it to a dated archive folder and then move it to the Banner server. (Mapped to Z:\ by default) If crth12op.dat does not exist, find the crth12op file with the lowest extension, rename it crth12op.dat, copy it to a dated archive folder, and then move it to the Banner server. (Mapped to Z:\ by default) Will display a message when there are no more files to move.

### 1112MoveCRAT.bat ###

Same as 1112MoveCRRC.bat, except that it processes crat12op files.

### 1112MoveCRAC.bat ###

Same as 1112MoveCRRC.bat, except that it processes crac12op files.