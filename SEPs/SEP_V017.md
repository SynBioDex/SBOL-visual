# SEP V017: Protein, Deprecated Macromolecule, and Alternative Small Molecules

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | Hasan Baig |
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Draft |
| **Created** | 1-June-2019 |
| **Last modified** |  |
| **Issue**         |  |


## Abstract

Proteins are currently represented by the Macromolecule glyph, which looks much like the "shmoo" shape that people often use to represent yeast cells. This SEP proposes to deprecate the "shmoo", represent proteins explicitly with the "pill" glyph, and allow a family of different simple shapes to represent simple chemicals.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

The Macromolecule glyph looks a lot like a yeast "shmoo" form, which has been noted as potentially confusing by a number of people. Furthermore, now that SEP V015 allows us to use SBO terms, we can have an actual Protein glyph, not just lump proteins in with all other large molecules.

We thus propose the following changes:

- A Protein glyph is added, with "pill" shape
- Simple chemical is changed from chemical to hexagon, with alternates of small circle, small simple polygon, and molecular diagram.
- Macromolecule deprecates the "shmoo" and recommends the current alternate "rounded rectangle"

## 2. Specification <a name="specification"></a>

New or updated definitions for each glyph follow:

### Macromolecule

#### Associated SBO term(s)
SBO:0000245 Macromolecule

#### Recommended Glyph and Alternates
The macromolecule glyph is a rounded rectangle, as used in SBGN:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/d792cc5/Glyphs/FunctionalComponents/macromolecule/macromolecule-specification.png)

A deprecated alternative is a diagonally offset union of a large and small circle, intended to invoke the complex shapes of protein. It is now deprecated for being too similar to a yeast cell "shmoo" symbol:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/d792cc5/Glyphs/FunctionalComponents/macromolecule/macromolecule-deprecated-specification.png)

#### Prototypical Example

AraC

#### Notes
Note that this also covers BioPAX term Protein: http://www.biopax.org/release/biopax-level3.owl#Protein


### Protein

#### Associated SBO term(s)
SBO:0000252 Polypeptide Chain

#### Recommended Glyph and Alternates
The protein glyph is a "pill" shape with a rectangular body and rounded ends, representing the compact space-filling mass of many proteins:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/d792cc5/Glyphs/FunctionalComponents/protein/protein-specification.png)

#### Prototypical Example

AraC protein

#### Notes
To avoid confusion with circles or ellipses, the "pill" shape SHOULD be significantly longer than it is tall, emphasizing its straight sides.

Alternate BioPAX definition: Protein: http://www.biopax.org/release/biopax-level3.owl#Protein


### Simple Chemical

#### Associated SBO term(s)
SBO:0000247 Simple chemical

#### Recommended Glyph and Alternates
The simple chemical glyph is a hexagon that stretches sideways to accomodate longer names:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-specification.png)

Alternately, a simple chemical may also be represented by one of several small simple geometric shapes, a circle, triangle, pentagon, or hexagon:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-circle-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-triangle-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-pentagon-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-hexagon-specification.png)

Finally, a simple chemical may also be represented directly by its chemical diagram, using any standard form thereof.

#### Prototypical Example

Arabinose

#### Notes
To avoid confusion with pills or ellipses, when the small circle alternative glyph is used, it SHOULD be significantly smaller than other types of molecular species glyphs, as indicated by the recommended scale of the glyph.

Alternate BioPAX definition: Small Molecule: http://www.biopax.org/release/biopax-level3.owl#SmallMolecule

### Complex

Examples are updated to match new glyphs for this SEP:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/7371b94/Glyphs/FunctionalComponents/complex/complex-ps-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/7371b94/Glyphs/FunctionalComponents/complex/complex-pr-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/7371b94/Glyphs/FunctionalComponents/complex/complex-pp-specification.png)


## 3. Examples <a name='example'></a>

No examples are needed.

## 4. Backwards Compatibility <a name='compatibility'></a>

The "shmoo" Macromolecule glyph is being retained (though deprecated) to support backward compatibility.

Of greater concern is the fact that "pill" (or "stadium") has been used to represent simple chemicals in published diagrams that will now be invalid. Compatibility with SBGN use of "stadium" will also be broken as of SBGN PD 2.0, which has just been released (SBGN 1.x uses circle, not stadium).

## 5. Discussion <a name='discussion'></a>

Extensive discussion on both a GitHub issue (https://github.com/SynBioDex/SBOL-visual/issues/60) and mailing list thread (https://groups.google.com/d/topic/sbol-visual/icUP1WXgKzw/discussion) failed  to produce any novel glyph with significant support. 

Instead, opinion seemed to push hard toward using the simple "pill" glyph for proteins and changing small molecules to be small circles.

Strong concerns were raised regarding the potential confusion between ellipse, pill, and circle. Setting simple chemicals to a small polygon was also not found acceptable in discussion due to the fact that any given small polygon is a mismatch for the molecular structure of many small molecules.

Backwards compatibility and compatibility with SBGN are also issues, but the consensus seems to have been that these are not significant problems.


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
  <span property="dct:title">SEP V015</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
