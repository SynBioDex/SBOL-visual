# SEP V012: Stop Codons

| SEP | <leave empty> |
| --- | --- |
| **Authors** | Thomas Gorochowski |
| **Editor** | <leave empty> |
| **Type** | Specification |
| **SBOL Visual Version** | 2.0 |
| **Status** | Draft |
| **Created** | 07-Apr-2018 |
| **Last modified** | 15-Apr-2018 |

## Abstract

This SEP proposes to add a specific biopolymer tag for stop codons in coding regions.

## 1. Rationale <a name="rationale"></a>

It is sometimes necessary to highlight stop codons in a coding region. At present, the stop codon is implicitly part of a CDS when describing a DNA design, but this is not ideal when the stop codon is the point of interest in a diagram.

## 2. Specification <a name="specification"></a>

The stop codon will be represented as a specific biopolymer location with either a cross or asterisk in the box at the top. The stem denotes the precise location on the DNA backbone.

![image](https://raw.githubusercontent.com/chofski/SBOLv/master/SEPs/SEP_V012-stop-codon/stop-codon.png)

![image](https://raw.githubusercontent.com/chofski/SBOLv/master/SEPs/SEP_V012-stop-codon/stop-codon-variant.png)

## 3. Examples

See above.

## 4. Backwards Compatibility <a name='compatibility'></a>

SBOL Visual does not currently have a specific symbol for stop codons, so there are no backwards compatibility issues.

## 5. Discussion <a name='discussion'></a>stop-codon

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
  <span property="dct:title">SEP V012</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
