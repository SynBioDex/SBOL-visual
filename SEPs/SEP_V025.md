# SEP V025: Handle nucleic acid parts with overlapping sequences

| SEP | |
| --- | --- |
| **Title** | Overlapping parts |
| **Authors** | Thomas Gorochowski (tom@chofski.co.uk) |
| **Editor** | James Scott Brown |
| **Type** | Specification |
| **SBOL Visual Version** | 3.0 |
| **Status** | Draft |
| **Created** | 7-Oct-2022 |
| **Last modified** | 7-Oct-2022 |
| **Issue** | [#155](https://github.com/SynBioDex/SBOL-visual/issues/155) |


## Abstract

This SEP presents the proposed change to SBOL Visual 3.0 to enable the representation of nucleic acid parts with overlapping sequences.

## <a name="rationale"></a> 1. Rationale

There are cases where numerous nucleic acid parts are encoded by overlapping sequences to function as a single entity. To be able to clearly describe in diagrams the role of these composite and overlapping parts as a single connected entity and support functional interactions to specific nucleic acid features within these, we need a way to distingush them.

## 2. Specification <a name="specification"></a>



- Addition of a new visual annotation to the backbone in a diagram to cover a group of nucleic acid glyphs that have overlapping sequences. Glyphs within the grouping can be in any order and no guarentees are provided as to their relative position within the region. This is due to the fact that parts could have identical start points making it impossible to order them.

## 3. Examples <a name='example'></a>

Examples are embedded in the text as needed above.

## <a name='compatibility'></a> 4. Backwards Compatibility

This change is fully backward compatible. Only a new visual annotation is suggested.

## <a name='discussion'></a> 5. Discussion

TBD

## <a name='copyright'></a> Copyright

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
  <span property="dct:title">SEP V024</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
