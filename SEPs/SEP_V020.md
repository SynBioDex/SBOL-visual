# SEP V020: Add 2A Sequences to Protein Cleavage Site

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org), Shyam Bhakta |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Draft |
| **Created** | 22-Oct-2019 |
| **Last modified** | 22-Oct-2019 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/78 |


## Abstract

This SEP proposes to add the new SO term for 2A sequences to the Protein Cleaveage Site glyph.

## 1. Rationale <a name="rationale"></a>

The 2A self-cleaving peptide sequences are commonly used in making coding sequences with multiple separated products.  These sequences thus seem appropriate to represent as protein cleavage sites, but are not well-described by the Protease Site ontology term (SO:0001956).

Sequence Ontology has now added a new term specifically for a 2A self-cleaving peptide region (SO:0002224).  Adding this term to the glyph will allow it to properly represent 2A sequences as well as protease targets.

## 2. Specification <a name="specification"></a>

In the Cleavage Site glyph, shange the associated SO terms for protein cleavage sites from:

> SO:0001956 (Protease Site)

to

> SO:0001956 (Protease Site), SO:0002224 (2A Self-Cleaving Peptide Region)


## 3. Examples <a name='example'></a>

2A sequence linking TetR CDS and mCherry CDS


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
  <span property="dct:title">SEP V020</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
