# Scripts

These directory contains scripts that automatically generate artefacts.

* [`generate_sampler.py`](./generate_sampler.py) populates the [`sampler/`](../sampler) directory with sampler images in showing all of the glyphs of a particular type
* [`rebuild_glyphs.py`](./rebuild_glyphs.py) populates [`specification/glyphscript/`](../specification/glyphscript), by converting the README files for individual glyphs into PDFs, and creating a `.tex` file for each type of glyph, including these PDFs

The list of glyphs to process is in [`glyph_list.json`](./glyph_list.json). 

The scripts are run by GitHub Actions, as configured in [.github/workflows/main.yml](../.github/workflows/main.yml).
