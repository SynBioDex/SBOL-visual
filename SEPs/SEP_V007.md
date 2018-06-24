# SEP V007: Stem-Top Glyphs

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Draft |
| **Created** | 17-Sep-2017 |
| **Last modified** | 12-Nov-2017 |
| **Issue**       | [#12](https://github.com/SynBioDex/SBOL-visual/issues/12) |

## Abstract

This SEP proposes a systematic set of "stem-top" glyphs representing small sites affecting DNA, RNA, or protein. The glyphs in this system are Biopolymer Location, Stability Element, and Cleavage Site.

## 1. Rationale <a name="rationale"></a>

Stability Element and Cleavage site currently form a semi-systematic language for talking about two common types of small site using "stem-top" glyphs. There are several reasons to try to improve on the current system, however:

- The "circle pin" for stability site conflicts with common usage of "circle pin" to designate generic locations (in biology and elsewhere)
- There has been confusion about whether the protein symbols have a dashed stem or two lines for a stem.
- It is easy to confuse RNA and protein glyphs, since "dashed line" has no physical intuition
- When possible, line style is supposed to be reserved and not specified in glyphs
- Nuclease sites don't use the same system as protease and ribonuclease

## 2. Specification <a name="specification"></a>

This SEP proposes a systematic set of "stem-top" glyphs representing small sites affecting DNA, RNA, or protein.  The glyphs in this system are the current Stability Element and Cleavage Site glyphs, plus a new "Biopolymer Location" glyph

### Biopolymer Location

Associated SO term(s):

SO:0000699 (Junction, Boundary, Breakpoint)

SO:0001236 (Base)

SO:0001237 (Amino Acid)

This can thus represent either an SBOL "Cut" location or a "Range" or length 1

### Cleavage Site

Associated SO term(s)

SO:0001956 (Protease Site)

SO:0001977 (Ribonuclease Site)

SO:0001687 (Restriction Enzyme Recognition Site), SO:0001688 (Restriction Enzyme Cleavage Junction)

Note: Restriction site previously also associated with SO:0000061, but that was incorrect, since it refers to the binding site and *not* the location of cleavage)

Note: SO does not currently have Junction equivalents for ribonuclease and protease; a request to add these will be made if this SEP is approved.

### Stability Element

Associated SO term(s)

SO:0001955 (Protein Stability Element)

SO:0001957, SO:0001546 (RNA Stability Element)


### Recommended Glyph and Alternates

In this system:

- the stem glyph indicates whether the site affects DNA, RNA, or protein
- the top glyph indicates the type of site

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification.png)

### Stems
There are several proposals for the DNA / RNA / protein system for stems (showing in order left to right):

- Straight, Wavy, Looping lines:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-wavy.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/90e8478/Glyphs/cut/stem-top-specification-loops.png)

### Tops

 Biopolymer Location tops:

- Circle (RECOMMENDED):

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)

- Nothing:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-plain.png)


X-ase tops:

- An "X":

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-X.png)


Stability tops:

- Shield

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/90e8478/Glyphs/cut/stem-top-specification-shield.png)

### Notes
 Biopolymer Location is a general glyph for all zero- and one-length sequence features, including insertion and deletion sites and X-ase cut sites.

Biopolymer Location does not cover stability sites, since their length is typically multiple bases / amino acids.

## 3. Examples <a name='example'></a>

CRISPR-targeted insertion site, protease site

## 4. Backwards Compatibility <a name='compatibility'></a>

Some of the choices may conflict with current usage, and alternatives may not be a viable solution, depending on which options are chosen. 

## 5. Discussion <a name='discussion'></a>

Alternatives currently without support:

### Stems:
- Current system: [nothing], dashed, straight:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-dashed.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)

- Straight, Wavy, Sawtooth lines:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-wavy.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/cd93a0b/Glyphs/cut/stem-top-specification-sawtooth-sharper.png)


- One, two, three lines:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-double.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-triple.png)

- Two, wavy, one line:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-double.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-wavy.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)
### Tops

X-ase tops:
- Binding pocket square cup:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-cup.png)


Stability tops:
- Circle

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-straight.png)

- Semi-circle

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/a30f24c/Glyphs/cut/stem-top-specification-semicircle.png)


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
  <span property="dct:title">SEP V007</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
