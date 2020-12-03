# SEP V023: SBOL Visual specification change workflow

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | TBD |
| **Type** | Process |
| **Status** | Draft |
| **Created** | 9-Oct-2020 |
| **Last modified** | 23-Nov-2020 |
| **Issue**         | TBD |


## Abstract

This SEP codifies expectations about how to propose and implement changes in SBOL Visual.

## Table of Contents
- [1. Rationale](#rationale)
- [2. Catalog of SBOL Visual Content](#content)
  - [2.1 Repository Structure](#repository)
  - [2.2 Branches](#branches)
- [3. Specification Change Workflow](#workflow)
  - [3.1 Pre-SEP](#preSEP)
  - [3.2 SEP](#SEP)
  - [3.3 Non-SEP Changes](#NonSEP)
  - [3.4 Specification Releases](#release)
  - [3.5 Derivative Material](#derivativeupdate)
- [4. Backwards Compatibility](#compatibility)
- [5. Discussion](#discussion)
- [Copyright](#copyright)

## <a name="rationale"></a> 1. Rationale 

SBOL Visual has developed workflow practices that support the following goals:

 - Specification changes are developed with all information required for implementation before being put to a vote.
 - Glyphs and the specification are kept synchronized.
 - Changes can be deployed for pre-release immediately after adoption by vote.
 - Specification releases can be deployed quickly and coherently.

This workflow has not previously been documented, however, making it harder for new contributors.  The workflow also does not yet incorporate all of the key artifacts linked to the specification. 
Finally, where possible the workflow should ensure that artifacts become marked with version and timestamp and can be automatically validated, and needs to make certain that old resources and pre-release resources are accessible in at least some form.

The goal of this document is to provide a well-defined workflow that addresses all of these needs.

Once adopted, this workflow will be added to the repository and linked in "How to contribute" material on the website and top-level README.


## <a name="content"></a> 2. Catalog of SBOL Visual Content

### <a name="repository"></a> 2.1. Repository Structure

The SBOL Visual repository should contain all of the maintained content for the SBOL Visual standard.

This content is broken into four major subsets, each in the directories specified:

- Primary content: _this is the "meat" of the specification_
  - Specification: the core document, including pages for each glyph.
     - `specification` contains LaTeX source for the current specification
     - `specification-releases` contains PDFs for all releases from 2.0 forward
  - Glyphs: each glyph is in its own subdirectory containing:
     - A README file providing its name, ontology term(s), glyph description, examples, and notes
     - An SVG file for the glyph.
     - An SVG "specification" file indicating bounding box, recommended alignment, and interior.
     - A PDF export of the glyph SVG, and a PNG export of the specification SVG
     
     _Note that the glyph contents are likely to change if parametric SVGs are adopted._

- Metacontent: _this is information about the past and future of the specification_
  - SEPs: "SBOL enhancement proposals" for improving the specification
  - Bibliography: _does not currently exist; needs to be created, and also mined for good examples for the website._

- Derivative content: _this is content that derived from the specification, automatically where possible_
  - Ontology: machine-readable information about the glyphs, derived from README files. _In the future, the relation may change to be the other way around._
  - Glyph page PDFs: snapshots of the glyph README files, to be included in the specification
  - Font: a font containing all glyphs, plus lines for building backbones and interactions
  - Ontology HTML & webservice: makes the most updated ontology and glyphs readily accessible for online tools
  - Website materials: _this collection needs to be created_
     - Training slides
     - Samplers
     - Glyph collection zips _likely to exist only as release binaries, rather than directly in the repository_
     - Examples from specification and/or training slides

- Scripting: _this is code for automatically constructing derivative material_
  - `specification/glyphscript`: scripts to generate specification glyph pages from READMEs
  - ontology construction (external): _needs to be in SynBioDex repository_
  - Needed but not yet existing:
     - Font update
     - Ontology web update
     - Sampler generation
     - Glyph collectio generation
     - Specification example scraper

<!--
Things to focus or deprecate:
 - parametric glyphs (once available)
 - SEP summary catalog (nice-to-have)
 - GraphViz (SBOL Visual 1 - deprecate, since GraphViz can use SVGs)
-->


### <a name="branches"></a> 2.3. Branches

SBOL Visual is developed following the git-flow pattern. 
Branches are thus organized as follows: 

  - master: used only for releases and SEPs
  - develop: pre-release content, includes approved SEP-based changes
  - other branches: proposed changes that have not yet been approved

_**All changes to primary content must go through pull requests.**_

_**DO NOT EDIT THE SPECIFICATION OR GLYPHS ON THE MASTER OR DEVELOP BRANCHES**_


## <a name='workflow'></a> 3. Specification Change Workflow

Changes to the primary content of the specification go through three stages:

 - Recognition of an issue and discussion of potential solutions
 - Formal change via an SEP and pull request
 - Release of new specification versions with accumulated changes

Derivative content of the specification needs to be updated as well, and different portions of the derivative content are updated at different stages of the process

### <a name='preSEP'></a> 3.1 Pre-SEP

The first stage of a change is recognition of an issue and discussion of potential solutions. 

1. **Open an issue on SBOL-visual:** While there may be various discusison on other channels, the point when a potential change starts being tracked in the workflow is when an issue is opened on the [SBOL visual repository](https://github.com/SynBioDex/SBOL-visual). Anyone can open an issue, and neither problem nor solution needs to be well-defined at this stage.
2. **Discuss on issue / mailing list:** Discussion ensues on some combination of the issue and the [sbol-visual mailing list](https://groups.google.com/g/sbol-visual). The issue is preferred, for more integrated tracking, while the mailing list is good for attracting more community attention to an issue. 
3. **Shift to SEP:** When discussion of an issue has reached the point where a coherent concrete proposal for a specification change is possible, then it is time to prepare an SEP. Note that some issues take an extremely long time to reach this point or never do, and that is OK. It is better to have outstanding known issues, which people may later come up with good ideas for, than to rush into a poor solution.

**Non-SEP Changes:** Many issues do not need to be resolved via an SEP. When changes affect only the presentation of primary content or affect only derivative content, they do not need an SEP. If there is any question, the matter should be put to the SBOL editors for judgement.

### <a name='SEP'></a> 3.2 SEP

The process of implementing a change via SEP goes as follows:

1. **Prepare draft specification change:** Specification changes go much more smoothly when the exact change is prepared in advance, ready to be implemented via a simple pull request. Preparing a precise change has also often revealed issues that might be otherwise overlooked or complementarily revealed that apparently complex challenges are simpler in practice than anticipated.
  - Create a branch off of `develop`
  - Make all of your primary content (glyph/specification) changes on that branch. 
    Make sure to include examples with the primary content.
  - _Make sure that ontology generation is passing and generating sane material. This will be included once [Issue #116](https://github.com/SynBioDex/SBOL-visual/issues/116) is completed._
  - Do not make a pull request until the SEP is approved.
2. **Draft SEP on master branch:** SEPs go to the `master` branch because the _proposal_ is immediately part of the community's permanent record, even if the _change_ turns out not to be adopted.
  - When possible, the SEP should contain the precise differences from the draft change branch. This is particularly easy with glyph changes, since the SEP and README are both written in Markdown, meaning that only the image links and header depth need to be changed.
  - When linking, link to the commit and not to the branch. The branch is transient, but the commit will not be if incorporated.
3. **Open an SEP issue:** Create an issue for discussion of the SEP, using the abstract for the SEP as the description, plus a link to the SEP.
  - Once the SEP issue is open, close any pre-SEP issue, referencing the SEP issue by number (e.g., "Closed in favor of SEP in issue #103") so that a cross-link appears.
4. **Discuss on issue / mailing list:** As the discussion proceeds, the SEP should be amended as needed in moving toward an approximate consensus.
5. **Vote on SEP:** Once approximate consensus has been achieved, move for a vote. The editors will organize the vote.
  - All significant contributors to the SEP and issue discussion should get added as authors for the specification.
  - _Ontology changes from draft change must pass validation before vote. This will be included once [Issue #116](https://github.com/SynBioDex/SBOL-visual/issues/116) is completed._
6. **Incorporate Changes:** After an SEP vote succeeds, the next step is to incorporate the change into the pre-release version of the specification on the `develop` branch.
  - Bring the SEP branch up to date with `develop`
  - The only derived content that should be updated at this stage is the ontology _(once [Issue #116](https://github.com/SynBioDex/SBOL-visual/issues/116) is completed)_
  - Set up a pull request into `develop`
  - _Once automation exists, make sure the pull request passes validation_
  - Editors should review, approve or request changes, and merge when satisfied.
  - Delete the branch after merge

**What if an SEP fails or is abandoned?**
This is not a major concern, as failure or abandoning typically happens at the pre-SEP stage. Nothing has yet been rejected, and in general nothing should ever be moved to a vote if there is not a good consensus on adoption. 
If it does happen, however, abandoned branches can be left in place for a few years at least, in case somebody comes up with a good idea to revive them.


**Tagging:** SEP issues should be tagged with `SEP` and also with tags indicating their stage in this process.
Current tags are: `Draft`, `ready for vote`, `final`, `accepted`/`rejected`/`withdrawn`

### <a name='NonSEP'></a> 3.3 Non-SEP Changes

Non-SEP changes follow essentially the same workflow as actually implementing an SEP-based change, except without the need for voting or a second issue.  To be concrete:

1. **Prepare draft specification change:** This is the same as for an SEP. Non-SEP changes will not typically add new authors, but if they are extensive enough that authorship is appropriate, then new authors should be added at this stage as well. One can then proceed directly to incorporating changes.
2. **Incorporate Changes:** Exactly the same as for an SEP change.

### <a name='release'></a> 3.4 Specification Releases

- **Version Numbers:** Releases are numbered following [semantic versioning](https://semver.org/).
Specification releases are typically yearly, paced by the timing of the [Journal of Integrative Bioinformatics](https://www.degruyter.com/view/journals/jib/jib-overview.xml) special issue on specifications. 
  - Major versions are likely to happen only in connection with a major version change in the SBOL data model.
  - Minor versions incorporate all SEPs that have been approved and incorporated since the last release.
  - Patch versions should be released if no SEPs have been approved in the past (approximate) year, but significant non-SEP changes have been made.  Patch versions should not be submitted for journal publication.

- **Relationship to SBOL data model:**
  - The specification should make an explicit statement of the SBOL data model specification version it supports.
  - Many users of SBOL Visual do not use the SBOL data model, so the relationship should be implemented primarily via the ontology.

- **Making a release:** A release should be produced via the following steps:
  1. Make a release branch (`release-X.X.X`) from `develop`.
  2. Update the release number in `master`.
  3. Make sure that pre-release derivative content is updated.
  4. Merge the release branch into `master` and `develop`.
  5. Cut a release from `master` via GitHub, describing with a (manual) summary of the approved SEPs newly included. SEP abstracts are a good source for this content.
  6. Make sure that post-release derivative content is updated.
  7. Increment the version number in `develop` and mark as pre-release.
  8. Delete the now-obsolete release branch.

Note that git automatically maintains all old release and pre-release information that lives in the repository; non-repository derived resources need to be handled separately.

### <a name='derivativeupdate'></a> 3.5 Derivative Material

Different pieces of derivative content need to be updated at different times in the workflow.

- **On merge to `develop`:**
  - Ontologym, Ontology HTML & webservice (as pre-release) _Implement once [Issue #116](https://github.com/SynBioDex/SBOL-visual/issues/116) is completed._
- **Before specification release**
  - Specification glyph pages: _should be automated in the future_
     - In the `specification/glyphscript` subdirectory, add new glyphs to the appropriate `.tex` list, then run `glyph-to-page` on all new or changed glyphs.
     - Running all glyphs is not a good idea, because the PDFs all get regenerated with new datestamps, which obscures the actual change in the diff.
  - Font _currently not being updated; will be once automation makes this simpler again_
  - Website materials
     - Samplers _should be automated_
     - Training slides - update manually, using samplers.
- **After specification release:**
  - Website materials:
     - Glyph collection zips _should be automated_
     - Examples from specification _should be automated_


## <a name='compatibility'></a> 4. Backwards Compatibility

No workflow was previously codified, so there can be no conflict.

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
  <span property="dct:title">SEP V023</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
