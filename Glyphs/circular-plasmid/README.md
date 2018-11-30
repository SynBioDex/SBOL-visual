# Circular Plasmid

## Associated SO term(s)

SO:0002211 Circular Plasmid - A self replicating circular nucleic acid molecule that is distinct from a chromosome in the organism.


## Recommended Glyph and Alternates

The glyph to indicate embedding in a plasmid is a turn of the backbone indicating its circular structure:

![glyph specification](circular-plasmid-specification.png)

## Prototypical Example

_E. coli_ p15A plasmid

## Notes

Note that for SBOL data representations, circularity SHOULD also be indicated with a type of SO:0000988.

Complementary "left" and "right" versions of this glyph SHOULD be used together, flanking the region whose genomic context is being described.

The Omitted Detail glyph SHOULD generally be concatenated to indicate that there is information about the plasmid not being represented.

Example of RECOMMENDED usage: a plasmid containing a functional unit consisting of promoter, ribosome entry site, CDS, and terminator:

![glyph specification](circular-plasmid-example.png)
