# SEP V008: Functional Component Glyphs

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 2.0 |
| **Status** | Accepted |
| **Created** | 25-Sep-2017 |
| **Last modified** | 26-Sep-2017 |
| **Issue**       | [#13](https://github.com/SynBioDex/SBOL-visual/issues/13) |

## Abstract

Like SBOL 2, SBOL Visual 2 needs to express not just the structure of nucleic acids but also the functional relationships between nucleic acid regions and other species in a biological system. The functional component glyphs in this proposal come from two sources:

1. SBOL has committed to compatibility with SBGN, so glyphs align with the categories in SBGN-AF and every glyph includes the corresponding SBGN glyph as an alternative. 
2. A number of possible glyphs intended to be more "intuitive" for synthetic biologists have also been proposed.

Note that not all SBGN glyphs are being imported; we just commit that where an equivalence exists that the SBGN representation should be allowed.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

Each glyph detailed below in its specification has been provided with an individual rationale for that glyph. Examples are also embedded within each proposal.

## 2. Specification <a name="specification"></a>

### Complex

#### Associated BioPAX term(s)
Complex: http://www.biopax.org/release/biopax-level3.owl#Complex

#### Recommended Glyph and Alternates
There are several proposed complex glyphs. One is to simply composite together other glyphs.  For example, a protein bound to a small molecule, a guide RNA, or another protein:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/complex/complex-ps-specification.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/complex/complex-pr-specification.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/complex/complex-pp-specification.png)

Another alternative is the SBGN "cornered rectangle" glyph for a complex:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/complex/corneredrect-specification.png)

#### Prototypical Example

Arabinose bound to AraC

### Double-Stranded Nucleic Acid

#### Associated BioPAX term(s)
Dna: http://www.biopax.org/release/biopax-level3.owl#Dna

#### Recommended Glyph and Alternates
A number of variant glyphs have been proposed for dsNA, including a double-helix:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/doublehelixB-specification.png)

Alternately, dsNA might be represented by the SBGN "nucleic acid" half-round rectangle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/halfround-rectangle-specification.png)

#### Prototypical Example

DNA fragment during assembly

### Macromolecule

#### Associated BioPAX term(s)
Protein: http://www.biopax.org/release/biopax-level3.owl#Protein

#### Recommended Glyph and Alternates
The macromolecule glyph is a diagonally offset union of a large and small circle, intended to invoke the complex shapes of proteins:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/macromolecule/macromolecule-specification.png)

An alternative is the SBGN macromolecule glyph, a rounded rectangle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/macromolecule/roundrect-specification.png)

#### Prototypical Example

AraC

#### Notes
It is unclear whether this should be just "Protein" or whether we also want it to be able to repesent multi-component elements like a protein composed of multiple sub-units.

### No Glyph Assigned

#### Associated BioPAX term(s)
Any BioPAX type that is not covered by any glyph besides the root

#### Recommended Glyph and Alternates
When a species has no assigned glyph it is RECOMMENDED that a user provide their own glyph. The user is also encouraged to submit the new glyph for possible adoption into the SBOLv standard.

An alternative option is to have a bracket, suggesting information that needs to be filled in:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/no-glyph-assigned/no-glyph-assigned-brackets-specification.png)


#### Prototypical Example

No Glyph Assigned is intended to be used for any chemical species whose type is not covered by other SBOL Visual glyphs.

#### Notes
No Glyph Assigned is intended for molecular species with a defined specific type that happens to not yet be covered by available approved glyphs (other than the root). It is more likely to appear in machine-generated diagrams than in human-generated diagrams, since humans are likely to invent and use their own glyph for the purpose.


### Small Molecule

#### Associated BioPAX term(s)
Small Molecule: http://www.biopax.org/release/biopax-level3.owl#SmallMolecule

#### Recommended Glyph and Alternates
The small molecule glyph is a circle that stretches sideways into a "stadium" to accomodate longer names:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/small-molecule/stadium-specification.png)

#### Prototypical Example

Arabinose

### Single-Stranded Nucleic Acid

#### Associated BioPAX term(s)
Rna: http://www.biopax.org/release/biopax-level3.owl#Rna

#### Recommended Glyph and Alternates
A number of variant glyphs have been proposed for ssNA, including a wiggly line:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/ssNA/wiggle-specification.png)

Alternately, ssNA might be represented by the SBGN "nucleic acid" half-round rectangle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/ssNA/halfround-rectangle-specification.png)

#### Prototypical Example

mRNA, gRNA, siRNA

### Unspecified

#### Associated BioPAX term(s)
PhysicalEntity: http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity

#### Recommended Glyph and Alternates
Unspecified is represented by the unicode "replacement character" glyph, indicating a missing or invalid symbol, is RECOMMENDED:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/unspecified/replacement-glyph-specification.png)

An alternative is the SBGN "generic species" glyph, which is an oval:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/unspecified/oval-specification.png)


#### Prototypical Example

An anonymous chemical species that is missing any information about its nature or intended purpose.

#### Notes
The Unspecified glyph is intended for showing where a chemical species' type is missing (or, equivalently, given only the uninformative root role). It should never appear with well-curated designs or diagrams.



## 3. Examples <a name='example'></a>

See examples in individual glyph proposals.

## 4. Backwards Compatibility <a name='compatibility'></a>

All proposals are for new glyphs that do not conflict with existing glyphs.

## 5. Discussion <a name='discussion'></a>

Alternatives currently lacking suppport:

### Complex
Another possibility is two connected circles, with or without a line between them:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/complex/circlepair-specification.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/complex/circlepair-split-specification.png)

### Double-Stranded Nucleic Acid

a different variant of the double helix:
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/doublehelix-specification.png)

a double-helix with nucleotides:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/doublehelix-teeth-specification.png)

a parallel pair of ssNA wiggles:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/doublewiggle-specification.png)

a parallel pair of ssNA wiggles with nucleotides:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/doublewiggle-teeth-specification.png)

two parallel lines:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/parallel-lines-specification.png)

a "ladder":

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/ladder-specification.png)

a "ladder" with 5' hooks in each direction:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/dsNA/ladder-hook-specification.png)


### Single-Stranded Nucleic Acid

a wiggly line with teeth:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/ssNA/wiggle-teeth-specification.png)

a "comb" of a straight line with teeth:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/ssNA/comb-specification.png)

a "comb" with an additional 5' hook:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/ssNA/comb-hook-specification.png)

or a small rectangular box:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/51b5f17/Glyphs/FunctionalComponents/ssNA/rectangle-specification.png)




## References <a name='references'></a>

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
  <span property="dct:title">SEP V008</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
