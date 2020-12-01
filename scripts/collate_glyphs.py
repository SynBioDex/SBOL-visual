import os
import json
import shutil

from cairosvg import svg2png, svg2pdf

script_path = os.path.realpath(__file__)
script_dir = os.path.abspath(os.path.join(script_path, os.pardir))

cmd_path = os.path.abspath(os.path.join(script_dir, os.pardir, "node_modules", "markdown-pdf", "bin", "markdown-pdf"))

with open(os.path.join(script_dir, "glyph_list.json")) as fp:
    data = json.load(fp)

definitions_dir = os.path.abspath(os.path.join(script_dir, os.pardir))

output_dir = os.path.abspath(os.path.join(script_dir, os.pardir, "glyph_collections"))

for glyph_category in data:

    glyph_svgs = []
    processed_svg_filenames = []
    processed_pdf_filenames = []
    for glyph in glyph_category["glyphs"]:
        glyph_name = glyph["name"]

        glyph_dir = os.path.join(definitions_dir, 'Glyphs', glyph_category["dir"], glyph_name)

        for filename in os.listdir(glyph_dir):

            if filename.endswith("pdf") and "-specification" not in filename and "-example" not in filename:
                if filename in processed_pdf_filenames:
                    print(f"WARNING: a PDF file named {filename} has already been encountered")
                processed_pdf_filenames.append(filename)

                image_path = os.path.join(glyph_dir, filename)
                shutil.copy(image_path, os.path.join(output_dir, "pdf", filename))

            if filename.endswith("svg") and "-specification" not in filename and "-example" not in filename:
                if filename in processed_svg_filenames:
                    print(f"WARNING: an SVG file named {filename} has already been encountered")
                processed_svg_filenames.append(filename)

                image_path = os.path.join(glyph_dir, filename)
                shutil.copy(image_path, os.path.join(output_dir, "svg", filename))

                with open(image_path) as infile:
                    svg_string = infile.read()
                    svg2png(bytestring=svg_string, write_to=os.path.join(output_dir, "png", f"{filename.replace('.svg', '.png')}"))

