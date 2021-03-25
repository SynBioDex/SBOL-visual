import json


# TODO: generate HTMl - with PDF images converted to a web-format
# for example of checking out website repo: https://github.com/actions/checkout#checkout-multiple-repos-side-by-side
# TODO: generate LaTeX

#for figure in figures:
#    print(f"<img src=' />")


def generate_latex(figures):
    version_macros = {
        "2.3.0": "\\twothreezero"
    }

    with open("../specification/apdx-examples.tex", "w") as fp:

        fp.write("""% -----------------------------------------------------------------------------
\section{Examples}\label{sec:examples}
% -----------------------------------------------------------------------------

This section contains prototypical examples, including use of all
current glyphs to attempt to ensure that their use is clear.

""")

        for figure in figures:
            scale = figure.get("scale", "0.5")
            last_edited = figure.get("lastEdited", None)

            if last_edited and last_edited in version_macros:
                fp.write(version_macros[last_edited] + "{\n")

            fp.write("\\begin{figure}[h!]\n")
            fp.write("\\includegraphics[scale=%s]{figures/apdx-examples/%s}\n" % (scale, figure['fileName']))
            fp.write("\\caption{%s}\n" % figure['caption'])
            fp.write("\label{%s}\n" % figure['label'])
            fp.write("\\end{figure}\n")

            if last_edited and last_edited in version_macros:
                fp.write("}\n")

            fp.write("\n")

        fp.write("""% Figure black magic: adjust the size here as needed to get the spacing on the last page of the section correct.
%\begin{figure}[h!]
%\vspace{2in}
%\end{figure}
""")


def generate_md(figures):

    with open("examples.md", "w") as fp:
        fp.write("""---
    title: SBOL Visual Examples from Specification
    
    # View.
    #   1 = List
    #   2 = Compact
    #   3 = Card
    #   4 = Citation
    view: 3
    
    # Optional header image (relative to `static/img/` folder).
    header:
      caption: ""
      image: ""
---

""")

        # template based on https://github.com/SynBioDex/SbolStandardWebsite/blob/master/content/visual-examples/_index.md
        src = "SBOLVisualSpecExamples/example1-1.jpg"   # corresponds to files in SbolStandardWebsite/static/media/SBOLVisualSpecExamples
        title = "Example 1: Promoter stimulated by CDS"
        width = "470"

        for figure in figures:
            # TODO: convert image and move to correct folder
            # TODO: print to a different folder
            src = "SBOLVisualSpecExamples/" + figure["fileName"].replace('.pdf', '.png')
            title = figure["caption"]
            fp.write('{{< figure library="true" src="%s" title="%s" lightbox="true" width="%s" >}}\n\n' % (src, title, width))


with open("./example-figures.json") as fp:
    figures = json.load(fp)
    print(len(figures))

    generate_latex(figures)
    generate_md(figures)


# for file in *.pdf; do convert $file "./pngversions/`basename $file .pdf`.png"; done


