# SEP V005: Ambiguities and Variants

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 1.1 |
| **Status** | Accepted |
| **Created** | 30-Aug-2017 |
| **Last modified** | 17-Sep-2017 |
| **Issue**         | [#9](https://github.com/SynBioDex/SBOL-visual/issues/9) |

## Abstract

A number of potential variants of existing glyphs have been proposed, and we need to put them to an up-or-down vote. We also need to clarify the position and/or interior of some of the existing glyphs.

There are ten glyphs potentially affected by these proposals: 
- Resolving ambiguity: Assembly Scar, CDS, Restriction Enzyme Recognition Site, Five-Prime Overhang, Five-Prime Sticky Restriction Site, Insulator, Operator, Origin of Replication, User Defined
- Proposed variants: CDS, Insulator, Operator, Terminator

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

Each glyph variant detailed below in its specification has been provided with an individual rationale for that glyph.  Examples are also embedded within each proposal.

## 2. Specification <a name="specification"></a>

### Assembly Scar

The assembly scar glyph is an "equal sign" image, the pattern produced by the union of a 5' sticky end and 3' sticky end glyph. The scar will cover the backbone, creating a visual break suggesting the potential disruption associated with a scar:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/ac064eb/Glyphs/assembly-scar/assembly-scar-specification-covering.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/1eb9426/Glyphs/assembly-scar/assembly-scar-specification-covering-doublestrand.png)

### CDS

The coding sequence glyph is a "box" with one side bent out arrow-like to show direction. Its recommended backbone alignment is to the middle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/cds-specification-middle.png)

A block arrow variant is already commonly used in diagrams:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/cds-specification-arrow.png)

Its recommended alignment will also be to the middle.

### Restriction Enzyme Recognition Site (Cleavage Site)

Recommended backbone alignment is centered on backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cleavage-site/restriction-enzyme-recognition-site-middle.png)

### 5' Overhang Site

The 5' overhang site glyph is an image of a strand of DNA extended on the 5' edge of its forward strand:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/five-prime-overhang/five-prime-overhang-specification.png)

With a double-stranded backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/five-prime-overhang/five-prime-overhang-specification-double.png)

### 5' Sticky Restriction Site

The 5' sticky restriction site glyph is an image of the lines along which two strands of DNA will be cut into 5' sticky ends. Vertical position with respect to the backbone is between a double backbone and in a break in a single backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/five-prime-sticky-restriction-site/five-prime-sticky-restriction-site-specification-middle.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/five-prime-sticky-restriction-site/five-prime-sticky-restriction-site-specification-break.png)

### Insulator

The insulator glyph is a box inside another box that isolates it from its environment.
Its interior is only the inner box:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-inner.png)

The position of the back bone will be below the backbone, as insulators are often used with respect to a construct associated with a particular strand (e.g., a promoter):

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-bottom.png)


### Operator

The operator glyph will be replaced by an open "cup" as in the binding sites of the proposed protein language:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-cup-specification-middle.png)


### Origin of Replication
The origin of replication glyph is a circle suggesting the "bulge" opened in a piece of circular DNA when replication is beginning:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/origin-of-replication/origin-of-replication-specification-middle.png)


### User Defined
The user defined component glyph is a plain rectangle. The backbone is RECOMMENDED to be placed at the bottom:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/user-defined/user-defined-specification-bottom.png)


## 3. Examples <a name='example'></a>

See examples in individual glyph proposals.

## 4. Backwards Compatibility <a name='compatibility'></a>

All proposals either provide clarity on existing ambiguous glyphs or else propose new non-conflicting variants.

## 5. Discussion <a name='discussion'></a>

The following proposed options have been considered, but do not have strong support and are thus being removed from consideration unless they pick up significant advocacy. They may be revisited in the future.

### Assembly Scar

Assembly Scar might be on on either side of or above the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/assembly-scar/assembly-scar-specification-middle.png)

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/assembly-scar/assembly-scar-specification-top.png)

### CDS

CDS backbone alignment might be to the middle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/cds-specification-middle.png)

A number of variants have been proposed; their alignment will match that of CDS except when otherwise noted. 

User Defined rectangle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/user-defined-specification.png)

Other alternatives include a chevron and asymmetric "halved" versions of the current CDS or block arrow:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/cds-specification-chevron.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/cds-specification-half.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cds/cds-specification-half-arrow.png)

### Restriction Enzyme Recognition Site (Cleavage Site)

Site on top of backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/cleavage-site/restriction-enzyme-recognition-site-middle.png)

### 5' Sticky Restriction Site

Vertical position with respect to the backbone might above the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/five-prime-sticky-restriction-site/five-prime-sticky-restriction-site-specification-top.png)

### Insulator

Insulator's fill might also be no interior, outer, or both boxes filled:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-outer.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-both.png)

The position of the back bone might also be centered, or hovering below:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-middle.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-hover.png)

Two possible alternate glyphs have also been proposed:

- A circle with an X through the middle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-circle.png)

- Parentheses around an ellipsis:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/insulator/insulator-specification-ellipsis.png)


### Operator

The operator glyph was a box marking a place:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-specification.png)

The glyph is proposed to be generalized to Binding Site, which also suggests it might be an open "cup" as in the binding sites of the proposed protein language. The bottom and hover options for alignment do not currently have support:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-cup-specification-bottom.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-cup-specification-hover.png)

Its recommended backbone alignment might be middle, bottom, or hovering above:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-specification-middle.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-specification-bottom.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/operator-specification-hover.png)

The notion of binding site might also simply be indicated by generalizing Restriction Enzyme Recognition Site to simply be a generic Recognition Site:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/restriction-enzyme-recognition-site-middle.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/operator/restriction-enzyme-recognition-site-top.png)

### Origin of Replication
The origin of replication might also be above the backbone:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/origin-of-replication/origin-of-replication-specification-top.png)


### Terminator

A number of variants have been proposed.  Some add asymmetry by:

- Adding a "blocking" line handing down on the left, cutting the terminator in half, or doing both:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-block.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-half.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-half-block.png)

Other variants make function more symbolic by:

- Looking somewhat like a stop sign (from the iGEM registry):

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-stop.png)

- Diagramming some sort of hairpin- or loop-like structure:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-hairpin.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-loop.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/terminator/terminator-specification-hairpin-loop.png)

### User Defined
The user defined component might be aligned at the middle, or hovering under the glyphs:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/user-defined/user-defined-specification-middle.png)![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOLv-realizations/e2c996c/Glyphs/user-defined/user-defined-specification-hover.png)

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
  <span property="dct:title">SEP V005</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>