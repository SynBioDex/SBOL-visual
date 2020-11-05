# SEP V021: Unspecified Interaction Glyph Node

| SEP | |
| --- | --- |
| **Authors** | Logan Terry |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.3 |
| **Status** | Draft |
| **Created** | 3-Sep-2020 |
| **Last modified** | 3-Oct-2020 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/102 |


## Abstract

This SEP proposes a way to visualize interactions where the nature of the interaction is unknown by adding a new "unspecified" interaction node glyph.

## 1. Rationale <a name="rationale"></a>

There is currently no defined way to show an interaction with unknown directionality or of unknown nature.

## 2. Specification <a name="specification"></a>

### New Interaction Node Glyph "Unspecified"

#### Unspecified SBO term(s)
SBO:0000231 occurring entity representation

Incoming: SBO:0000003 Participant Role

#### Recommended Glyph and Alternates
Unspecified is represented by the unicode "replacement character" glyph, indicating a missing or invalid symbol:

![glyph specification](../Glyphs/InteractionNodes/unspecified/unspecified-glyph-specification.png)

#### Prototypical Example

An interaction that is missing any information about its nature or intended purpose.

#### Notes
Note that there are no outgoing edges for the Unspecified interaction, because there is no difference in roles to indicate.

The Unspecified glyph is intended for showing where information about an interaction is missing. It should not generally appear with well-curated designs or diagrams.

## 3. Examples <a name='example'></a>

See examples above.

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
  <span property="dct:title">SEP V021</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
