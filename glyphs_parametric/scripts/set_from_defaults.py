import xml.etree.ElementTree as ET
import os
import re
import sympy



def convert_parametric_attributes(root):
    # This function updates the non-parametric attributes, by substituting the default values into the parametric attributes

    default_value_string = root.attrib['{https://parametric-svg.github.io/v0.2}defaults']
    default_values = {}
    for term in default_value_string.split(";"):
        key, value = term.split("=")
        default_values[key] = value

    prefix = '{https://parametric-svg.github.io/v0.2}'

    def evaluate_function(matchobj):
        expr_string = matchobj.group(1)

        expr = sympy.sympify(expr_string)
        if isinstance(expr, tuple):
            print("IS TUPLE:", expr)


        for var in default_values:
            expr = expr.subs(var, default_values[var])
        return str(float(expr))

    for child in root:
        parametric_attributes = []
        for attrib in child.attrib:
            if attrib.startswith(prefix):
                parametric_attributes.append(attrib)

        for attrib in parametric_attributes:
            parametric_expression = child.attrib[attrib]
            non_parametric_attribute_name = attrib.replace(prefix, '')
            child.attrib[non_parametric_attribute_name] = re.sub(r'\{(.*?)\}', evaluate_function, parametric_expression)



base_dir = '../glyph_definitions'
output_dir = '../converted'


specification_glyphs = {}
bare_glyphs = {}

for file_name in os.listdir(base_dir):
    print(f"Now processing {file_name}")
    base_name = os.path.splitext(file_name)[0]
    extension = os.path.splitext(file_name)[1]

    if extension != ".svg":
        continue

    glyph_dir = os.path.join(output_dir, base_name)
    if not os.path.exists(glyph_dir):
        os.makedirs(glyph_dir)

    file_path = os.path.join(base_dir, file_name)
    tree = ET.parse(file_path)
    svg_tree = tree.getroot()

    convert_parametric_attributes(svg_tree)

    ET.register_namespace("", "http://www.w3.org/2000/svg")
    ET.register_namespace("parametric", "https://parametric-svg.github.io/v0.2")

    with open(file_path, 'w') as fp:
        fp.write(ET.tostring(svg_tree).decode('utf8'))
