import xml.etree.ElementTree as ET

import os
import re
import sympy


substitutions = {
    'baseline_x': '0',
    'baseline_y': '0',
    'baseline_offset': '0',
    'pad_top': '0',
    'pad_bottom': '0',
    'pad_left': '0',
    'pad_before': '0',
    'pad_after': '0',
    'arrowhead_width': 'width - arrowbody_width',
    'arrowhead_height': 'height'
}

params_to_remove = ['baseline_x', 'baseline_y', 'baseline_offset', 'pad_top', 'pad_bottom', 'pad_left', 'pad_before',
                    'pad_after', 'arrowhead_width', 'arrowhead_height']


def convert_attribute_value(expr_string):
    return re.sub(r'\{(.*?)\}', convert_expression, expr_string)


def convert_expression(matchobj):
    expr_string = matchobj.group(1)
    expr = sympy.sympify(expr_string)

    for sub in substitutions:
        expr = expr.subs(sub, substitutions[sub])

    return '{%s}' % str(expr)


base_dir = '../glyph_definitions'
output_dir = '../reparametrised'
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

specification_glyphs = {}
bare_glyphs = {}

for file_name in os.listdir(base_dir):
    print(f"Now processing {file_name}")
    base_name = os.path.splitext(file_name)[0]
    extension = os.path.splitext(file_name)[1]

    if extension != ".svg":
        continue

    tree = ET.parse(os.path.join(base_dir, file_name))
    svg_tree = tree.getroot()

    for child in svg_tree:
        parametric_attributes = []
        for attrib in child.attrib:
            if attrib.startswith('{https://parametric-svg.github.io/v0.2}'):
                child.attrib[attrib] = convert_attribute_value(child.attrib[attrib])

    # remove default value definitions for removed params
    defaults = svg_tree.attrib['{https://parametric-svg.github.io/v0.2}defaults']
    new_defaults = []
    for term in defaults.split(";"):
        key, value = term.split("=")
        if key not in params_to_remove:
            new_defaults.append(f"{key}={value}")
    print(";".join(new_defaults))
    svg_tree.attrib['{https://parametric-svg.github.io/v0.2}defaults'] = ";".join(new_defaults)

    # This ensures that the XML is serialised using the desired namespace names, rather than 'ns0' and 'ns1'
    nsmap = {
        'http://www.w3.org/2000/svg':  '',
        'https://parametric-svg.github.io/v0.2': 'parametric'
    }
    ET._namespace_map.update(nsmap)

    tree.write(os.path.join(output_dir, f"{base_name}.svg"))
