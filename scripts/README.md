# Scripts

These directory contains scripts that automatically generate artefacts.

* [`generate_sampler.py`](./generate_sampler.py) populates the [`sampler/`](../sampler) directory with sampler images in showing all of the glyphs of a particular type
* [`rebuild_glyphs.py`](./rebuild_glyphs.py) populates [`specification/glyphscript/`](../specification/glyphscript), by converting the README files for individual glyphs into PDFs, and creating a `.tex` file for each type of glyph, including these PDFs
* [`collate_glyphs.py`](./generate_sampler.py) populates the `glyph_collections/[pdf|svg|png]` directories with images of all glyphs in a particular format
* [`generate_table.py`](./generate_table.py) updates [`SEPs/summary.csv`](../SEPs/summary.csv), which summarises the SEP files

The list of glyphs to process is in [`glyph_list.json`](./glyph_list.json). 

The scripts are run by GitHub Actions, as configured in [.github/workflows/main.yml](../.github/workflows/main.yml).
