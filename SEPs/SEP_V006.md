# SEP V006: No Glyph Assigned

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org), Chris Myers |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Draft |
| **Created** | 14-Sep-2017 |
| **Last modified** | Never |
| **Issue**         | [#11](https://github.com/SynBioDex/SBOL-visual/issues/11) |

## Abstract

We need a way of distinguishing a Composite object (SO:0000804 Engineered Region) from a No Glyph Assigned object (i.e., any SO term that is not covered by any glyph besides the root Sequence Feature).

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

Two cases that currently do not have a clear way of visually distinguishing them are:

* "No Glyph Assigned": Constructs with a well-defined and interesting type that happens to not be covered by any of the current glyphs. Here, we want people to recognize that the part is well understood, just outside the current vocabulary. We also want them to make new glyph proposals.
* "Composite": Potentially complex designs composing multiple parts. Here we want to have people recognize that there is more detail available.

Here we focus on distinguishing No Glyph Assigned, which is intended for constructs with a defined specific role that happens to not yet be covered by available approved glyphs (other than the root "Sequence Feature"). It is more likely to appear in machine-generated diagrams than in human-generated diagrams, since humans are likely to invent and use their own glyph for the purpose.

## 2. Specification <a name="specification"></a>

The "User Defined" glyph has been split into three new glyphs: "Unspecified", "No Glyph Assigned", and "Composite".  We have not yet, however, defined a glyph for "No Glyph Assigned"

A number of proposals have been made, from which we need to pick one to be RECOMMENDED for each and may choose to pick others as alternatives.  The proposal is:

* When a part has no assigned glyph it is RECOMMENDED that a user provide their own glyph. The user is also encouraged to submit the new glyph for possible adoption into the SBOLv standard.

* An alternative is brackets, suggesting information that needs to be filled in:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/caef417/Glyphs/no-glyph-assigned/no-glyph-assigned-brackets-specification.png)

As a best practice, it is suggested that the name of the term be put in between the brackets.


## 3. Examples <a name='example'></a>

No Glyph Assigned is intended to be used for any Component that is not covered by other SBOL Visual glyphs.
For example, at present there is no glyph recommended for representing a transposon.

## 4. Backwards Compatibility <a name='compatibility'></a>

The "User Defined" rectangle will remain as a RECOMMENDED or alternative glyph for No Glyph Assigned.

## 5. Discussion <a name='discussion'></a>

Alternatives currently without support:

* Keep the "User Defined" rectangle as RECOMMENDED, a plain rectangle suggesting a blank slate to be written upon:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/user-defined-specification.png)

Alternate stylings of this rectangle might be preferred by users and tools:

* A tall thin rectangle, which some fonts use as an alternative "replacement character":

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/tall-rectangle-specification.png)

* A dashed line rectangle, implying something is missing:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/8423527/Glyphs/user-defined/dashed-rectangle-specification.png)

Note that the User Defined rectangle causes No Glyph Assigned to conflict with Composite. We might correct this, however, by allowing the rectangle to be used only as part of a base glyph in composite, and withdrawing its use as an alternative for that glyph. Its use in Composite would then be distinguished by inclusion of the secondary backbone, e.g.,:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/86de2f5/Glyphs/composite/abbreviated-composite-example2.png)

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
  <span property="dct:title">SEP V006</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>