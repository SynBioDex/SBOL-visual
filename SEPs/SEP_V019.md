# SEP V019: Allow Complex to Include DNA Backbone

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org), John Sexton |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Draft |
| **Created** | 6-Oct-2019 |
| **Last modified** | 6-Oct-2019 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/74 |


## Abstract

A molecular species in contact with a DNA backbone is often used to show binding into a complex in a diagram.  This SEP proposes a modification to support such diagrams.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

A molecular species in contact with a DNA backbone is often used to show binding into a complex in a diagram, such as a protein binding with a promoter in order to activate or repress that promoter.

This practice can be made compatible with SBOL Visual by allowing the Complex glyph to include NA glyphs and changing the specification to no longer forbid contact of with NA diagrams.

## 2. Specification <a name="specification"></a>

### Specification Change

Section 6.3 (Molecular Species) will change item 1 from:

> 1. A molecular species glyph MUST NOT contact any nucleic acid backbone with any part of its bounding box.

to become:

> 1. A molecular species glyph MUST NOT contact any nucleic acid backbone with any part of its bounding box, unless the diagram is showing that the molecular species binds to the nucleic acid.
> 2. If binding is being shown, the molecular species glyph SHOULD contact an appropriate sequence feature glyph (e.g., for a binding site or restriction site) and not the backbone itself (see example in Appendix A.2 for glyph Complex).


### Change to Complex Glyph

The Complex glyph will have the following section added:

> This may also be applied to show complex formation (binding) of a molecule to a nucleic acid backbone by compositing the glyph for the molecule with appropriate portion of the diagram the nucleic acid backbone.  For example, a protein binding to the promoter of a functional unit:

> ![glyph example](https://github.com/SynBioDex/SBOL-visual/raw/092c5c/Glyphs/FunctionalComponents/complex/complex-pdna-specification.png)


## 3. Examples <a name='example'></a>

See above examples to be included.


## 4. Backwards Compatibility <a name='compatibility'></a>

This change is backward compatible, as all previous diagrams are still valid with the same meaning.


## 5. Discussion <a name='discussion'></a>

TBD

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
  <span property="dct:title">SEP V019</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
