# SEP V023: SBOL Visual specification change workflow

| SEP | |
| --- | --- |
| **Authors** | Jacob Beal (jakebeal@ieee.org) |
| **Editor** | TBD |
| **Type** | Process |
| **Status** | Draft |
| **Created** | 9-Oct-2020 |
| **Last modified** | 9-Oct-2020 |
| **Issue**         | TBD |


## Abstract

This SEP codifies expectations about how to propose and implement changes in SBOL Visual.

## 1. Rationale <a name="rationale"></a>

SBOL Visual has developed a workflow that supports the following goals:

 - Specification changes are developed in complete implementation detail before being put to a vote.
 - Glyphs and the specification are kept synchronized
 - Changes can be deployed for pre-release immediately after adoption by vote.
 - Specification releases can be deployed quickly and coherently

This workflow has not previously been documented, however, making it harder for new contributors.  The workflow also does not yet incorporate all of the key artifacts linked to the specification.  In particular, the workflow also needs to be extended to either embrace or deprecate the following:

 - ontology
 - ontology web service
 - font
 - community webpage (including samplers)
 - examples
 - training materials
 - parametric glyphs (once available)
 - SEP summary catalog (nice-to-have)
 - GraphViz (SBOL Visual 1 - deprecate, since GraphViz can use SVGs)

Finally, where possible the workflow should ensure that artifacts become marked with version and timestamp and can be automatically validated. Need to also make certain that old resources and pre-release resources are accessible in at least some form.

The goal of this document is to provide a well-defined workflow that addresses all of these needs.


## 2. Specification Change Workflow <a name="specification"></a>

Advertising "How to contribute":
- update the website based on this
- point to this SEP in the README for the repository


Repository structure:

- Content
  - Primary:
    - Specification
    - Glyphs
  - Metacontent:
    - SEPs
    - Bibliography (bibtex?)
      - Good examples for website
  - Derivative:
    - Ontology (privileged: must pass validation before vote)
    - Glyph page PDFs
    - Font
    - Ontology HTML & webservice
    - Website materials:
      - Training slides
      - Samplers
      - Glyph collection zips (github binary release via github action?)
      - Examples from specification & training
  - Scripting:
    - glyphpage
    - ontology transformation (external)

- Branches (git-flow pattern)
  - master: releases, SEPs
  - develop: pre-release: approved SEP-based changes
  - others: proposed changes before approval
  - all changes to the primary content go through pull requests


Pre-SEP:

- Open issue
- Discuss on issue / mailing list
- How to decide when it's time for an SEP - when a coherent concrete proposal is possible

SEP:

- Draft specification change (typically including SEP name or issue number):
  - Create a branch off of develop
  - Make all of your primary material (glyph/spec/ontology) changes on that branch
    - Make sure to include examples with the primary material
  - Make sure that ontology generation is passing and generating sane material
  - Do not make a pull request until SEP is approved
- Draft SEP on master branch
  - Don't link to the branch, because the branch is transient, but material should not be.
  - Should contain explicit diff from draft change 
- Open an issue, include abstract, and link to the SEP
- Once SEP is open, close pre-SEP issue (referencing the SEP issue by number (e.g., "Closed in favor of SEP in issue #103"), so a cross-link appears)
- Discuss on issue / mailing list
- Once approximate consensus has been achieved, move to a vote
  - All significant contributors to SEP issue get added as authors
- After vote succeeds
  - Bring branch up to date with develop
  - Checklist of all derived materials being updated (automate when possible - goal is no humans in the derived materials)
  - Set up pull request
  - Once automation exists, make sure it passes validation
  - Editor review, approval and merge
  - Delete branch after merge
- What if it fails / is abandoned? This is not common, once things get to the SEP stage; leave them for a few years at least.
- SEP issue status
  - SEP, Draft, ready for vote, final, accepted/rejected/withdrawn
  - Nothing has yet been rejected, so we'll not worry about that case until it happens

Specification releases:

- When to cut a release - typically yearly, paced by the JIB special issue
  - basically just cut with the set of SEPs approved at the time
- How the number changes - SemVer, desired to be coherent in major number with SBOL data
  - Needs to have an explicit statement of its link with SBOL data version
  - There is a significant amount of community who do not care about the data standard
  - The ontology is the primary bridge, document that in the specification
- How to make a release
  - Merge develop into master
  - Update the release number in master
  - Cut a release via GitHub, describing with a (manual) summary of the approved SEPs newly included
    - Make sure that automation produce all derived materials (include website updates)
  - Merge master back into develop, increment version and mark as pre-release (look at http://danielkummer.github.io/git-flow-cheatsheet/ to figure out a better approach)
- Git automatically maintains all old release & pre-release information that lives in the repository; non-repository derived resources need to be handled separately

Derivative material (and maintaining access to old releases):

- Ontology derivations (semi-automated; can be automated)
  - Ontology generation from glyph READMEs - script
  - Ontology HTML
  - Deployment to ontology webserver
- Specification glyph pages:
  - Glyphscript subdirectory; add new glyphs to list, run glyph-to-page on all new or changed glyphs
  - Running all glyphs is not a good idea, because PDFs all get regenerated with new datestamps
  - Automate!
- Website materials:
  - Training slides - update during the yearly release
  - Samplers - currently editors generate by hand with yearly release; should be automated
  - Glyph collection zips (github binary release via github action?)
  - Examples from specification & training
- Font


## 3. Examples <a name='example'></a>

See examples above.


## 4. Backwards Compatibility <a name='compatibility'></a>

No workflow was previously codified, so there can be no conflict.

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
  <span property="dct:title">SEP V023</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="sbolstandard.org">
  United States</span>.
</p>
