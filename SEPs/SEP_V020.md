# SEP V020: Recommend use of polypeptide region for 2A Sequences

| SEP | |
| --- | --- |
| **Title** | Recommend use of polypeptide region for 2A Sequences |
| **Authors** | Jacob Beal (jakebeal@ieee.org), Shyam Bhakta |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.3 |
| **Status** | Accepted |
| **Created** | 22-Oct-2019 |
| **Last modified** | 5-Oct-2020 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/78 |


## Abstract

This SEP proposes to recommend use of the polypeptide region for 2A sequences.

## 1. Rationale <a name="rationale"></a>

The 2A self-cleaving peptide sequences are commonly used in making coding sequences with multiple separated products, but their mechanism is a "skip" in bond formation rather than an actual cleavage.  Thus, there has been confusion over whether they should be represented as a cleavage site or a polypeptide region. 
This SEP proposes to clarify the situation wth an explicit recommendation that polypeptide region be used to represent 2A sequences.

## 2. Specification <a name="specification"></a>

In the Cleavage Site glyph, add the following note:

> A 2A self-cleaving polypeptide region (SO:0002224) SHOULD NOT be represented by a protease site, as its cleavage mechanism is different. Instead, 2A sequences should be represented using the Polypeptide Region glyph (see example in its specification).

In the Polypeptide Region glyph, add the following note and corresponding example:

> Polypeptide region can also be used to represent regions that involve cleavage, such as a 2A self-cleaving polypeptide region (SO:0002224, a child term of SO:0000839). It is RECOMMENDED that cleavage-inducing polypeptide regions be visually distinguished from intact, e.g., through the use of dashed lines.

> ![glyph example](https://github.com/SynBioDex/SBOL-visual/raw/c3ab10b/Glyphs/polypeptide-region/polypeptide-2a-example.png)


## 3. Examples <a name='example'></a>

2A sequence linking TetR CDS and mCherry CDS


## 4. Backwards Compatibility <a name='compatibility'></a>

This change is backward compatible, as all previous diagrams are still valid with the same meaning.


## 5. Discussion <a name='discussion'></a>

Originally, this SEP proposed to add the SO term for 2A sequences to the Protein Cleaveage Site glyph. 
After discussion, however, the preferred approach was instead to recommend styling of the polypeptide region glyph.

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
