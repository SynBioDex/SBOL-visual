#!/usr/bin/env python

################################################################################
# Author: Thomas Gorochowski, Biocompute Lab <tom@chofski.co.uk>
# Last Updated: 23 March 2021
################################################################################

import re
import math

def eval_parameterised_path(parameterised_path_text, params):
	# Use regular expression to extract and then replace with evaluated version
	# https://stackoverflow.com/questions/38734335/python-regex-replace-bracketed-text-with-contents-of-brackets
	path_text = re.sub(r"{([^{}]+)}", lambda m: str(eval(m.group()[1:-1], params)), parameterised_path_text)
	return path_text


################################################################################

params = {}
params['width'] = 22.5
params['height'] = 5.0

parametric_path = "M{0+(width/10.0)},0 C{((width-width/10.0)/3.0)*0.15+(width/10.0)},{height/2.0} {((width-width/10.0)/3.0)*0.35+(width/10.0)},{height/2.0} {((width-width/10.0)/3.0)/2.0+(width/10.0)},0 S{((width-width/10.0)/3.0)*0.85+(width/10.0)},{-height/2.0} {((width-width/10.0)/3.0)+(width/10.0)},0 C{((width-width/10.0)/3.0)+((width-width/10.0)/3.0)*0.15+(width/10.0)},{height/2.0} {((width-width/10.0)/3.0)+((width-width/10.0)/3.0)*0.35+(width/10.0)},{height/2.0} {((width-width/10.0)/3.0)+((width-width/10.0)/3.0)/2.0+(width/10.0)},0 S{((width-width/10.0)/3.0)+((width-width/10.0)/3.0)*0.85+(width/10.0)},{-height/2.0} {((width-width/10.0)/3.0)+((width-width/10.0)/3.0)+(width/10.0)},0 C{2*((width-width/10.0)/3.0)+((width-width/10.0)/3.0)*0.15+(width/10.0)},{height/2.0} {2*((width-width/10.0)/3.0)+((width-width/10.0)/3.0)*0.35+(width/10.0)},{height/2.0} {2*((width-width/10.0)/3.0)+((width-width/10.0)/3.0)/2.0+(width/10.0)},0 S{2*((width-width/10.0)/3.0)+((width-width/10.0)/3.0)*0.85+(width/10.0)},{-height/2.0} {2*((width-width/10.0)/3.0)+((width-width/10.0)/3.0)+(width/10.0)},0"


print(eval_parameterised_path(parametric_path, params))
