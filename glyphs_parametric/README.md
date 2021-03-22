# Parametric SVG Glyph Definitions for SBOL Visual

This repo is an initial experimental attempt to create a workflow for parametric glyphs in SVG.

It includes definitions of some glyphs, and several scripts that iterate over these files:

* `tabulate_params.py` constructs a CSV table summarising the default parameters defined for each.

* `convert.py` generated pdf/png/svg files 


## Parametric Glyph Format

The idea of [Parametric SVG](https://github.com/projectshaped/parametric-svg/tree/master/packages/element) is to supplement
existing attributes of SVG elements (e.g., `x`), which have specific numerical values, with new attributes that are in a different namespace (e.g., `parametric: x`) and have values that can be arithmetic expressions including parameters.
Tool that do not know about Paramateric SVG will ignore these additional attributes and render using the conventional SVG attributes.
However, specialised tools can allow a user to set parameters and update the conventional SVG attributes by evaluating the expression in their parametric equivalent.

SBOL Visual Glyphs are defined as Parametric SVG files, with some additional conventions.


### Properties on SVG

The SVG tag has two additional attributes:

* `glyphtype` (the name of the glyph)
* `soterms` (a comma-separated list of [Sequence Ontology](http://www.sequenceontology.org/) terms that apply to the glyph)


### Classes

Classes are applied to elements to indicate their role and allow their appearance to be easily controlled.

The `bounding-box` and `baseline` classes depict the elements described in [SEP V001](https://github.com/SynBioDex/SBOL-visual/blob/master/SEPs/SEP_V001.md);
they are not part of the glyph itself, but rather show how the glyph should be position.

The `filled-path` and `unfilled-path` class represent the interior and exterior of the glyph itself.
Glyphs with simple shapes might consist of a single element, with class `filled-path`.
The `unfilled-path` class is used to 


### Parameter names

Parameter names are standardised, so that glyphs can be manipulated in a predictable way.

The most important parameters are `height` and `width`, which set the *size of the bounding box* for the glyph (a few glyphs are defined to have a fixed aspect ratio, in which case the height is set based on the `width`, and the `height` is ignored).
For some glyphs, part of the bounding box will be below the nucleic acid backbone; coordinates are used so that the backbone has a `y` coordinate of `0`.

The script `tabulate_params.py` can be used to create a [summary table](./converted/summary.csv) of parameters and their default values.
