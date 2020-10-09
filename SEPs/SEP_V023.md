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
 - community webpage
 - examples
 - training materials

Finally, where possible the workflow should ensure that artifacts become marked with version and timestamp and can be automatically validated.

The goal of this document is to provide a well-defined workflow that addresses all of these needs.


## 2. Specification Change Workflow <a name="specification"></a>

Repository structure:

- Content
- Branches
  - master: releases, SEPs
  - develop: approved SEPs
  - others: changes before approval

Pre-SEP:

- Open issue
- Discuss on issue / mailing list
- How to decide when it's time for an SEP

SEP:

- Draft specification change:
  - Create a branch off of develop
  - Make all of your changes on that branch
  - Do not make a pull request until SEP is approved
- Draft SEP on master branch
  - Should contain explicit diff from draft change 
- Open an issue, include abstract, and link in the SEP
- Once SEP is open, close issue
- Discuss on issue / mailing list
- Determining consensus and moving to a vote
- After vote succeeds
  - Bring branch up to date with develop
  - Set up pull request
  - Editor review, approval and merge
- What if it fails? But it shouldn't.
- SEP status
  - SEP, Draft, ready for vote, final, accepted/rejected

Post-acceptance updates:

- Specification
- Ontology
- Font
- Examples in spec
- Trainings
- Website

Specification releases:

- When to cut a release
- How the number changes
- How to make a release
  - Merge develop into master
  - Update the release number in master
  - Merge master back into develop, increment and mark as pre-release
- How to maintain accessible information about old releases


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
