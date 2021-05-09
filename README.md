# SBOL Visual

This repository contains the reference implementation of SBOL Visual, including all glyphs.

## Repository Structure

SBOL Visual development follows the [GitFlow workflow](https://datasift.github.io/gitflow/IntroducingGitFlow.html).
Its branch structure is thus:

* The master branch of this repository should contain only releases and SEPs (see below).
* The develop branch is used for release staging, and should contain only material that is approved but not yet released.
* Proposals should be developed in "feature" branches, which are then merged into the develop branch after they are voted approved by the community.

## Glyph Specification

Within the "Glyphs" directory, each individual glyph set has a sub-directory under its name.  In that directory are:

- SVG outline files for the recommended glyph and any alternates.
 - Approved versions should have PDFs as well.  
 - Additional vector formats may be offered if desired. There should not be any raster formats like PNG or JPEG, however.
- SVG "specification" files for the recomended glyphs and any alternates, annotating bounding box, fill, and recommended backbone alignment.
- A markdown file that provides information about the glyph set:
 - Associated SO term(s).
 - Which glyph is recommended and which are alternates
 - An prose description of any intuition associated with each glyph's design.
- Optionally, any examples useful for making a glyph's usage clear.

Glyphs are specified relative to a standard canvas of size 0.5 x 0.5 inches, based on the SBOL Visual 1.0 "Promoter" and "CDS" symbols.

## Submitting changes to the specification

Any text for a non-trivial change should be approved by discussion as an Issue and/or SEP.

Proposed changes should be made in either a branch or a separate fork on GitHub.  To do this, follow standard git branching or forking procedure.  

Here is an example of git commands to achieve this:

    git clone https://github.com/SynBioDex/SBOL-visual.git
    git pull origin master # MAKE SURE NO ONE HAS MADE ANY MORE CHANGES
    git checkout -b <newBranch> # CREATE NEW BRANCH
    
    # MAKE YOUR EDITS
    
    git add <filesYouChanged>
    git commit
    git push origin <newBranch>

When you are ready for your changes to be reviewed for incorporation, create a pull request.
If you need help on pull requests see: https://help.github.com/articles/about-pull-requests/
