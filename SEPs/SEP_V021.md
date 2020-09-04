# SEP V021: Add Non Directional Arrow(line) for Interactions of Unknown Type

| SEP | |
| --- | --- |
| **Authors** | Logan Terry |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.2 |
| **Status** | Draft |
| **Created** | 3-Sep-2020 |
| **Last modified** | 3-Sep-2020 |
| **Issue**         |  |


## Abstract

This SEP proposes to add a non directional arrow(line) for interactions of unknown type, or participants with unkown role, where a directionality can't be inferred.

## 1. Rationale <a name="rationale"></a>

There is currently no defined way to show an interaction where the directionality can't be inferred.

## 2. Specification <a name="specification"></a>

Section 5.4 (Interaction) after

> A directed edge "arrow" attached to one or more glyphs indicates a functional interaction involving those elements. 

add

> If no directionality can be inferred from the SBOL 2 data, an edge without arrows may be used.

## 3. Examples <a name='example'></a>

In the SBOLTestSuite https://github.com/SynBioDex/SBOLTestSuite/blob/master/SBOL2/ModuleDefinitionOutput.xml both interactions have a participant of role SBO:0000598 promoter which has been made obsolete. Newer visualization tools will likely not be able to infer direction in this case, as they are expecting SBO:0000642 inhibited.

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
