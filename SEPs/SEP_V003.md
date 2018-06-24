# SEP V003: Distinguished Unknowns

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Draft |
| **Created** | 21-Jul-2017 |
| **Last modified** | 17-Aug-2017 |
| **Issue**         | [#6](https://github.com/SynBioDex/SBOL-visual/issues/6) |

## Abstract

We need a way of distinguishing between three distinct use cases that are currently all covered by the "User Defined" symbol.  These are:

* Unspecified: SO:0000110 Sequence Feature
* No glyph assigned: Any SO term that is not covered by any glyph besides the root Sequence Feature
* Composite: SO:0000804 Engineered Region

Accompanying with the Composite proposal is also a proposal for an Omitted Detail glyph explicitly showing where information is not being represented.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

Importing large numbers of constructs has found three distinct cases that need to be visually distinguished but currently are all lumped under 'User Defined":

* "Unspecified": Constructs whose type information is missing --- here called "Unspecified," and typically defaulting to the root term SO:0000110.  Here, we want people to recognize the problem and fill in the missing information.
* "No Glyph Assigned": Constructs with a well-defined and interesting type that happens to not be covered by any of the current glyphs. Here, we want people to recognize that the part is well understood, just outside the current vocabulary. We also want them to make new glyph proposals.
* "Composite": Potentially complex designs composing multiple parts. Here we want to have people recognize that there is more detail available.

The Unspecified glyph is intended for showing where a sequence's role is missing (or, equivalently, given only the uninformative "Sequence Feature" root role). It should never appear with well-curated designs or diagrams.

No Glyph Assigned is intended for constructs with a defined specific role that happens to not yet be covered by available approved glyphs (other than the root "Sequence Feature"). It is more likely to appear in machine-generated diagrams than in human-generated diagrams, since humans are likely to invent and use their own glyph for the purpose.

Some of the proposed glyphs for Composite are linked to the proposal for an Omitted Detail glyph.

## 2. Specification <a name="specification"></a>

The "User Defined" glyph will be split into three new glyphs: "Unspecified", "No Glyph Assigned", and "Composite".

A number of proposals have been made for these glyphs, from which we need to pick one to be RECOMMENDED for each and may choose to pick others as alternatives.

Currently, all three of these meanings are covered by the "User Defined" glyph, a plain rectangle suggesting a blank slate to be written upon:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/user-defined-specification.png)

### Unspecified and No Glyph Assigned 

A number of potential replacement glyphs and variants have been proposed for covering Unspecified and/or No Glyph Assigned.  The current supported candidates are:

#### Unspecified

* The unicode "replacement character" glyph, indicating a missing or invalid symbol, will be RECOMMENDED:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/replacement-glyph-specification.png)

* A half-rounded rectangle, the SBGN glyph for a nucleic acid, will be an alternative:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/halfround-rectangle-specification.png)

#### No Glyph Assigned

_Per discussion, No Glyph Assigned has been deferred to SEP V006._

* Keep the current "User Defined" rectangle as RECOMMENDED.

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/user-defined-specification.png)

Alternate stylings of this rectangle might be preferred by users and tools:

* A tall thin rectangle, which some fonts use as an alternative "replacement character":

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/tall-rectangle-specification.png)

* A dashed line rectangle, implying something is missing:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/dashed-rectangle-specification.png)


### Composite 

For Composite the following glyph has been proposed to become RECOMMENDED:

* Dashed "expanding lines" connecting any "base" glyph representing the more abstract composite (e.g., Omitted Detail, or Terminator, or Promoter) to a backbone diagramming the contents of the composite. Note the bounding box is indicating the location of the base glyph, and would scale with that glyph.

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/6913ca8/Glyphs/user-defined/composite-base-symbol-specification.png)


### Omitted Detail

No SO term will be associated with this, as it is indicating that something is *not* being representing.

The proposed RECOMMENDED omitted detail glyph is break in the backbone with something to indicate that material would normally be in that location. In particular, from reasonable several alternatives, an ellipsis is proposed:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/omitted-detail/omitted-detail-ellipsis-specification.png)

Note that this glyph actually places a "break" in the nucleic acid backbone.

## 3. Examples <a name='example'></a>

Unspecified: an anonymous sequence that is missing any information about its nature or intended purpose.

No Glyph Assigned is intended to be used for any Component that is not covered by other SBOL Visual glyphs.

Composite: an "expression cassette" containing a ribosome entry site, coding sequence, and terminator.

Omitted Detail: A diagram in which a sequence features is not drawn.

## 4. Backwards Compatibility <a name='compatibility'></a>

The "User Defined" rectangle will remain as a RECOMMENDED or alternative glyph for all three of Unspecified, No Glyph Assigned, and Composite.

## 5. Discussion <a name='discussion'></a>

The following proposed options have been considered, but do not have strong support and are thus being removed from consideration unless they pick up significant advocacy. They may be revisited in the future.

### Unspecified or No Glyph Assigned 

* A horizontal line with a question mark over it:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/blank-line-question-specification.png)

* A piece of DNA: 

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/dna-specification.png)
* A horizontal line:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/blank-line-specification.png)

* A rectangle with an X through it:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/X-rectangle-specification.png)

### Composite 

* Dashed "expanding lines" connecting an Omitted glyph (one candidate shown here for an example) to a backbone diagramming the contents of the composite. Note this glyph's bounding box is only the Omitted glyph.

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/composite-omitted-detail-specification.png)

* Dashed "expanding lines" connecting a point of the backbone to a backbone diagramming the contents of the composite.  Note that this glyph has no bounding box.

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/composite-point-specification.png)
* Dashed "expanding lines" connecting two bars to a backbone diagramming the contents of the composite. Note that this glyph has no bounding box.

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/composite-bars-specification.png)
* A double rectangle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/double-box-specification.png)

* A "black box":

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/black-box-specification.png)

### Omitted Detail

Brackets:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/omitted-detail/omitted-detail-brackets-specification.png)

Slanted "graph axis break":

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/omitted-detail/omitted-detail-slanted-specification.png)


Straight "graph axis break":

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/omitted-detail/omitted-detail-straight-specification.png)



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
  <span property="dct:title">SEP V003</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>