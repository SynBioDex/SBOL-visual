# SEP V016: Introns and Polypeptide Regions

| SEP | |
| --- | --- |
| **Title** | Introns and Polypeptide Regions |
| **Authors** | Jacob Beal (jakebeal@ieee.org), Marta Vázquez Vilar (marvazvi@ibmcp.upv.es) |
| **Editor** |  | Hasan Baig
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Accepted (21-Sept-2019) |
| **Created** | 13-Apr-2019 |
| **Last modified** |  |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/63 |


## Abstract

This SEP proposes new glyphs for introns and polypeptide-regions.

## 1. Rationale <a name="rationale"></a>

Coding sequences are often annotated to note specific regions, tags, or introns. This proposes to adopt new glyphs to supposed such annotation derived from the ones used by the UPV Golden Braid repository.

These glyphs are designed to compose with CDS glyphs, as shown in the examples below.


## 2. Specification <a name="specification"></a>

### Intron

#### Associated SO term(s)
SO:0000188 (intron)

#### Recommended Glyph and Alternates

An intron is designated by a boundaries interrupting CDS, each side having a two-triangle "torn out" edges, suggesting removal from an enclosing coding sequence:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/5a5511c/Glyphs/intron/intron-specification.png)

#### Prototypical Example

Example of a coding sequence with three domains: an N-tag (blue), C-tag (yellow), and internal region (red) interrupted by an intron that includes a gRNA non-coding RNA sequence (green):

![example](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/5a5511c/Glyphs/intron/intron-example.png)

### Polypeptide Region

#### Associated SO term(s)
SO:0000839 (polypeptide region)

#### Recommended Glyph and Alternates
A polypeptide region inside a coding sequence is indicated by insertion of triangular boundaries inside of the CDS, parallel to the 3' side of the CDS.  This will produce chevron segments on the 3' side and a CDS shape on the 5' side:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/5a5511c/Glyphs/polypeptide-region/polypeptide-region-specification.png)

#### Prototypical Example

degradation tag on a protein coding sequence

nuclear localization tag on a protein coding sequence

coding sequence for the membrane-crossing region of a protein

This glyph is intended to be used in composition or superposition with the glyph for the coding sequence of which the polypeptide regions are fragments: Example of a coding sequence with three designated domains, an N-tag (blue), C-tag (yellow), and internal region (red):

![example of usage](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/5a5511c/Glyphs/polypeptide-region/polypeptide-region-example.png)

## 3. Examples <a name='example'></a>

See examples above.

## 4. Backwards Compatibility <a name='compatibility'></a>

SBOL Visual does not currently have a specific symbol for these elements, so there are no backwards compatibility issues.

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
  <span property="dct:title">SEP V016</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
