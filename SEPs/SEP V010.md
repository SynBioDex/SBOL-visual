# SEP V010: Arrows

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Chris Myers, Anil Wipat, Zachary Palchick, Nicholas Roehner, Bryan Bartley, Ruud Stoof |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 2.0 |
| **Status** | Draft |
| **Created** | 10-Oct-2017 |
| **Last modified** | Never |

## Abstract

This SEP proposes to add arrow types to represent interactions.


## 1. Rationale <a name="rationale"></a>

We need to represent interactions of different types.  As much as possible, we would like to adhere to standards already proposed in the SBGN-AF language.  Should though be easy to draw, scale properly, and be consistent with what synthetic biologists are already using in their diagrams.  

## 2. Specification <a name="specification"></a>

### Stimulation

Associated SBO term: SBO:0000170 Stimulation

![image](https://user-images.githubusercontent.com/2539464/31392865-9c042c26-adda-11e7-82c6-04e7db942882.png)

Note: arrowhead should not be filled.

### Inhibition

Associated SBO term: SBO:0000169 Inhibition

![image](https://user-images.githubusercontent.com/2539464/31392755-5c893456-adda-11e7-9e94-b224a0995209.png)

### Control

Associated SBO term: SBO:0000168 Control

![modulation_arrowhead_sized](https://user-images.githubusercontent.com/2539464/31395052-20c86486-ade0-11e7-97e8-14447561f450.png)

### Genetic Production

Associated SBO term: SBO:0000589 Genetic Production

![image](https://user-images.githubusercontent.com/2539464/31392807-7e998f50-adda-11e7-918f-62626750ed06.png)

Source of the arrowhead should be a DNA component, and sink could be either an RNA or Macromolecule.

Note: arrowhead should be filled.

### Non-covalent Binding

Associated SBO term: SBO:0000177 Non-covalent Binding

![image](https://user-images.githubusercontent.com/2539464/31392807-7e998f50-adda-11e7-918f-62626750ed06.png)

Source of the arrowhead should not be a DNA component, and sink should be a complex component.

Note: arrowhead should be filled.

### Degradation

Associated SBO term: SBO:0000179 Degradation

![image](https://user-images.githubusercontent.com/2539464/31393991-6ecc1432-addd-11e7-95aa-8ec80e670722.png)

There should be an empty set at the sink the arrowhead.

Note: arrowhead should be filled.

### Biochemical Reaction

Associated SBO term: SBO:0000176 Biochemical Reaction

![image](https://user-images.githubusercontent.com/2539464/31392807-7e998f50-adda-11e7-918f-62626750ed06.png)

Does not match any of the other patterns.

Note: arrowhead should be filled.

## 3. Examples <a name='example'></a>

TBD

## 4. Backwards Compatibility <a name='compatibility'></a>

SBOL Visual does not currently support interactions, so there is no backwards compatibility issues.

## 5. Discussion <a name='discussion'></a>

TBD

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