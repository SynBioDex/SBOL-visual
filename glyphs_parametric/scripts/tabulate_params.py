import xml.etree.ElementTree as ET
import os
import csv

base_dir = '../glyph_definitions'

specification_glyphs = {}
all_params = set(['glyphtype', 'soterms'])

rows = []

for file_name in os.listdir(base_dir):
    (base_name, extension) = os.path.splitext(file_name)

    if extension != ".svg":
        continue

    tree = ET.parse(os.path.join(base_dir, file_name))
    svg_tree = tree.getroot()

    param_string = svg_tree.attrib['{https://parametric-svg.github.io/v0.2}defaults']

    assignments = param_string.split(';')

    row = {'name': base_name}
    for assignment in assignments:
        (var_name, value) = assignment.split('=')
        row[var_name] = value
        all_params.add(var_name)

    row['glyphtype'] = svg_tree.attrib['glyphtype']
    row['soterms'] = svg_tree.attrib['soterms']

    rows.append(row)

fieldnames = ['name']
fieldnames.extend(all_params)

with open('../converted/summary.csv', 'w') as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames, extrasaction='ignore')
    writer.writeheader()
    writer.writerows(rows)
