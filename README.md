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