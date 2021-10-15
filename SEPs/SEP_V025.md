# SEP V025: Parametric Definitions of SBOL Visual glyphs

| SEP | |
| --- | --- |
| **Title** | Parametric Definitions of SBOL Visual glyphs |
| **Authors** | James Scott Brown (james@jamesscottbrown.com) |
| **Editor** |  |
| **Type** | Specification |
| **SBOL Visual Version** |  |
| **Status** | Draft |
| **Created** | 14-Oct-2021 |
| **Last modified** | 14-Oct-2021 |
| **Issue** |  |


## Abstract

This SEP defines a format for definining the shape of SBOL Visual glyphs as Parametric SVG files, enabling them to directly used by automated tools.

## <a name="rationale"></a> 1. Rationale 

A number of tools have been created to draw SBOLv diagrams, and it is becoming challenge to keep the set of glyphs that they support up to date.

It is common to want to customize glyphs, such as by stretching the body (but not the head) of the arrow representing a CDS, or by using distinct fill colors to visually distinguish between different CDSs displayed in the same diagram. 
To handle this variability in geometry and basic aesthetics, many tools to use separate dedicated functions for the rendering of each glyph.

An alternative approach is to encode the glyph library in a machine-readable format that is flexible enough to capture all the information needed to tailor the rendering process through the introduction of glyph specific parameters. Parameters capture customizable features like color and line width, as well as allowable variations in glyph shape like width and height. Using this approach, the rendering code of a tool can remain constant even when new glyphs are created or existing glyphs are updated.

This SEP proposes a specific format for these parametric glyph definitions.

