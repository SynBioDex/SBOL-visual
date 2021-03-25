# Scripts

These directory contains scripts that automatically generate artefacts.

* [`generate_sampler.py`](./generate_sampler.py) populates the [`sampler/`](../sampler) directory with sampler images in showing all of the glyphs of a particular type
* [`rebuild_glyphs.py`](./rebuild_glyphs.py) populates [`specification/glyphscript/`](../specification/glyphscript), by converting the README files for individual glyphs into PDFs, and creating a `.tex` file for each type of glyph, including these PDFs
* [`collate_glyphs.py`](./collate_glyphs.py) populates the `glyph_collections/[pdf|svg|png]` directories with images of all glyphs in a particular format
* [`generate_table.py`](./generate_table.py) updates [`SEPs/summary.csv`](../SEPs/summary.csv), which summarises the SEP files

The list of glyphs to process is in [`glyph_list.json`](./glyph_list.json). 

The scripts are run by GitHub Actions, as configured in [.github/workflows/main.yml](../.github/workflows/main.yml).
When a PR is merged to master, the sampler images and SEP summary table are committed to the repository; the zip files containing glyphs, and a PDF of the complete specification are uploaded to GitHub as [Build Artefacts](https://docs.github.com/en/free-pro-team@latest/actions/guides/storing-workflow-data-as-artifacts).

The PDF files for individual glyphs are generated as intermediates when building the specification PDF, but they are not automatically updated.
 You can generate them manually using:
 
 ```bash
npm install markdown-pdf
python3 scripts/rebuild_glyphs.py
```

Note that npm can install packages either globally (if the `-g` argument is provided) or locally.
The `rebuild_glyphs.py` script expects `markdown-pdf` to be installed in the top-level of the repository.

This should regenerate only the updated PDFs in specifications/glyphscript/Glyphs/, and update the .tex files in specifications/glyphscript/.