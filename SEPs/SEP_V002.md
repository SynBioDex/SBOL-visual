# SEP V002: Alternative Glyphs

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Accepted |
| **Created** | 21-Jul-2017 |
| **Last modified** | <leave empty if this is the first submission> |
| **Issue**         | [#5](https://github.com/SynBioDex/SBOL-visual/issues/5) |

## Abstract

Sometimes there is more than one way of drawing a diagram that is accepted by the community and no strong reason to attempt to force a choice of only one.  In such cases, SBOL Visual should recommend one symbol, but also endorse good alternatives.

## 1. Rationale <a name="rationale"></a>

In some cases, the community has come up with more than one good symbol for a given concept. Rather than declaring only one valid and the others "bad," SBOL should support the use of good alternatives.

## 2. Specification <a name="specification"></a>

There may be more than one glyph sharing the same definition: in this case, these glyphs form a family of variants, of which precisely one MUST be designated as the RECOMMENDED variant.

For example, a CDS may be represented by either a pentagonal glyph or an arrow glyph, but the pentagon is the RECOMMENDED variant, and so it is preferred.  In specific cases, however, there may be reasons to use one of the other applicable glyphs instead.

## 3. Examples <a name='example'></a>

RECOMMENDED CDS glyph from SBOL Visual 1.0:
![cds](https://user-images.githubusercontent.com/10675899/28484232-d8877fa6-6e36-11e7-8e43-d35202b8416a.png)

Alternative "arrow" CDS glyph
![arrowcds](https://user-images.githubusercontent.com/10675899/28484276-0a1085c2-6e37-11e7-8223-092b50d8ae92.png)

## 4. Backwards Compatibility <a name='compatibility'></a>

No backwards compatibility issues.

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
  <span property="dct:title">SEP V002</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>