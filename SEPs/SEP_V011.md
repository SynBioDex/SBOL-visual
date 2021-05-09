# SEP V011: Genomic Context

| SEP | |
| --- | --- |
| **Title** | Genomic Context |
| **Authors** | Angel Goni Moreno, Shyam Bhakta, Jacob Beal, John Sexton, Sebastian Castillo-Hair |
| **Editor** | |
| **Type** | Specification |
| **SBOL Visual Version** | 2.1 |
| **Status** | Accepted |
| **Created** | 12-Apr-2018 |
| **Last modified** | 12-Apr-2018 |
| **Issue** | [#40](https://github.com/SynBioDex/SBOL-visual/issues/40) |

## Abstract

This SEP proposes best practices and new glyphs for representing the genomic context of a genetic construct.


## 1. Rationale <a name="rationale"></a>

When describing the delivery or integration of a genetic design, it is often important to be able to communicate whether it will be on a plasmid (and which plasmid) or chromosomally integrated (and at which locus). This SEP aims to provide a means of doing so.

## 2. Specification <a name="specification"></a>

The specification will be modified with the addition of recommendations to the "Nucleic Acid Backbone" section of the specification, plus a usage recommendation on Origin of Replication and two new glyphs.

### Recommendations for "Nucleic Acid Backbone" section

The following will be added to the "Nucleic Acid Backbone" section of the specification:

> As a special case of non-horizontal backbone structure, certain stylized backbone shapes are used as sequence feature glyphs to indicate the genomic context of a sequence. 
> These glyphs SHOULD be used as a matched pair, indicating the bounds of the context region.
>  It is further RECOMMENDED that each glyph be concatenated with an Omitted Detail glyph to explicitly indicate that some surrounding context is not being shown. 
> Examples are provided in Figure [number].

> Figure[number]: Examples of RECOMMENDED indication of genomic context: (a) functional unit on a circular plasmid, (b) functional unit integrated at a chromosomal locus, (c) two functional units on the same chromosome but different loci.

### Recommendation for Origin of Replication usage
The following will be added to the notes of the Origin of Replication glyph:

> The label on an origin of replication glyph is RECOMMENDED as the location to label either specifically the identity of the origin of replication or the name of the entire plasmid backbone more generally.

### Circular Plasmid

#### Associated SO term(s)

SO:0002211 Circular Plasmid - A self replicating circular nucleic acid molecule that is distinct from a chromosome in the organism.

#### Recommended Glyph and Alternates

The glyph to indicate embedding in a plasmid is a turn of the backbone indicating its circular structure:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/c99dac32/Glyphs/circular-plasmid/circular-plasmid-specification.png)

#### Prototypical Example

_E. coli_ p15A plasmid

#### Notes

Note that for SBOL data representations, circularity SHOULD also be indicated with a type of SO:0000988.

Complementary "left" and "right" versions of this glyph SHOULD be used together, flanking the region whose genomic context is being described.

The Omitted Detail glyph SHOULD generally be contatenated to indicate that there is information about the plasmid not being represented.

Example of RECOMMENDED usage:

Example of RECOMMENDED usage: a plasmid containing a functional unit consisting of promoter, ribosome entry site, CDS, and terminator:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/c99dac32/Glyphs/circular-plasmid/circular-plasmid-example.png)

### Chromosomal Locus

#### Associated SO term(s)

SO:0000830 Chromosome Part

#### Recommended Glyph and Alternates

The glyph to indicate integration into a chromosome is an S-shaped curve of the backbone, suggesting a larger looping structure:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/c99dac32/Glyphs/chromosomal-locus/chromosomal-locus-specification.png)

#### Prototypical Example

_B. subtilis_ amyE locus


#### Notes

Complementary "left" and "right" versions of this glyph SHOULD be used together, flanking the region whose genomic context is being described.

The Omitted Detail glyph SHOULD generally be contatenated to indicate that there is information about the chromosome not being represented.

Example of RECOMMENDED usage:

- A functional unit consisting of promoter, ribosome entry site, CDS, and terminator, all integrated together into the chromosome:
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/c99dac32/Glyphs/chromosomal-locus/chromosomal-locus-example.png)

- Two functional units, one integrated into the amyE locus, another integrated into the ganA locus:
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/c99dac32/Glyphs/chromosomal-locus/chromosomal-locus-example2.png)


## 3. Examples <a name='example'></a>

See examples in individual glyph proposals


## 4. Backwards Compatibility <a name='compatibility'></a>

There are no backwards compatibility issues: added recommendations do not conflict, new glyphs are also non-conflicting.

## 5. Discussion <a name='discussion'></a>



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
  <span property="dct:title">SEP V011</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
