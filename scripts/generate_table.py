import csv
import re
import os


excluded_files = ["sep_002_template", "README"]

script_path = os.path.realpath(__file__)
sep_dir = os.path.abspath(os.path.join(script_path, os.pardir, os.pardir, "SEPs"))


data = []
for file_name in os.listdir(sep_dir):
    base_name = os.path.splitext(file_name)[0]
    extension = os.path.splitext(file_name)[1]

    if extension != ".md" or base_name in excluded_files:
        continue

    with open(os.path.join(sep_dir, file_name), 'r') as myfile:
        values = {}
        for line in myfile.readlines():
            if "|" in line:
                parts = [part.strip() for part in line.strip().split("|") if part]

                if len(parts) == 1:
                    value = ""
                else:
                    value = parts[1].strip().replace('<leave empty>', '')

                key = parts[0].replace('*', '').strip()

                if key.replace('-', ''):  # ignore line under header row
                    values[key] = value

        # Extract URLs from markdown links
        p = re.compile(r'\[.+?\]\((.+?)\)')
        m = p.match(values.get('Issue', ''))
        if m:
            values['Issue'] = m.group(1)

        if not values:
            print(f"No data for {file_name}")

        values["SEP"] = base_name.lower().replace('sep_', '')
        data.append(values)

data.sort(key=lambda x: x['SEP'])

fieldnames = ["SEP", "Type", "SBOL Version", "Status", "Issue", "Title", "Replaces",  "Created", "Last modified",
              "Editor",  "Authors"]

with open(os.path.join(sep_dir, 'summary.csv'), 'w') as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames, extrasaction='ignore')

    writer.writeheader()
    writer.writerows(data)

print(f"Processed {len(data)} files")