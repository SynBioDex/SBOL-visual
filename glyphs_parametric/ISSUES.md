# Outstanding Issues

## General issues

1. Many glyphs do not have a properly formed "d" attribute or it has not been updated. Need a script to cleanly create all of these. Could be useful to have this as part of the glyph registration procedure as all "d" elements should be automatically generated and not given manually. This also could be used to scale the "core" glyphs to make it easy to use in other tools (e.g. Powerpoint), again it would be helpful to automate this.

> Running `glyphs_parametric/scripts/set_from_defaults.py` will set attributes based on their parametric equivalents and the default parameter values defined in the file; `eval_paths.py` evaluates them using values defined in the script.

2. Need to agree on SVG path naming and ensuring we minimise number of paths to simplify customisation in tools. For example, multiple paths at present are used for wiggly location stems – need to consolidate into one.

> I don't think the path names (`id`) elements are actually needed - I think the `class` attributes (`bounding-box`/`baseline`/`filled-background-path`/`unfilled-path`) are sufficient.

3. The origin (baseline start point) is (0,0) in all glyphs. This causes them to be cropped when viewed in a Web browser or imported into Powerpoint. Could we set up clipping planes to be automatically added such that only the glyph is visible or generate shifted versions without all the bounding box and baseline? Use viewBox and remove width and height for the SVG? See SingleStrandedNuclicAcid.svg for an example which works nicely.

> The `scripts/convert.py` script generates output files in several formats from the parametric glyph definitions; when generating the SVG output it adds a `g` element with an appropriately set `transform` attribute so that the glyph displays properly when the file is opened in an image editor or web browser.
> I think it's that leaving the parametric files as they are keeps thing simple for tools using the files for automated diagram layout.

4. We should agree on the formatting of the SVG files (this could make management easier longer term). This is in terms of the text within the files (e.g. spaces for indents, ordering of attributes, etc.)

5. Defaults are all shot... Need to generate them and tweak to perfection.

> It's unclear what they should be set to: should they be individually set for each file so that each converted glyph is a close as possible to the current glyph definitions?


## Individual glyph issues

1. "Complex" is not a glyph. It is a composition of glyphs. Could these be automatically generated? It is very much a special case. Similar to how a primer binding site might be overlaid on other sequence features.
   
2. "No Glyph Assigned" & "Unspecified" – these already exists as sequence features. Should they just be copied? Should we have glyphs defined in two places? Can we merely symlink somehow to reduce maintenance?

3. ssNA and dsNA should be able to be concatenated to create longer versions of the symbol. A small 2 element part should be provided as symbol ensuring proper alignment of baselines will enable correct joining of symbols. See ssNA and dsNA for an example where this works.
