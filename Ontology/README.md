# SBOL Visual Ontology (SBOL-VO)
The SBOL Visual Ontology (SBOL-VO) provides a set of controlled terms to describe visual glyphs for genetic circuit designs.  The terms are organised based on their descriptions in community-edited [Markdown](https://github.com/SynBioDex/SBOL-visual/tree/master/Glyphs) files. Terms are defined for recommended and alternative glyphs in addition to terms to represent generic glyphs. SBOL-VO consists of the following items.

* **A base term**. The base term in the ontology is called "Glyph".
* **Terms for glyphs**. Examples include "AptamerGlyph", "AssemblyScarGlyph" and "AssemblyScarGlyphAlternative".
* **Properties**. SBOL-VO includes object properties such as "hasGlyph" and "isAlternativeOf" to define the relationships between different terms.
* **Annotations**. Terms are annotated using properties such as "defaultGlyph" and "recommended".
* **Ontological axioms**. Logical axioms restricting the use of SBOL-VO terms to specific biological roles and processes.

## Browse
[Browse the SBOL-VO terms via an HTML page.](http://synbiodex.github.io/SBOL-visual/Ontology/v2/sbol-vo.html)

The ontology can also be viewed after downloading and opening in an ontology editor, such as Protege.

## Download
SBOL-VO is available as an RDF file. [Click here](http://synbiodex.github.io/SBOL-visual/Ontology/v2/sbol-vo.rdf) to download the ontology. 

## Computational access: The SBOL-VO web service (SBOL-VO-WS)

**An HTTP-based glyph service**: The SBOL-VO web service(SBOL-VO-WS) has been developed to resolve SBOL-VO glyphs via an REST-based HTTP interface. The first matching glyph is returned by using a term from the SBOL-Visual Ontology, the Sequence Ontology or the Systems Biology Ontology. The `http://{SBOL-VO_WS}/glyph/{ONTOLOGY_TERM}"}` REST interface returns glyphs. The following example demonsrates retrieving the CDS glyph by either using the corresponding SBOL-VO or the Sequence Ontology term:
* http://iroh.scam.keele.ac.uk/sbol-visual-ws/glyph/SO:0000031 
* http://iroh.scam.keele.ac.uk/sbol-visual-ws/glyph/AptamerGlyph
  
**Searching for glyphs**: The SBOL-VO-WS can be used to search for glyphs using the `http://{SBOL-VO_WS}/query/{ONTOLOGY_TERM}"}` REST interface. Glyphs are searched for by using a term from the SBOL-Visual Ontology, the Sequence Ontology or the Systems Biology Ontology. Examples:
* http://iroh.scam.keele.ac.uk/sbol-visual-ws/query/CDSGlyph 
* http://iroh.scam.keele.ac.uk/sbol-visual-ws/query/SO:0000316
* http://iroh.scam.keele.ac.uk/sbol-visual-ws/query/SBO:0000231

**Retrieving metadata about glyphs**: The SBOL-VO-WS can also be used to retrieve metadata about SBOL Visual glyphs, using the  for glyphs using the `http://{SBOL-VO_WS}/metadata/{SBOL-VO_TERM}"}` REST interface. Examples:
* http://iroh.scam.keele.ac.uk/sbol-visual-ws/metadata/CDSGlyph


