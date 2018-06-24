# SEP V010: Arrows

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Chris Myers, Anil Wipat, Zachary Palchick, Nicholas Roehner, Bryan Bartley, Ruud Stoof, Jacob Beal |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 2.0 |
| **Status** | Accepted |
| **Created** | 10-Oct-2017 |
| **Last modified** | 19-Oct-2017 |
| **Issue**       | [#17](https://github.com/SynBioDex/SBOL-visual/issues/17) |

## Abstract

This SEP proposes to add arrow types to represent interactions.


## 1. Rationale <a name="rationale"></a>

We need to represent interactions of different types.  As much as possible, we would like to adhere to standards already proposed in the SBGN-AF language.  Should though be easy to draw, scale properly, and be consistent with what synthetic biologists are already using in their diagrams.  

## 2. Specification <a name="specification"></a>

### Stimulation

#### Associated SBO term(s)

SBO:0000170 Stimulation

#### Recommended Glyph and Alternates

An arrow with an head that is empty or of a different color than the line, per SBGN:

![image](https://user-images.githubusercontent.com/2539464/31392865-9c042c26-adda-11e7-82c6-04e7db942882.png)

#### Prototypical Example

Activation of pTAL14 promoter by Gal4VP16 activator

### Inhibition

#### Associated SBO term(s)

SBO:0000169 Inhibition

#### Recommended Glyph and Alternates

An arrow whose sink is a bar, suggesting blocking, per SBGN:

![image](https://user-images.githubusercontent.com/2539464/31392755-5c893456-adda-11e7-9e94-b224a0995209.png)

#### Prototypical Example

Repression of pTAL14 promoter by TAL14


### Control

#### Associated SBO term(s)

SBO:0000168 Control

#### Recommended Glyph and Alternates

An arrow with a diamond head, per SBGN:

![modulation_arrowhead_sized](https://user-images.githubusercontent.com/2539464/31395052-20c86486-ade0-11e7-97e8-14447561f450.png)

#### Prototypical Example

Inversion of a sequence flanked by FRT sites by FLP recombinase


### Process

#### Associated SBO term(s)
SBO:0000375 Process

#### Recommended Glyph and Alternates

An arrow with a filled head the same color of the line, per SBGN:

![image](https://user-images.githubusercontent.com/2539464/31392807-7e998f50-adda-11e7-918f-62626750ed06.png)

#### Prototypical Example

Production of Green Fluorescent Protein (GFP) from the gfp Coding Sequence

#### Notes:
The assocated SBO term also covers
- SBO:0000176 Biochemical Reaction
- SBO:0000589 Genetic Production (source is DNA component, sink is usually RNA or Macromolecule)
- SBO:0000177 Non-covalent Binding (sink is a Complex)

### Degradation

#### Associated SBO term(s)

SBO:0000179 Degradation

#### Recommended Glyph and Alternates

Identical to the Process glyph, but with an empty set at the sink of the arrowhead:

![image](https://user-images.githubusercontent.com/2539464/31393991-6ecc1432-addd-11e7-95aa-8ec80e670722.png)

#### Prototypical Example

Cellular recycling of mRNA


## 3. Examples <a name='example'></a>

See examples in individual glyph proposals


## 4. Backwards Compatibility <a name='compatibility'></a>

SBOL Visual does not currently support interactions, so there are no backwards compatibility issues.

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
  <span property="dct:title">SEP V010</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>