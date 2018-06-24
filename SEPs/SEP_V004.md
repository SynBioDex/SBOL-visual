# SEP V004: New Glyph Collection

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Accepted |
| **Created** | 22-Aug-2017 |
| **Last modified** | 18-Sep-2017 |
| **Issue**         | [#8](https://github.com/SynBioDex/SBOL-visual/issues/8) |

## Abstract

A number of new glyphs have been proposed over the past few years, and we need to put them to an up-or-down vote. 

There are twelve proposals currently pending: Aptamer, Codon, Homology Region, Inverter, Non-Coding RNA, ORI-T, polyA Site, Protein Domain, Specific Recombination Site, Non Directional Sticky End, Tag, Transcript Region

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

Each glyph detailed below in its specification has been provided with an individual rationale for that glyph.  Examples are also embedded within each proposal.

## 2. Specification <a name="specification"></a>

### Aptamer
#### Associated SO term(s)
SO:0000031: Aptamer

#### Recommended Glyph and Alternates
The proposed aptamer glyph is a cartoon diagram of nucleic acid secondary structure like that found in aptamers:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/aptamer/aptamer-A-specification.png)

#### Prototypical Example

theophylline aptamer

### Non-Coding RNA Gene

#### Associated SO term(s)
SO:0001263: Non-Coding RNA Gene
SO:0000834: Mature Transcript Region 

#### Recommended Glyph and Alternates
Two of the proposed non-coding RNA glyphs are both single-stranded RNA "wiggles," one on top of a box:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/0cac2206/Glyphs/non-coding-rna/ncrna-boxC-specification.png)

another hovering above the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/non-coding-rna/ncrna-hover-specification.png)

One or the other of these should be chosen, but not both.

#### Prototypical Example

gRNA

### ORI-T
#### Associated SO term(s)
SO:0000724: Origin of Transfer

#### Recommended Glyph and Alternates
The origin of transfer glyph is circular like Origin of Replication, but also includes an outbound arrow:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/15b47bb/Glyphs/origin-of-transfer/origin-of-transfer-C-specification.png)

#### Prototypical Example

oriT

#### Notes
The recommended backbone location of Origin of Replication is not yet fixed; the backbone location of this glyph is intended to match Origin of Replication, so it that is recommended to become below the glyph, this backbone location will shift as well.

### polyA site
#### Associated SO term(s)
SO:0000553: polyA Site

#### Recommended Glyph and Alternates
The polyA site glyph is a sequence of As sitting atop the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/polyA/polyA-specification.png)

#### Prototypical Example

polyA tail on mammalian coding sequence

### Specific Recombination Site

#### Associated SO term(s)
SO:0000299: Specific Recombination Site

#### Recommended Glyph and Alternates
The specific recombination site glyph is a triangle, centered on the backbone, as has appeared in a number of recombinase circuit papers:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/specific-recombination-site/specific-recombination-site-specification.png)

#### Prototypical Example

flippase recognition target (FRT) site

#### Notes
Potential conflict with proposed Inverter glyph.

## 3. Examples <a name='example'></a>

See examples in individual glyph proposals.

## 4. Backwards Compatibility <a name='compatibility'></a>

All proposals are for new glyphs that do not conflict with existing glyphs. Note that two proposals (Inverter and Recombinase Site) do conflict with one another.

## 5. Discussion <a name='discussion'></a>

The following proposed options have been considered, but do not have strong support and are thus being removed from consideration unless they pick up significant advocacy. They may be revisited in the future.

### Aptamer

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/aptamer/aptamer-B-specification.png)

### Codon

#### Associated SO term(s)
SO:0000360: Codon

SO:0000318: Start Codon

SO:0000319: Stop Codon

#### Recommended Glyph and Alternates
The proposed aptamer glyphs are two versions of a cartoon diagram of nucleic acid secondary structure like that found in aptamers:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon-specification.png)

Nucleotides can be indicated with colors or letters in the boxes:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_nucleotides.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_colored.png)

Proteins can be indicated by a letter above:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_labelled.png)

Stop and start codons might be indicated by special symbols:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_start.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_start%20(1).png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_stop.png)

Edits can be indicated by changes:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_edited%20(1).png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_edited_some.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_edited_all.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_edited_colored.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_edited_nucleotides.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/codon/codon_nucleotides_edited.png)

#### Prototypical Example

UGA stop codon

#### Notes
If accepted, there will need to be additional work done to elaborate the full specification.

### Homology Region

#### Associated SO term(s)
SO:0000853  

#### Recommended Glyph and Alternates
The homology region glyph is a stretched hexagon hovering above the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/homology-region/homology-region-specification.png)

#### Prototypical Example

*Needs a good example*


### Inverter

#### Associated SO term(s)
*No SO term currently exists*

#### Recommended Glyph and Alternates
The inverter glyph is a triangle, echoing the buffer glyph from electronics.  It might be either above or on the backbone.

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/inverter/inverter-specification.png)

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/inverter/inverter-specification-above.png)

#### Prototypical Example

*Needs a good example*

#### Notes
Potential conflict with proposed Specific Recombination Site glyph.

### Non-Coding RNA

Squiggle with teeth:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e0712eb/Glyphs/non-coding-rna/ncrna-hover-teeth-specification.png)

Peeling comb suggesting an RNA sequence partially attached to the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/transcript-region/transcript-region-specification.png)


### Non Directional Sticky End
#### Associated SO term(s)
SO:0001692 (unspecified direction)

#### Recommended Glyph and Alternates
A sticky restriction site of unspecified direction is an angled set of cuts:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/sticky-restriction-site/sticky-restriction-site-specification.png)

#### Prototypical Example

EcoRI restriction site.



### ORI-T
Spirals outward toward a new destination rather than being a closed circle. Two slightly different variants of spiral are proposed for consideration:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/origin-of-transfer/origin-of-transfer-specification.png)

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/origin-of-transfer/origin-of-transfer-B-specification.png)


### Protein Domain

#### Associated SO term(s)
SO:0000417 Polypeptide Domain

#### Recommended Glyph and Alternates
A number of proposals have been made for Protein Domain glyphs. These are:

* A chevron, which composes nicely with the standard CDS pentagon

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/protein-domain/chevron-specification.png)

* A plain rectangle (the same as user defined):

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/protein-domain/user-defined-specification.png)


* A chevron with a vertical break:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/protein-domain/broken-chevron-specification.png)

* A broken CDS pentagon

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/protein-domain/broken-cds-specification.png)

* A broken arrow (i.e., broken alternate CDS)

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/protein-domain/broken-arrow-specification.png)

* A CDS pentagon with a chevron break:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/protein-domain/broken-cds-chevron-specification.png)

#### Prototypical Example

VP64 activation domain

#### Notes
Protein domain should have the same recommended vertical position as CDS, but CDS does not have a recommended vertical position yet, so these proposals do not either.

### Tag

#### Associated SO term(s)
SO:0000324: Tag

#### Recommended Glyph and Alternates
The tag glyph is a diagonal rectangle with clipped corners, reminiscent of a stereotypical paper gift tag:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/30935c/Glyphs/tag/tag-specification.png)

#### Prototypical Example

PEST tag

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
  <span property="dct:title">SEP V004</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>