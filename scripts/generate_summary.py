import copy
import os
import json
from math import ceil, floor, sqrt

import xml.etree.ElementTree as ET
from cairosvg import svg2png, svg2pdf


def create_glyph_grid(glyphs, title_string="Title"):
    x_padding = 10
    y_padding = 10
    glyph_width = 170
    glyph_height = 100
    title_space = 30

    num_columns = floor(sqrt(len(glyphs))) # 10
    num_rows = ceil(len(glyphs) / num_columns)

    svg_width = num_columns * glyph_width + (num_columns + 1) * x_padding
    if svg_width < 300:
        svg_width = 300

    svg_height = num_rows * glyph_height + (num_rows + 1) * y_padding + title_space

    print(f"Creating grid of {len(glyphs)} glyphs")

    svg = ET.Element('svg')
    svg.attrib['width'] = str(svg_width)
    svg.attrib['height'] = str(svg_height)

    rect = ET.SubElement(svg, 'rect')
    rect.attrib['x'] = "0"
    rect.attrib['y'] = "0"
    rect.attrib['width'] = str(svg_width)
    rect.attrib['height'] = str(svg_height)
    rect.attrib['stroke'] = 'none'
    rect.attrib['fill'] = 'white'

    title = ET.SubElement(svg, 'text')
    title.text = title_string
    title.attrib['font-size'] = "30"
    title.attrib['text-anchor'] = "middle"
    title.attrib['x'] = str(svg_width / 2)
    title.attrib['y'] = "30"

    i = 0
    for g in glyphs:
        glyph_name = g["name"]
        glyph = g["svg"]

        column = i % num_columns
        row = floor(i / num_columns)

        group = ET.SubElement(svg, 'g')
        group.attrib['transform'] = f"translate({column * (glyph_width + x_padding) + x_padding}, {row * (glyph_height + y_padding) + y_padding + title_space})"
        group.attrib['id'] = glyph_name

        rect = ET.SubElement(group, 'rect')
        rect.attrib['x'] = "0"
        rect.attrib['y'] = "0"
        rect.attrib['width'] = str(glyph_width)
        rect.attrib['height'] = str(glyph_height)
        rect.attrib['stroke'] = 'black'
        rect.attrib['fill'] = 'white'
        rect.attrib['rx'] = '10'
        rect.attrib['ry'] = '10'

        inner_group = ET.SubElement(group, 'g')
        inner_group.attrib['transform'] = f"translate(60, {20})"

        title = ET.SubElement(group, 'text')
        title.text = glyph_name.title()
        title.attrib['font-size'] = "12"
        title.attrib['y'] = str(glyph_width / 2)

        title.attrib['text-anchor'] = "middle"
        title.attrib['x'] = str(glyph_width / 2)

        for child in glyph:
            inner_group.append(child)
        i += 1

    return svg


def convert_svg(svg_string, directory, name):
    svg2png(bytestring=svg_string, write_to=os.path.join(directory, f"{name}.png"))
    svg2pdf(bytestring=svg_string, write_to=os.path.join(directory, f"{name}.pdf"))


script_path = os.path.realpath(__file__)
script_dir = os.path.abspath(os.path.join(script_path, os.pardir))

cmd_path = os.path.abspath(os.path.join(script_dir, os.pardir, "node_modules", "markdown-pdf", "bin", "markdown-pdf"))

with open(os.path.join(script_dir, "glyph_list.json")) as fp:
    data = json.load(fp)

definitions_dir = os.path.abspath(os.path.join(script_dir, os.pardir))

initial_path = os.getcwd()

for glyph_category in data:

    glyph_svgs = []
    for glyph in glyph_category["glyphs"]:
        glyph_name = glyph["name"]

        glyph_dir = os.path.join(definitions_dir, 'Glyphs', glyph_category["dir"], glyph_name)
        svg_path = os.path.join(definitions_dir, 'Glyphs', glyph_category["dir"], glyph_name, f"{glyph_name}.svg")

        # list svg files in dir, which don't end in
        for filename in os.listdir(glyph_dir):

            if ".svg" in filename and "-specification" not in filename and "-example" not in filename:
                svg_path = os.path.join(glyph_dir, filename)

                tree = ET.parse(svg_path)
                ET.register_namespace("", "http://www.w3.org/2000/svg")
                svg_tree = tree.getroot()

                glyph_svgs.append({"svg": copy.deepcopy(svg_tree), "name": glyph_name})
                print(f"Added: {filename}")

    grid = create_glyph_grid(glyph_svgs, title_string=glyph_category["type"])
    grid_svg_string = ET.tostring(grid, encoding="unicode")
    with open(f"{glyph_category['type']}.svg", 'w') as f:
        f.write(grid_svg_string)

    output_dir = os.getcwd()
    convert_svg(grid_svg_string, output_dir, glyph_category['type'])

