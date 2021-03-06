# SEP V017: Protein, Macromolecule, and Alternative Simple Chemicals

| SEP | |
| --- | --- |
| **Title** | Protein, Macromolecule, and Alternative Simple Chemicals |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | Zach Palchick |
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Accepted |
| **Created** | 1-June-2019 |
| **Last modified** | 11-July-2019 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/67 |


## Abstract

Proteins are currently represented by the Macromolecule glyph, which looks much like the "shmoo" shape that people often use to represent yeast cells. This SEP proposes to represent proteins explicitly with the "pill" glyph, and allow a family of different simple shapes to represent simple chemicals.

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
- Simple chemical is changed from circle/pill to small simple polygon, with alternate of small circle.

Macromolecule is either left unchanged or has the "shmoo" deprecated.

### Alternatives that must be voted on:
1. Should Macromolecule a) have rounded-rectangle become RECOMMENDED, leaving "shmoo" as an alternative, or b) have rounded rectangle become RECOMMENDED and deprecate "shmoo" (i.e., mark it for future removal).  **RESULT: shmoo is deprecated**
2. Should the "pill" Protein glyph be adopted, or should proteins be represented by the Macromolecule rounded-rectangle? **RESULT: "pill" is adopted**
3. Simple Chemical is proposed to changed from "large circle / pill" to some subset of the collection of "stretchable hexagon", "small circle", "small simple polygon", and molecular diagram. Which of these glyphs do you support allowing (check all that apply)?
  * "stretchable hexagon" **RESULT: rejected**
  * "small circle" **RESULT: alternative**
  * "small simple polygon"  **RESULT: RECOMMENDED**
  * "molecular diagram"  **RESULT: rejected**
4. Should the RECOMMENDED glyph for Simple Chemical be (a) stretchable hexagon or (b) small circle? **RESULT: neither: "small simple polygon" is RECOMMENDED**

## 2. Specification <a name="specification"></a>

New or updated definitions for each glyph follow:

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

Note that the Protein glyph is not compatible with SBGN 2.0 diagrams, as the pill shape is used for simple chemicals in SBGN 2.0 (SBGN 1.x uses a circle). For SBGN 2.x compatibility, Protein should instead be represented by its superset concept of Macromolecule.

### Simple Chemical

#### Associated SBO term(s)
SBO:0000247 Simple chemical

#### Recommended Glyph and Alternates
The simple chemical glyph is any one of three small polygonal shapes, triangle, pentagon, or hexagon:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-triangle-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-pentagon-specification.png)
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-hexagon-specification.png)

Alternately, a simple chemical may also be represented a small circle:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-circle-specification.png)

#### Prototypical Example

Arabinose

#### Notes
It is RECOMMENDED that visual differentiation be maximized by associating each distinct species in a diagram with a different small geometric shape. Rotations may also be used (e.g., pentagon pointing up vs. pentagon pointing down).

It is RECOMMENDED that labels should be placed outside of the shapes rather than inside, to avoid squeezing the labels.

To avoid confusion with pills or ellipses, when the small circle alternative glyph is used, it SHOULD be significantly smaller than other types of molecular species glyphs, as indicated by the recommended scale of the glyph.

Alternate BioPAX definition: Small Molecule: http://www.biopax.org/release/biopax-level3.owl#SmallMolecule

### Complex

Examples will be updated to match new glyphs for this SEP. One set of possible updates:

* Protein bound with small molecule (hexagon version of simple chemical):

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/13c2220/Glyphs/FunctionalComponents/complex/complex-ps-specification.png)

* Protein bound with RNA:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/13c2220/Glyphs/FunctionalComponents/complex/complex-pr-specification.png)
  
* Two proteins bound together:

  ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/13c2220/Glyphs/FunctionalComponents/complex/complex-pp-specification.png)

### Macromolecule

#### Recommended Glyph and Alternates
The macromolecule glyph is a rounded rectangle, as used in SBGN:
 
 ![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/13c2220/Glyphs/FunctionalComponents/macromolecule/macromolecule-specification.png)
 
A deprecated alternative is a diagonally offset union of a large and small circle, intended to invoke the complex shapes of protein. It is now deprecated for being too similar to a yeast cell "shmoo" symbol:
 
![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/13c2220/Glyphs/FunctionalComponents/macromolecule/macromolecule-deprecated-specification.png)
 
#### Prototypical Example
 
AraC protein, polymerized chitin
 
#### Notes
*this section deliberately blank*

## 3. Examples <a name='example'></a>

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/1a03bcb/SEPs/SEPV017-protein-simplechem-sampler.png)


## 4. Backwards Compatibility <a name='compatibility'></a>

The "shmoo" Macromolecule glyph is being retained to support backward compatibility.  It may or may not be schedule for deletion at a future date, depending on the outcome of the deprecation vote.

Of greater concern is the fact that "pill" (or "stadium") has been used to represent simple chemicals in published diagrams that will now be invalid. 

Compatibility with SBGN use of "stadium" will also be reduced as of SBGN PD 2.0, which has just been released (SBGN 1.x uses circle, not stadium). Diagrams can still be simultaenously SBOL Visual and SBGN 2.0 compatible, however, by representing protein as its superset concept Macromolecule and using circle for Simple Chemical.


## 5. Discussion <a name='discussion'></a>

Extensive discussion on both a GitHub issue (https://github.com/SynBioDex/SBOL-visual/issues/60) and mailing list thread (https://groups.google.com/d/topic/sbol-visual/icUP1WXgKzw/discussion) failed  to produce any novel glyph with significant support. 

Instead, opinion seemed to push hard toward using the simple "pill" glyph for proteins and changing simple chemicals to be small circles.

Strong concerns were raised regarding the potential confusion between ellipse, pill, and circle. Setting simple chemicals to one specific small polygon was also not found acceptable in discussion due to the fact that any given small polygon is a mismatch for the molecular structure of many simple chemicals (small molecules).

Backwards compatibility and compatibility with SBGN are also issues, but the consensus seems to have been that compatibility with "pill" images of proteins, including in the pending protein language, is more important. SBGN compatibility is still maintained, however, via Macromolecule and the circle variant of Simple Chemical.

A potential alternate glyph for protein is currently being deferred: a "pill" shape with lines extending from its ends.

![glyph specification](https://user-images.githubusercontent.com/1862877/58933854-41698780-8771-11e9-8eed-538147bfbf2d.png)

### Glyphs Rejected via Vote

Two Simple Chemical alternatives were rejected by vote:

- A hexagon that stretches sideways to accomodate longer names:

![glyph specification](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/a786daa/Glyphs/FunctionalComponents/simple-chemical/simple-chemical-specification.png)

- A simple chemical represented directly by its chemical diagram, using any standard form thereof.



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
