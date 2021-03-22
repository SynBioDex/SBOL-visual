# SEP V009: Engineered Region vs. Composite

| SEP | |
| --- | --- |
| **Title** | Engineered Region vs. Composite |
| **Authors** | Jacob Beal (jakebeal@ieee.org), Chris Myers, John Sexton |
| **Editor** | |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Accepted |
| **Created** | 7-Oct-2017 |
| **Last modified** | |
| **Issue**       | [#16](https://github.com/SynBioDex/SBOL-visual/issues/16) |

## Abstract

This SEP proposes to split Engineered Region from Composite.


## 1. Rationale <a name="rationale"></a>

The Engineered Region SO term (SO:0000804) currently assigned to the Composite glyph does not actually describe composite parts: some engineered regions are not meaningfully composites, and some multi-element composites are better described by terms not covered by Engineered Region (e.g., a double terminator, or an evolved gene cluster).  

This SEP thus proposes to split the two terms, giving Engineered Region the Rectangle glyph. The rectangle will also be eventually removed from Unspecified.

## 2. Specification <a name="specification"></a>

### Engineered Region

Associated SO term: SO:0000804 Engineered Region

Glyph: Rectangle

### Composite
The Composite glyph will no longer have a specific SO term. Instead, there will be the following note:

*Composite does not have an associated SO term, as it merely links a base glyph (with its own SO term) to a sub-diagram (comprising glyphs with their own associated SO terms).*

The Rectangle glyph will no longer be an alternative for Composite.

### Unspecified

The Rectangle alternative will be deprecated and given RECOMMEND NOT status for Unspecified in SBOL Visual 1.1, then removed entirely in SBOL Visual 2.0.

## 3. Examples <a name='example'></a>

Engineered Region might represent a DNA component containing both a promoter and a CDS.

Composite could then be used to link to a sub-diagram showing the two subcomponents.

## 4. Backwards Compatibility <a name='compatibility'></a>

The "User Defined" rectangle will be deprecated, then removed.

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
  <span property="dct:title">SEP V009</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>