The motivation is described further in [paraSBOLv: a foundation for standard-compliant genetic design visualization tools](https://academic.oup.com/synbio/advance-article/doi/10.1093/synbio/ysab022/6347203).

## 2. Specification <a name="specification"></a>

### Appendix D: Specification for the SBOL Visual Glyph Library

The standard for the *SBOL Visual Language* describes the appearance of diagrams, but it is intentionally agnostic about *how* diagrams are drawn: users are free to use any tool, including tools that have no knowledge of the standard (such as a general-purpose graphics tool, or a physical whiteboard and marker).

However, to assist tool developers, the developers of the SBOL Visual standard have also created a *SBOL Visual Glyph Library* that contains a file describing the shape of each glyph in the machine-readable Parametric SVG format; tool developers are encouraged to make use of these files, but they are not required to do so.

To enable the use of the files in this library automated tools, they must have a consistent structure, which is defined by this appendix.

The files in this library are also used by the workflow automation scripts that generate the specification PDF and other artifacts (such as the zip files of glyph images).


#### The Parametric SVG format

Parametric SVG is an extension to SVG that allows the values of attributes to be specified as a formula or arithmetic expression that can include parameters, rather than as a specific numerical values to attributes (e.g., width = 10).

It does this by by defining a new namespace called parametric, and then adding extra attributes in this namespace (e.g., `parametric:d` is the parametric equivalent of the conventional `d` attribute). Tools which are unfamiliar with Parametric SVG will ignore these attributes and render the SVG using the non-parametric attributes.

Tools that understand Parametric SVG will process any attribute whose name begins with `parametric:` by evaluating the contents of curly brackets as a formula (substituting in the values of the parameters), and use result in place of the corresponding non-parametric attribute.

Default values of parameters are specified by the `parametric:defaults` attribtue on the top-level `svg` tag.

#### Representing SBOL Visual glyphs as Parametric SVGs

This should contain a single `<svg>` tag, which MUST have the following attributes:

* `xmlns="http://www.w3.org/2000/svg"`
* `xmlns:parametric="https://parametric-svg.github.io/v0.2"`
* `glyphtype`, containing the abbreviated name of the glpyh (e.g., `glyphtype="CDS"`)
* `SO`, containing a comma-separated list of Sequence Ontology terms that apply to the glyph (e.g., `terms="SO:0000316"`)
* `parametric:defaults`, containing a default value for each parameter used in the glyph definition

The `svg` element MUST contain the following elements:

* a `path` with class `bounding-box`, corresponding to the bounding-box defined in [SEP V001](https://github.com/SynBioDex/SBOL-visual/blob/master/SEPs/SEP_V001.md).
* a `path` with class `baseline`, corresponding to the recommended backbone alignment line defined in [SEP V001](https://github.com/SynBioDex/SBOL-visual/blob/master/SEPs/SEP_V001.md).
* one or more `path` elements wih class `filled-path`, representing parts of the glyph which should be filled with the  glyphs' fill color when drawn

The `svg` element MAY also contain zero or more paths wih class `unfilled-path`, representing holes in the glyph that should be filled with the diagrams's background color when drawn.

Within these paths, geometric variation can be achieved by including formulas (enclosed in curly brackets) within a `parametric:path` attribute.
This is a feature of the Parametric SVG format, rather than being defined by this specification.

The glyph SHOULD be parametrised such that:

* the `baseline` is positioned at `y=0`
* when the `scale` parameter is set to `1`, the glyph is appropriately sized relative to an Unspecified Molecular Species Glyph that is 32 pixels tall. Increasing the `scale` parameter changes the linear dimensions of the glyph proportionally.

Glyphs that do not have a fixed aspect ratio SHOULD also have an `aspectRatio` parameter that sets the ratio between the width and the height of the glyph; increasing `aspectRatio` MUST increase the width of the glyph without changing its height.
Glyphs that have a fixed aspect ratio SHOULD NOT have an `aspectRatio` parameter.

The geometry of some glyphs can change in a more complex way than simple geometric scaling; this is handled by adding additional parameters.
The names and meaning of any additional parameters used should be chosen so as to be as consistent as possible with existing parametric glyph definitions.
Sufficient parameters should be included to accomodate as wide a range of reasonable geometric variations as is posisble wihout introducing undue complexity into the definitions of paths.

Parameter names MUST be taken from the list of permitted parameter names; if a new parameter name is required for a new glyph, then the SEP proposing this glyph MUST also propose addition of this name to the permitted list.

The currently permitted additional parameter names are:

* `arrowbody_height`
* `arrowhead_width`

The default values specified for the `width` and `height` SHOULD be `48`. 
However, alternative values MAY be used if the glyph has an aspect ratio that differs significantly from a square, or if a glyph is intended to be drawn at a signficantly different size to other glyphs (e.g., the small molecule glyph).

For each parametric attribute (e.g., `parametric:svg`), the corresponding non-parametric attribute (e.g., `svg`) MUST be set to the values obtained by substituting the default parameter values into the value of the parametric attribute.


#### Automated verification steps

Before a new glyph is added to the library, an automated script will verify that:
* the required attributes on the `svg` tag are present
* parameters have default values assigned
* the required path elements are present
* only permitted parameter names are used
* the non-parametric values of attributes match the values obtained by substituting the default parameter values into the value of the corresponding parametric attribute

A script will also render images of the glyph using a range of parameter values, so that these can be visually checked.

## 3. Examples <a name='example'></a>

The CDS glyph can be represented as:


```xml
<svg xmlns="http://www.w3.org/2000/svg" xmlns:parametric="https://parametric-svg.github.io/v0.2" version="1.1" width="48" height="48" glyphtype="CDS" terms="SO:0000316" parametric:defaults="arrowbody_height=15;arrowhead_width=7;width=30;height=15">

<rect class="bounding-box" id="bounding-box" parametric:x="{0}" x="0" parametric:y="{-height/2}" y="14.5" parametric:width="{width}" width="34" parametric:height="{height}" height="21.0" style="fill:none;stroke:rgb(150,150,150);stroke-opacity:0.5;stroke-width:1pt;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:1.5,0.8" />

<path class="baseline" id="baseline" parametric:d="M{0},{0} L{width},{0}" d="M0,25 L34,25" parametric:y="{0}" style="fill:none;stroke:black;stroke-width:1pt" />

<path class="filled-path" id="cds" parametric:d="M{0},{0}
 L{0},{-arrowbody_height/2}
 L{width - arrowhead_width},{-arrowbody_height/2}
 L{width - arrowhead_width},{-height/2}
 L{width},{0}
  L{width - arrowhead_width},{height/2}
   L{width - arrowhead_width},{arrowbody_height/2}
   L{0},{arrowbody_height/2} Z" d="M2,25 L2,17.5 L26,17.5 L26,17.5 L32,25 L26,32.5 L26,32.5 L2,32.5 Z" style="fill:rgb(230,230,230);fill-rule:nonzero;stroke:black;stroke-width:1pt;stroke-linejoin:miter;stroke-linecap:butt" />

</svg>
```

## <a name='compatibility'></a> 4. Backwards Compatibility

This change is backwards compatabile: the required changes are the addition of a new Parametric SVG file for each glyph to the repository, and the addition of text describing this format to the specification. All previously permitted SBOLv diagrams remain permitted, and no diagrams are made permitted as a result of this change.

## <a name='discussion'></a> 5. Discussion

TBD

## <a name='copyright'></a> Copyright

<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <a rel="dct:publisher"
     href="sbolstandard.org">
    <span property="dct:title">SBOL developers</span></a>
  has waived all copyright and related or neighboring rights to
  <span property="dct:title">SEP V024</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
