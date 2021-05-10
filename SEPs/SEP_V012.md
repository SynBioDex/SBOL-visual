# SEP V012: Transcription and translation end points

| SEP | |
| --- | --- |
| **Title** | Transcription and translation end points |
| **Authors** | Thomas Gorochowski, John Sexton, Jacob Beal |
| **Editor** | |
| **Type** | Specification |
| **SBOL Visual Version** | 2.1 |
| **Status** | Accepted |
| **Created** | 07-Apr-2018 |
| **Last modified** | 19-Apr-2018 |
| **Issue** | [#41](https://github.com/SynBioDex/SBOL-visual/issues/41) |

## Abstract

This SEP proposes to add a specific biopolymer tag for denoting the end points of transcription (i.e. end of a transcript) and translation (i.e. start of a stop codon).

## 1. Rationale <a name="rationale"></a>

It is sometimes necessary to highlight the precise end point of a transcript or the start position of stop codons in a coding region. At present, these are implicitly present within transcription terminators or the end of a CDS region when describing a DNA design. This is insufficient if such points are of particular interest, or if numerous potential end points (both for transcription and translation) are present.

## 2. Specification <a name="specification"></a>

### Transcription end point

#### Associated SO term(s)

SO:0000616) Transcription End Site

#### Recommended Glyph and Alternates

Transcription end points will be represented as a biopolymer location with a DNA stem and an asterisk in the box at the top (note that this accommodates font level style differences such as asterisks with varying numbers of points).

![image](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/e64d26c305/Glyphs/stop-codon/transcription-end.png)

### Translation end point

#### Associated SO term(s)

SO:0000319 Stop Codon
SO:0000327 Coding End, Translation Termination Site, Translation End

#### Recommended Glyph and Alternates

Translation end points will be represented as a biopolymer location with a RNA stem and an asterisk in the box at the top (note that this accommodates font level style differences such as asterisks with varying numbers of points).

![image](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/e64d26c305/Glyphs/stop-codon/translation-end.png)

## 3. Examples

See above.

## 4. Backwards Compatibility <a name='compatibility'></a>

SBOL Visual does not currently have a specific symbol for these elements, so there are no backwards compatibility issues.

## 5. Discussion <a name='discussion'></a>

Some alternatives for Stop Codon that were considered but did not gain support:

![image](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/e64d26c305/Glyphs/stop-codon/stop-codon.png)

![image](https://raw.githubusercontent.com/SynBioDex/SBOL-visual/e64d26c305/Glyphs/stop-codon/stop-codon-variant.png)

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
