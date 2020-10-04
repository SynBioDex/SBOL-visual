# SEP V022: Inert DNA spacer

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org), Shyam Bhakta, John Sexton |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.3 |
| **Status** | Draft |
| **Created** | 7-Sept-2020 |
| **Last modified** | 2-Oct-2020 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/103 |


## Abstract

This SEP proposes to add a new glyph for inert DNA spacer sequences, generalizing on the concept of an insulator.

## 1. Rationale <a name="rationale"></a>

The insulator glyph is defined as SO:0000627, which is more biologically specific than the term is being used in practice.  At the same time, the current "double box" insulator glyph has not found much favor, and has caused problems due to its design.

This SEP thus proposes to introduce a new "inert DNA spacer" glyph using the "circle-X" notation that has appeared in a number of published papers.  While this has similarity to the Ori and OriT glyphs, it is still quite visually distinct.

The insulator glyph will also be deprecated, to be deleted at version 3.0.

## 2. Specification <a name="specification"></a>

### New Glyph: "Inert DNA Spacer"

#### Associated SO term(s)
SO:0002223 (Inert DNA Spacer)

#### Recommended Glyph and Alternates
The inert DNA spacer glyph is a circle with an X in its middle, suggesting the intent to cancel possible interactions:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/702f5d9/Glyphs/inert-dna-spacer/inert-dna-spacer-specification.png)

#### Prototypical Example

Inserted 5' sequence intended to reduce effect of upstream genetic context on promoter behavior.

#### Notes
*this section deliberately blank*


### Change to Insulator glyph

Added to notes:

> This glyph is deprecated in favor of inert DNA spacer.

## 3. Examples <a name='example'></a>

See examples above.


## 4. Backwards Compatibility <a name='compatibility'></a>

Addition of "Inert DNA Spacer" is backward compatible, as is deprecation of Insulator.  The actual removal of Insulator will _not_ be backward compatible, however, and thus must wait for 3.0.


## 5. Discussion <a name='discussion'></a>

A number of potential alternatives were discussed in the GiHub issue thread prior to creation of this SEP: https://github.com/SynBioDex/SBOL-visual/issues/34

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
  <span property="dct:title">SEP V022</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
