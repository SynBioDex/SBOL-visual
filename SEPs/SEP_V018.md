# SEP V018: Interactions with Interaction Nodes

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | TBD |
| **Type** | Specification |
| **SBOL Visual Version** | 2.3 |
| **Status** | Draft |
| **Created** | 5-Oct-2019 |
| **Last modified** | 29-Sept-2020 |
| **Issue**         | https://github.com/SynBioDex/SBOL-visual/issues/73 |


## Abstract

Many diagrams in practice include "interactions with interactions."
This SEP establishes the circumstances in which such a form is allowed.

## Table of Contents  <remove TOC if SEP is rather short>
- [1. Rationale](#rationale) 
- [2. Specification](#specification)
- [3. Example or Use Case](#example)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [References](#references)
- [Copyright](#copyright)

## 1. Rationale <a name="rationale"></a>

Many practitioners draw diagrams that include "interactions with interactions", such as an inducer molecule stimulating a repression interaction.

This practice can be made compatible with SBOL Visual by allowing edges into a process node to have arrowheads that specify their role, then identifying the circumstances under which the process node can be omitted unambiguously.

Introducing this change also requires clarifying the definition of interaction nodes, which previously had some ambiguities and inconsistencies.

## 2. Specification <a name="specification"></a>

In Section 5.4 (Interaction) of the specification, the following sentence defining interaction nodes will be moved from item 5.4.3 (multi-head/multi-tail edges) to item 5.4.4 (interaction nodes), along with its associated example figures:

> A glyph at the point where an edge splits or joins represents a biochemical process, i.e., an additional Interaction with type and roles set by the process glyph.

Figure 18(e) will be deleted, being replaced with the more specifically tailored Figure 20(b).

The following new items will be added:

> * An edge with its head at an interaction node MAY use an Interaction arrowhead to indicate a role other than Reactant (SBO:0000010) in the biochemical process. An example is provided in 20(a).
> * An edge with its tail at an interaction node MAY use an Interaction arrow head to indicate an additional Interaction in which this product of the biochemical process has the tail role associated with that type. An example is provided in 20(b).

> ![Figure 20](img/SEPV018-fig20.png)


> Figure 20: (a) Example of interaction node with an additional role indicated by an entering arrow head: association of gRNA and Cas9 inhibited by the presence of a competing gRNA. (b) Example of a composite edge pattern representing two interactions: CRISPR complex formation with dCas9, where that complex then represses a promoter.

> * The head of a “higher-level” directed edge E<sub>1</sub> MAY connect to an intermediate point on another “target” edge E_2, forming an “interaction with an interaction” pattern. The “higher-level” edge form is equivalent to
an expansion into a pattern of three interactions with an unspecified intermediate molecular species S, as follows:
>  * The head of the “higher level” edge E1 is the unspecified species S.
>  * The tail of the “target” edge E2 is the unspecified species S.
>  * The unspecified species S is the Product (SBO:0000011) of a Process (SBO:0000375) Interaction whose Reactant (SBO:0000010) is the original tail of the “target” edge E2.
> 
>  Note that this applies only to heads, as an intermediate tail cannot be distinguished from multiple heads, as specified above; likewise, the connection point on the “target” edge MAY be a non-split portion of a multi-head or multi-tail edge, but MUST NOT be a branch of a multi-head or multi-tail arrow. An edge MUST NOT be the “target” for more than one “higher-level” edge, as the expansion of such a form would be ambiguous. Having a “higher-level” edge also be a “target” edge is NOT RECOMMENDED. Examples are provided in Figure 21.

> ![Figure 21](img/SEPV018-fig21.png)
> 
> Figure 21: Examples of allowed and forbidden use of higher-level edges: (a) aTc inhibiting repression by TetR, and (b) the expanded equivalent with no higher-level edges, in which the TetR protein is explicitly represented (both diagrams labelled to show the expansion pattern). (c) A higher-level edge MAY connect to a non-split portion of a multi-head or multi-tail edge, but (d) higher-level edges MUST NOT connect to a branch of a multi-head or multi-tail edge, (e) higher-level edges MUST NOT connect to the head or tail of an edge, and (f) higher-level edges MUST NOT share a target edge. (g) A higher-level edge is NOT RECOMMENDED to also be a target of another higher-level edge.


## 3. Examples <a name='example'></a>

See above examples to be included in the specification.


## 4. Backwards Compatibility <a name='compatibility'></a>

This change is backward compatible, as all previous diagrams are still valid with the same meaning.


## 5. Discussion <a name='discussion'></a>

The original concept of this approach was to have an additional interaction nodes be implicit, rather than an unspecified species. This turned out not to be as cocherent an approach, however.


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
  <span property="dct:title">SEP V018</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
