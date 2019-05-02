# SEP V015: Change BioPAX to SBO

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | Zach Palchick |
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Draft |
| **Created** | 30-Mas-2019 |
| **Last modified** |  |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/62 |


## Abstract

Molecular Species glyphs are currently defined in terms of BioPAX terms, which is limiting and does not match with SBO used for Interactions and Interaction Nodes. This SEP proposes changing to SBO, keeping BioPAX as an alternative for backward compatibility until SBOL 3.0.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

BioPAX gives definitions for very few classes of molecular species: in fact, the SBOL Visual set of glyphs already covers all of the few molecular species terms in BioPAX.  This is much smaller than the set of terms that are likely to be of interest for glyphs, however.

Moreover, SBOL Visual is intended to be a compatible with SBGN, which uses SBO terms. SBOL Visual Interactions and Interaction Nodes all use SBO terms. The SBGN glyphs imported, however, are not currently labelled with the SBO terms but with BioPAX terms. In one case, this is even incompatible: BioPAX#Protein is _not_ equivalent to SBO#Macromolecule.

As such, this SEP proposed to make all Molecular Species glyphs in SBOL Visual use SBO terms matching SBGN as their recommended definitions instead, retaining BioPAX as an alternate definition wheere appropriate.

## 2. Specification <a name="specification"></a>

### Specification Changes

The specification will be modified in the glyphs section as follows:

* Replace:

  > Molecular Species Glyphs ... are associated with BioPAX terms.
  
  with:
  
  > Molecular Species Glyphs ... are associated with Systems Biology Ontology terms.  
  
* Replace: 
  
  > Definitions are RECOMMENDED to be from the Sequence Ontology for nucleic acid components, from BioPAX for other components, and from the Systems Biology Ontology for interactions.  
  
  with:
  
  > Definitions are RECOMMENDED to be from the Sequence Ontology for sequence feature glyphs, from the Systems Biology Ontology for molecular species glyphs, and from the Systems Biology Ontology for interaction glyphs.  
  
(the second change incidentally corrects the names of the glyph classes as well).

### Glyph Changes

The following changes will be made:

#### Complex
Change:
 
> #### Associated BioPAX term(s)
> Complex: http://www.biopax.org/release/biopax-level3.owl#Complex

To: 
> #### Associated SBO term(s)
> SBO:0000253 Non-covalent complex
 
Add to notes: 
> Alternate BioPAX definition: Complex: http://www.biopax.org/release/biopax-level3.owl#Complex

#### dsNA
Change:
>#### Associated BioPAX term(s)
>Dna: http://www.biopax.org/release/biopax-level3.owl#Dna

To:
>#### Associated SBO term(s)
>SBO:0000251 Deoxyribonucleic acid 
 
Add to notes: 
> Alternate BioPAX definition: Dna: http://www.biopax.org/release/biopax-level3.owl#Dna

#### macromolecule
Change:
>#### Associated BioPAX term(s)
>Protein: http://www.biopax.org/release/biopax-level3.owl#Protein

To:
>#### Associated SBO term(s)
>SBO:0000245 Macromolecule

In notes, change: 
> It is unclear whether this should be just "Protein" or whether we also want it to be able to repesent multi-component elements like a protein composed of multiple sub-units or a complex polymer.

To:
> Note that this also covers BioPAX term Protein: http://www.biopax.org/release/biopax-level3.owl#Protein

#### no-glyph-assigned
Change: 
>#### Associated BioPAX term(s)
>Any BioPAX type that is not covered by any glyph besides the root

To: 
>#### Associated SBO term(s)
>Any SBO type that is not covered by any glyph besides the root
 
#### small-molecule
Rename to "simple-chemical"

Change:
>#### Associated BioPAX term(s)
>Small Molecule: http://www.biopax.org/release/biopax-level3.owl#SmallMolecule

To:
>#### Associated SBO term(s)
>SBO:0000247 Simple chemical
 
Add to notes:
> Alternate BioPAX definition: Small Molecule: http://www.biopax.org/release/biopax-level3.owl#SmallMolecule

#### ssNA
Change:
>#### Associated BioPAX term(s)
>Rna: http://www.biopax.org/release/biopax-level3.owl#Rna

To:
>#### Associated SBO term(s)
>SBO:0000250 Ribonucleic acid

Add to notes:
> Alternate BioPAX definition: Rna: http://www.biopax.org/release/biopax-level3.owl#Rna

#### unspecified
Change:
>#### Associated BioPAX term(s)
>PhysicalEntity: http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity

To:
>#### Associated SBO term(s)
>SBO:0000285 Material entity of unspecified nature

Add to notes:
> Alternate BioPAX definition: PhysicalEntity: http://www.biopax.org/release/biopax-level3.owl#PhysicalEntity



## 3. Examples <a name='example'></a>

No examples are needed.

## 4. Backwards Compatibility <a name='compatibility'></a>

BioPAX terms are used throughout SBOL 2 data models, so will be retained as an acceptable secondary definition for glyphs.

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
  <span property="dct:title">SEP V015</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
