# Polypeptide Region

## Associated SO term(s)
SO:0000839 (polypeptide region)

## Recommended Glyph and Alternates
A polypeptide region inside a coding sequence is indicated by insertion of triangular boundaries inside of the CDS, parallel to the 3' side of the CDS.  This will produce chevron segments on the 3' side and a CDS shape on the 5' side:

![glyph specification](polypeptide-region-specification.png)


## Prototypical Example

degradation tag on a protein coding sequence

nuclear localization tag on a protein coding sequence

coding sequence for the membrane-crossing region of a protein

This glyph is intended to be used in composition or superposition with the glyph for the coding sequence of which the polypeptide regions are fragments: Example of a coding sequence with three designated domains, an N-tag (blue), C-tag (yellow), and internal region (red):

![example of usage](polypeptide-region-example.png)

## Notes
Polypeptide region can also be used to represent regions that involve cleavage, such as a 2A self-cleaving polypeptide region (SO:0002224, a child term of SO:0000839). It is RECOMMENDED that cleavage-inducing polypeptide regions be visually distinguished from intact, e.g., through the use of dashed lines.

![example of usage](polypeptide-2a-example.png)
