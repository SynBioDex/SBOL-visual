# SEP V026: Introduction of “//” as a Glyph for Generic DNA Breaks in SBOL Visual



| SEP | |
| --- | --- |
| **Title** | Introduction of “//” as a Glyph for Generic DNA Breaks in SBOL Visual |
| **Authors** | Georgie Hau Sorensen (georgiehausorensen@gmail.com), Lukas Buecherl |
| **Editor** | Felipe Buson (fxbuson@gmail.com)|
| **Type** | Specification |
| **SBOL Visual Version** | |
| **Status** | Draft |
| **Created** | 26 Feb 2026 |
| **Last modified** |  26 Feb 2026 |
| **Issue** | |





## Abstract

This proposal introduces a new SBOL Visual glyph, represented by the character sequence “//”, to denote generic breaks in DNA. These breaks include regions where sequence continuity is intentionally unspecified, undefined, interrupted, or skipped for schematic clarity. The use of “//” aligns with widespread conventions in biological schematics and provides a simple, intuitive, and compact symbol to improve readability.



## Table of Contents  <remove TOC if SEP is rather short>

- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [Copyright](#copyright)



## 1. Rationale <a name="rationale"></a>



1.1. Widespread Use

The “//” mark is traditionally used in biological schematics to indicate:

- “region removed/not drawn”
- “break in continuity”
- “shift in sequence”  

This convention is common in textbooks, research illustrations, and even circuit diagrams in other fields. 

The familiarity of this symbol lowers the cognitive load for new users, and it makes diagrams more immediately interpretable.



1.2. Glyph Simplicity

The “//” glyph:

- Is visually compact
- Does not resemble any existing SBOL Visual glyph
- Can be rendered easily in both digital and hand-drawn form
- Maintains clarity even at small scale

  

## 2. Specification <a name="specification"></a>

2.1. Glyph Definition



The “//” glyph consists of two short, parallel, diagonal slashes. 



These may be oriented:

- Forward-slanted (primary, recommended)
- Backward-slanted (optional alternative for stylistic compatibility with other diagram elements)


2.2. Placement

The glyph placed in-line on a DNA backbone to indicate that:

- A region of arbitrary length is not shown
- Sequence continuity is intentionally omitted

2.3. Semantic Meaning

The glyph may represent a non-specific sequence gap


## 3. Example or Use case <a name="example"></a>:

[ promoter ] —— // —— [ CDS ]





## 4. Backwards Compatibility <a name='compatibility'></a>

This SEP is backward compatible insofar as it doesn't directly introduces conflicts with existing glyphs. There is an argument to be made whether its function can be fully covered using the existing "engineered region" glyph. It is worth noting that any diagrams without this introduced break glyph will remain valid.



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
