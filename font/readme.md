How to install the font:
========================
## Linux(Ubuntu):
* Open font with Font Manager and install on System-level

## Microsoft Windows:
* Double-click on font file and install

## Apple/Mac:
* Unknown


How to use the font:
====================
* In text-processing program, insert "Special Character"
* Choose required symbols (see Examples.pdf or Examples.odt for ideas)
* Place and align according to demands
* If e.g., a closed circular multiline plasmidmap is required, close vertical gaps adjusting line spacing by
  * clicking on menu: "Format" / "Paragraph" and
  * select "Proportional" of ~"92%" at "Line Spacing"
* After export to PDF, document can be imported to e.g., Inkscape via Poppler/Cairo import and used as path element

Principles that were used in designing the font:
================================================
## Inkscape:
* Import the svg files from the SBOL Github Rep
* Scale them up to 4096px width
* Create a layer for each glyph in Inkscape via Menu:Extensions/Typography/Add Glyph Layer
* Add DNA baseline if required according to specification
* Ungroup if required
* Convert from strokes to paths
* Combine paths
* Center & Align
* Save all layers as one svg

## FontForge:
* Open/Import above svg through FontForge or manually (ctrl+c & ctrl+v)
* Setup font information
* Correct wrong direction
* Add missing extremas
* Correct non-integral coordinates
* Correct intersecting paths
* Duplicate points that count as intersections are very common.
* Generate Font

Principles that were used in testing the font:
==============================================
Font has been tested by recreating Examples.odt and Examples.pdf in LibreOffice Writer Version: 5.4.6.2:
* in Kubuntu 17.10 Artful Aardvark and 18.04 Bionic Beaver
* On menu click: "insert" / "special character"
* Choose up to 16 characters per insert (can be repeated)
* Place and align as desired
* If required, close vertical gaps adjusting line spacing by
  * clicking on menu: "Format" / "Paragraph" and
  * select "Proportional" of ~"92%" at "Line Spacing"
* Click "File" / "Save as" "Example.odt"
* Click "File" / "Export as PDF" "Example.pdf"

How to update the font when new symbols are added:
==================================================
* Prepare new symbol in e.g., Inkscape
* Open sfd file with e.g., FontForge
* Vacate dedicated unicode allocation by moving existing symbols up the table (ctrl+x & ctrl+v)
* Paste new symbol into dedicated, now vacated slot
* Perform validation as above (missing extrema, non-integral coordinates, intersections and wrong direction)
* If no errors are shown during validation, generate font

How to test that an update has been completed correctly:
========================================================
* Recreate Example.odt and Example.pdf now including the new symbol
