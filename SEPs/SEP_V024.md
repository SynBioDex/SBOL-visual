# SEP V024: SBOL Visual 3.0 changes

| SEP | |
| --- | --- |
| **Title** | SBOL Visual 3.0 |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | James Scott Brown |
| **Type** | Specification |
| **SBOL Visual Version** | 3.0 |
| **Status** | Draft |
| **Created** | 25-Mar-2021 |
| **Last modified** | 25-Mar-2021 |
| **Issue** | [#155](https://github.com/SynBioDex/SBOL-visual/issues/155) |


## Abstract

This SEP presents the proposed change from SBOL Visual 2.3 to SBOL Visual 3.0.

## <a name="rationale"></a> 1. Rationale 

Now that the SBOL 3 data standard has been released, we need to update SBOL Visual to be gounded in SBOL 3 rather than SBOL 2.

## 2. Specification <a name="specification"></a>

The major difference between SBOL Visual 3 and SBOL Visual 2 is that diagrams and glyphs are defined with respect to the SBOL 3 data model rather than the SBOL 2 data model. SBOL Visual 3 diagrams may still be related to the SBOL 2 data model by following the mapping between SBOL 3 and SBOL 2 data models provided in the SBOL 3 specification.

A byproduct of this change is that the use of dashed undirected lines for subsystem mappings has been removed. In SBOL Visual 2, dashed line mappings were analogous to an SBOL 2 MapsTo, which is a compound mapping relationship indicating both reference into a subsystem and one of several identity relationships. 

In SBOL 3, these functions have been divided between two classes, Constraint to indicate relationships (including identity) and ComponentReference to access subsystem features. In SBOL Visual 3, interactions crossing a subsystem boundary line indicate access of subsystem features via ComponentReference. As SBOL 3 Constraint objects can express many other relationships besides identity, however, the potential use of dashed undirected lines to indicate identity relationships is currently reserved as a potential future addition to the SBOL Visual 3 specification, but not yet implemented. Until a decision is made about how to represent these relationships, the specification is mute on both constraints and dashed undirected lines, which means that it is acceptable to use them, if desired, as an annotation indicating identity.

In addition, collection of glyphs has been modified as follows:
- The deprecated Insulator glyph and “shmoo” Macromolecule alternative glyph have been removed. 
- Deprecated BioPAX alternatives to SBO terms for molecular species glyphs have been removed.

The author list has also been reset, per standard SBOL major version practice.

For complete details see the pending pull request: https://github.com/SynBioDex/SBOL-visual/pull/154

## 3. Examples <a name='example'></a>

Examples are embedded in the text as needed above.

## <a name='compatibility'></a> 4. Backwards Compatibility

This change is not backward compatible, and thus requires a new major version of SBOL Visual.

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
