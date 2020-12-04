# SEP V001: Bounding box, interior, backbone alignment, and relative scale

| SEP | |
| --- | --- |
| **Title** | Bounding box, interior, backbone alignment |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Accepted |
| **Created** | 01-Jul-2017 |
| **Last modified** | 03-Sep-2017 |
| **Issue**         | [#4](https://github.com/SynBioDex/SBOL-visual/issues/4) |


## Abstract

Glyphs need some additional information about how they are to be used, as failing to specify this has caused confusion. In particular:

* What their recommended relative scale is.
* Whether they "tightly" fill their bounding box or whether there are expected to be gaps at the edges
* Which, if any portions, are the "interior" of the glyph, to be affected by fill choices
* How the glyph is recommended to be aligned with the nucleic acid backbone.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

We've run into problems with ambiguity in some glyphs, in which people are confused about how to use a glyph in several areas. This aims to add explicit guidance on how to resolve these issues to the specification of each glyph.

## 2. Specification <a name="specification"></a>

### 2.1 Relative scale

Glyphs are RECOMMENDED to use the same relative scale to one another as found in the specification.

This just makes formal something that has been informally interpreted in this way already. All of the original SBOL Visual 1.0 glyphs were specified on a 0.5 x 0.5 inch template, so this should probably be the base for future glyph design as well.

### 2.2 Bounding Box

Every glyph specification MUST include a grey rectangular bounding box. Glyph interactions with one another and with the nucleic acid backbone are defined in terms of the bounding box, not the lines of the glyph.

This allows "gaps" at the edge of a glyph to be part of its expected specification.
Most significantly, a glyph can thus "hover" over the nucleic acid backbone, like primer binding sites generally do.

### 2.3 Interior

When a glyph has an intended interior (i.e., spaces within the boundary that may be filled with color or pattern), the interior MUST be specified as a grey filled area.

This avoids ambiguity in which spaces are intended to be "inside" versus which may simply be closed lines.

### 2.4 Recommended Backbone alignment

Every glyph for representing a Component MUST have exactly one grey horizontal line indicating the RECOMMENDED vertical positioning of the glyph on a nucleic acid backbone. 

Note that it is only recommended, and thus people can continue using alternate placements if they have good reason for doing so. Additional recommendations for best practices in alignment beyond this may be added to glyphs if desired as well.

## 3. Examples <a name='example'></a>

CDS glyph, with interior marked and a possible recommended vertical alignment of the backbone to the bottom of the glyph:
![image](https://user-images.githubusercontent.com/10675899/27767070-cccbd9ee-5e9d-11e7-9d87-9b4f050a5dbe.png)

Insulator with one possible interpretation of the interior marked:
![image](https://user-images.githubusercontent.com/10675899/27766997-689f0a98-5e9a-11e7-977a-d3aba2359f56.png)

Primer binding site, "hovering" over the nucleic acid backbone:
![image](https://user-images.githubusercontent.com/10675899/27767075-1c929aa8-5e9e-11e7-9213-45f70eb2da20.png)

## 4. Backwards Compatibility <a name='compatibility'></a>

For most glyphs, the bounding box, interior and alignment are obvious. 
For some, however, this is not the case, and these will need to be voted on to ensure consensus.

## 5. Discussion <a name='discussion'></a>

## Copyright <a name='copyright'></a>

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
  <span property="dct:title">SEP V001</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>