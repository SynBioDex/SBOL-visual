# Scripts

This directory contains scripts that automatically generate artefacts.

* [`generate_sampler.py`](./generate_sampler.py) populates the [`sampler/`](../sampler) directory with sampler images in showing all of the glyphs of a particular type
* [`collate_glyphs.py`](./collate_glyphs.py) populates the `glyph_collections/[pdf|svg|png]` directories with images of all glyphs in a particular format
* [`generate_table.py`](./generate_table.py) updates [`SEPs/summary.csv`](../SEPs/summary.csv), which summarises the SEP files


* [`rebuild_glyphs.py`](./rebuild_glyphs.py) populates [`specification/glyphscript/`](../specification/glyphscript), by converting the README files for individual glyphs into PDFs, and creating a `.tex` file for each type of glyph, including these PDFs
* [`generated_samples_appendix.py`](./generate_examples_appendix.py) populates [`specification/apdx-examples.tex`](../specification/apdx-examples.tex), and also an HTML file to be pushed to [`SynbioDex/SbolStandardWebsite`](https://github.com/SynBioDex/SbolStandardWebsite)

These scripts read data from JSON files:

* [`glyph_list.json`](./glyph_list.json) stores information about the glyphs
* [`example-figures.json`](./example-figures.json) stores information about the example images. Note that the `caption` properties should be unformatted text: any LaTeX markup will appear un-processed on the page of [specification examples](https://sbolstandard.org/visual-spec-examples/) on the website.

The scripts are run by GitHub Actions, as defined by the YAML files in [.github/workflows](../.github/workflows).

* When a PR is merged to master, the sampler images and SEP summary table are committed to the repository; the zip files containing glyphs, and a PDF of the complete specification are uploaded to GitHub as [Build Artefacts](https://docs.github.com/en/free-pro-team@latest/actions/guides/storing-workflow-data-as-artifacts), which are temporarily available to download.
* When a release is made, these assets are uploaded as Release Artefacts, which are permanently available to download.
* When the `update_website_specification_exmples` workflow is manually triggered, an updated markdown page and set of PNG images are pushed to [`SynbioDex/SbolStandardWebsite`](https://github.com/SynBioDex/SbolStandardWebsite). This triggers an action on that repo which automatically re-generates and publishes the website.


## Manually regenerating files for glpuhs

The PDF files for individual glyphs are generated as intermediates when building the specification PDF, but they are not automatically updated.
 You can generate them manually using:
 
 ```bash
npm install markdown-pdf
python3 scripts/rebuild_glyphs.py
```

If you do this manually, the first run of this script will regenerate all PDFs (not just those for glyphs that have been modified), unless you used a tool like [`git-restore-mtime`](https://github.com/MestreLion/git-tools#git-restore-mtime) to set the `mtime` of each file to the time when they were last modified, rather than the time that they were checked-out using Git.

Note that npm can install packages either globally (if the `-g` argument is provided) or locally.
The `rebuild_glyphs.py` script expects `markdown-pdf` to be installed in the top-level of the repository.

This should regenerate only the updated PDFs in specifications/glyphscript/Glyphs/, and update the .tex files in specifications/glyphscript/.


## Manually regenerating `apdx-examples.tex` 

Similarly, `apdx-examples.tex` is automatically regenerated (based on [`example-figures.json`](./example-figures.json)) when the specification is built, but the new files is not committed.
You can re-generate it manually using

```bash
python3 scripts/generated_samples_appendix.py
```
