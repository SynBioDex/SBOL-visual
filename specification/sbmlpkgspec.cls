%% Filename:     sbmlpkgspec.cls                         -*- mode: latex -*-
%% Description:  LaTeX style file for SBML Level 3 package specifications
%% Author(s):    Michael Hucka <mhucka@caltech.edu>
%% Organization: California Institute of Technology
%% Date created: 2011-08-11
%%
%% Copyright 2007-2013 California Institute of Technology, Pasadena, CA, USA.
%% 
%% This file is free software; you can redistribute it and/or modify it
%% under the terms of the GNU Lesser General Public License as published
%% by the Free Software Foundation; either version 2.1 of the License, or
%% any later version.
%% 
%% This library is distributed in the hope that it will be useful, but
%% WITHOUT ANY WARRANTY, WITHOUT EVEN THE IMPLIED WARRANTY OF
%% MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  The software and
%% documentation provided hereunder is on an "as is" basis, and the
%% California Institute of Technology has no obligations to provide
%% maintenance, support, updates, enhancements or modifications.  In no
%% event shall the California Institute of Technology be liable to any
%% party for direct, indirect, special, incidental or consequential
%% damages, including lost profits, arising out of the use of this software
%% and its documentation, even if the California Institute of Technology
%% has been advised of the possibility of such damage.  See the
%% GNU Lesser General Public License for more details.
%% 
%% You should have received a copy of the GNU Lesser General Public License
%% along with this library; if not, write to the Free Software Foundation,
%% Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.

\def\filedate{2013/07/24}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sbmlpkgspec}[\filedate\space SBML Level 3
Package Specification Style]

%% ----------------------------------------------------------------------------
%% Package references and options.
%% ----------------------------------------------------------------------------

%% Keep in mind that hyperref needs to be almost the last package loaded.

\newif\if@draftspec
\DeclareOption{draftspec}{\global\let\if@draftspec\iftrue}
\DeclareOption{finalspec}{\global\let\if@draftspec\iffalse}

\newif\if@notoc
\DeclareOption{toc}{\global\let\if@notoc\iffalse}
\DeclareOption{notoc}{\global\let\if@notoc\iftrue}

\newif\if@twocolumntoc
\DeclareOption{twocolumntoc}{\global\let\if@twocolumntoc\iftrue}
\DeclareOption{singlecolumntoc}{\global\let\if@twocolumntoc\iffalse}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{toc,twoside}
\ExecuteOptions{singlecolumntoc}
\ProcessOptions
\LoadClass{article}

%% ----------------------------------------------------------------------------
%% Dependencies on other packages.
%% ----------------------------------------------------------------------------

\RequirePackage{lastpage}
\RequirePackage{ifpdf}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{array}
\RequirePackage[round,sort]{natbib}
\RequirePackage{xspace}
\RequirePackage{scalefnt}
\RequirePackage{pifont}
\RequirePackage[pagewise,mathlines,edtable,right]{lineno}
\RequirePackage{calc}
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{bbding}
\RequirePackage{wasysym}
\RequirePackage{enumitem}
\RequirePackage{accsupp}
\RequirePackage[T1]{fontenc}
\RequirePackage{suffix}
\RequirePackage{varwidth}

% We use the "optional" package to indicate whether to generate a grayscale
% vs a color version of the document without having to alter the .tex file
% itself.  Unfortunately, the "optional" package doesn't offer an "or" type
% switch or a way to set a default, so we have to go through some
% contortions here.  Also, it needs *something* in the optional argument
% to RequirePackage or UsePackage, hence the "dummyoption" thing below.
%
% To produce grayscale output without modifying the source file, invoke
% latex with a command of the following form:
%
%  pdflatex "\newcommand\UseOption{grayscale}\input{sbml-level-2-version-2}"

\newif\ifgrayscalespec
\global\let\ifgrayscalespec\iffalse
\RequirePackage[dummyoption]{optional}
\opt{grayscale}{\global\let\ifgrayscalespec\iftrue}

% Load varioref only if not generating HTML, because on HTML
% pages it doesn't make sense to use varioref.

% \RequirePackage{html}

% \latexhtml{
%begin{latexonly}
  \RequirePackage[american]{varioref}
%end{latexonly}
% }{
%  \newcommand{\vref}[1]{\ref{#1}}
% }

% Hyperref, xcolor, graphicx and possibly others have a flag "pdftex"
% that needs to be used if pdflatex is being used.  The following puts
% these inside a conditional for that situation.

\ifpdf
  % Case: using pdflatex

  \RequirePackage[pdftex]{graphicx}

  % Options get even more complicated.  If we're producing grayscale output,
  % we don't want to bother with coloring links, but we still want to load
  % hyperref so that its macros are defined (and we don't have to redefine
  % everything that uses hyperref).  So:

  \ifgrayscalespec
    \RequirePackage[pdftex,breaklinks=true,colorlinks=false,
    bookmarksnumbered=true]{hyperref}
  \else
    \RequirePackage[pdftex,breaklinks=true,colorlinks=true,
    pdfhighlight=/O,linkcolor={sbmlblue},citecolor={sbmlblue},
    urlcolor={sbmlblue},anchorcolor={sbmlblue},bookmarksnumbered]{hyperref}
  \fi

  % Although it may seem like we wouldn't need to load xcolor if
  % the grayscale option is given, in fact it doesn't affect anything
  % to load this and it avoids having to conditionalize other things.
  % (The colors aren't actually invoked if grayscale is being used.)

  \RequirePackage[pdftex,rgb,dvipsnames,svgnames,hyperref,table]{xcolor}
\else
  % Case: not using pdflatex

  \RequirePackage{graphicx}
  % Test whether we're being run from latex or latex2html
  % \latexhtml{
    % For latex.
    \RequirePackage[breaklinks]{hyperref}
  % }{
    % For latex2html.
    % \RequirePackage[latex2html,breaklinks]{hyperref}
  % }
  \RequirePackage[rgb,dvipsnames,svgnames,hyperref,table]{xcolor}
\fi

% Load listings package & set some values.

\RequirePackage{listings}
\lstloadlanguages{bash,csh,XML}

% Load draftwatermark if this document is a draft version.

\if@draftspec
  \RequirePackage[firstpage]{draftwatermark}
  \SetWatermarkLightness{0.92}
\fi

\RequirePackage{overpic}

% We don't need the rotating package in this file, but there is a strange
% interaction between the rotating package and something else in sbmlpkgclass
% (I don't know what).  The effect of the interaction is that sidewaystable
% environment contents are shifted left on the page (or from the perspective
% of the rotated table, shiftted up).  The solution is to set \rotFPtop, but
% asking users of sbmlpkgclass to know that they have to do this is too much
% to ask.  So, to avoid people experiencing the problem and wasting time
% trying to figure out what's causing it, I decided it's better to preload
% rotating.  The problem was first reported to me by Maciej Swat in Aug. 2013
% and I found the solution at http://tex.stackexchange.com/a/47879/8318

\RequirePackage{rotating}
\setlength{\rotFPtop}{0pt plus 1fil}


%% ----------------------------------------------------------------------------
%% Font selection.
%% ----------------------------------------------------------------------------

% This sets up Helvetica for headings and TX Typewriter for the tt font.
% The font scaling is because the default Helvetica size is too big.

\RequirePackage{fourier}
\RequirePackage{helvet}
\ifgrayscalespec
  % In the grayscale version of the spec, Helvetica bold is used for class
  % names in the text, and the width of the words then is too big unless
  % we scale down the font even more compared to the regular case below.
  \def\Hv@scale{0.814}
\else
  \def\Hv@scale{0.87}
\fi

% The following sets up txtt for the typewriter font.

\renewcommand{\ttdefault}{txtt}
\DeclareMathAlphabet{\mathtt}{T1}{txtt}{m}{n}
\SetMathAlphabet{\mathtt}{bold}{T1}{txtt}{b}{n}

% The next bit is an adaption of code from ot1phv.fd and adapted to the txtt
% fonts.  The txtt fonts are just a tad too big, so this tries to rescale
% them down a tiny bit.  This isn't completely right because I couldn't
% figure out the right syntax when the DeclareFontShape uses ssub below.
% (Notice how the ones with ssub don't have the \Txtt@@scale factor.)

\def\Txtt@scale{0.97}
\edef\Txtt@@scale{s*[\csname Txtt@scale\endcsname]}%

\DeclareFontFamily{T1}{txtt}{\hyphenchar \font\m@ne}
\DeclareFontShape{T1}{txtt}{m}{n}{	%rebular
     <-> \Txtt@@scale txtt%
}{}
\DeclareFontShape{T1}{txtt}{m}{sc}{	%cap & small cap
     <-> \Txtt@@scale txttsc%
}{}
\DeclareFontShape{T1}{txtt}{m}{sl}{	%slanted
     <-> \Txtt@@scale txttsl%
}{}
\DeclareFontShape{T1}{txtt}{m}{it}{	%italic
     <-> ssub * txtt/m/sl%
}{}
\DeclareFontShape{T1}{txtt}{m}{ui}{	%unslanted italic
     <-> ssub * txtt/m/sl%
}{}
\DeclareFontShape{T1}{txtt}{b}{n}{	%bold
     <-> \Txtt@@scale txbtt%
}{}
\DeclareFontShape{T1}{txtt}{b}{sc}{	%bold cap & small cap
     <-> \Txtt@@scale txbttsc%
}{}
\DeclareFontShape{T1}{txtt}{b}{sl}{	%bold slanted
     <-> \Txtt@@scale txbttsl%
}{}
\DeclareFontShape{T1}{txtt}{b}{it}{	%bold italic
     <-> ssub * txtt/b/sl%
}{}
\DeclareFontShape{T1}{txtt}{b}{ui}{	%bold unslanted italic
     <-> ssub * txtt/b/sl%
}{}
\DeclareFontShape{T1}{txtt}{bx}{n}{	%bold extended
     <-> ssub * txtt/b/n%
}{}
\DeclareFontShape{T1}{txtt}{bx}{sc}{	%bold extended cap & small cap
     <-> ssub * txtt/b/sc%
}{}
\DeclareFontShape{T1}{txtt}{bx}{sl}{	%bold extended slanted
     <-> ssub * txtt/b/sl%
}{}
\DeclareFontShape{T1}{txtt}{bx}{it}{	%bold extended italic
     <-> ssub * txtt/b/sl%
}{}
\DeclareFontShape{T1}{txtt}{bx}{ui}{	%bold extended unslanted italic
     <-> ssub * txtt/b/sl%
}{}

% Adjustments due to quirks of the combination of fourier and amsmath:

% Make the \big( braces regular height (default is too short):
\delimiterfactor=1000
\delimitershortfall=1pt

%% ----------------------------------------------------------------------------
%% Main code.
%% ----------------------------------------------------------------------------

\raggedbottom

% Local color definitions.

\definecolor{sbmlblue}{rgb}{0.07,0.50,0.78}
\definecolor{sbmlgray}{gray}{0.7}
\definecolor{sbmlrowgray}{gray}{0.96}
\definecolor{extremelylightgray}{gray}{0.97}
\definecolor{veryverylightgray}{gray}{0.95}
\definecolor{verylightgray}{gray}{0.9}
\definecolor{lightgray}{gray}{0.8}
\definecolor{mediumgray}{gray}{0.5}
\definecolor{darkgray}{gray}{0.3}
\definecolor{almostblack}{gray}{0.23}
\definecolor{normaltextcolor}{gray}{0.23} % Synonym for 'almostblack'
\definecolor{lightyellow}{rgb}{0.98,0.94,0.7}
\definecolor{verylightyellow}{rgb}{0.97,0.95,0.85}
\definecolor{darkblue}{rgb}{0.1,0.4,0.55}
\definecolor{mediumgreen}{rgb}{0.1,0.6,0.3}

% Color for marking changed text, conditional on whether gray scale mode is on.

\ifgrayscalespec
  \newcommand{\@sbmlchangedcolor}{normaltextcolor}
\else
  \definecolor{sbmlchangedcolor}{rgb}{0.69,0.19,0.376}
  \newcommand{\@sbmlchangedcolor}{sbmlchangedcolor}
\fi

% Macros for making consistent font, color, and other selections:

\newcommand{\changed}[1]{\textcolor{\@sbmlchangedcolor}{#1}}
\newenvironment{blockChanged}{\color{\@sbmlchangedcolor}}{\color{normaltextcolor}}

\newcommand{\figureFont}[1]{\textsf{\textbf{#1}}}

\newcommand{\literalFont}[1]{\textcolor{black}{\textup{\ttfamily{#1}}}}
\newcommand{\literalFontNC}[1]{\textup{\ttfamily{#1}}}

\newcommand{\tightspacing}{\renewcommand{\baselinestretch}{0.85}}
\newcommand{\regularspacing}{\renewcommand{\baselinestretch}{\normalbaselinestretch}}

\ifgrayscalespec
  \newcommand{\defRef}[2]{\textbf{\class{#1}}\xspace}
  \newcommand{\absDefRef}[2]{\textbf{\abstractclass{#1}}\xspace}
\else
  \newcommand{\defRef}[2]{\class{\hyperref[#2]{#1}}\xspace}
  \newcommand{\absDefRef}[2]{\abstractclass{\hyperref[#2]{#1}}\xspace}
\fi

\renewcommand{\texttt}[1]{\textcolor{black}{\ttfamily #1}}

% Hyperref extras:

\newcommand{\link}[2]{\literalFont{\href{#1}{#2}}}
\newcommand{\mailto}[1]{\link{mailto:#1}{#1}}

% 'lineno' package adjustments.
% The BeginAccSupp business causes the line numbers to be ignored for
% copy-paste operations in the PDF output.

\setlength{\linenumbersep}{2.2em}
\renewcommand{\thelinenumber}{%
  \BeginAccSupp{ActualText={}}%
  \textcolor{mediumgray}{\parbox[b][\height+1.5pt][c]{10pt}{\arabic{linenumber}}}%
  \EndAccSupp{}%
}

% 'booktabs' package adjustments:

\setlength{\cmidrulewidth}{0.3 pt}
\setlength{\lightrulewidth}{0.3 pt}
\setlength{\heavyrulewidth}{0.9 pt}

% Fix placement of figures & tables.  This keeps latex from shoving big
% floats to the end of a document when they are somewhat big, which it will
% do even if you put [htb] as the argument.

\setcounter{topnumber}{2}               % max num of floats at top of page
\setcounter{bottomnumber}{2}            % max num of floats at bottom of page
\renewcommand\topfraction{1.0}          % fraction that a top float can cover
\renewcommand\bottomfraction{1.0}       % fraction a bottom float can cover
\renewcommand\textfraction{0.0}        % >5% of a non-float page must be text
\renewcommand\floatpagefraction{0.9}   % float page must be 95% full

% Spacing of floats.

\setlength{\intextsep}{20pt plus 4pt minus 0pt}

% Make floats that appear alone on a page appear at the top, rather than
% (as is the LaTeX default) appearing centered vertically on the page.

\setlength{\@fptop}{5pt}

% Margin adjustments. I've tried using vmargin.sty, but it interacts badly
% with page numbers at the bottom of the page, so I've resorted to hardcoding
% the dimensions like this.

\setlength{\marginparwidth}{0.77in}
\setlength{\marginparsep}{4pt}

\setlength{\oddsidemargin}{0 pt}
\setlength{\evensidemargin}{0 pt}
\setlength{\topmargin}{-0.5 in}
\setlength{\voffset}{0 in}
\setlength{\hoffset}{0 in}
\setlength{\textwidth}{6.5 in}
\setlength{\textheight}{8.95 in}

% Playing games with line spacing.

\newcommand{\normalbaselinestretch}{1.04}
\renewcommand{\baselinestretch}{\normalbaselinestretch}

% Set the table of contents depth

\setcounter{tocdepth}{3}

% Title page macros.  Severly hacked from originals in LaTeX's article.cls.

\def\packageTitle#1{\title{#1}\gdef\@packageTitle{#1}}
\def\@packageTitle{\@empty}

\def\packageGeneralURL#1{\gdef\@packageGeneralURL{#1}}

\def\packageThisVersionURL#1{\gdef\@packageThisVersionURL{#1}}
\def\@packageThisVersionURL{\@empty}

\def\packageVersion#1{\gdef\@packageVersion{#1}}
\def\@packageVersion{\@empty}

\def\packageVersionDate#1{\gdef\@packageVersionDate{#1}}
\def\@packageVersionDate{\@empty}

\def\frontNotice#1{\gdef\@frontNotice{#1}}

\def\@puttitle{%
  \ifx\@packageGeneralURL\undefined
  \relax
  \else
  \vspace*{-1em}
  {\large SBML Level 3 Package Specification}\\[2em]
  \fi
  \scalebox{1}[0.9]{%
    \fcolorbox{black}{mediumgray}{%
      \begin{minipage}{\textwidth - 7pt}%
        \vspace*{6pt}%
        \centering%
        \textcolor{white}{\sffamily\bfseries\huge \ifx\@title\@empty\@packageTitle\else\@title\fi}
      \vspace*{4pt}%
    \end{minipage}}}}

\def\@putauthorinfo{%
  \large
  \renewcommand{\arraystretch}{0.95}%
  {\begin{tabular}[t]{c}%
   \@author
  \end{tabular}}}

\def\maketableofcontents{%
  \thispagestyle{plain}%
  \if@notoc
  \else
    \begingroup
      \small%
      % Tighten spacing between lines within an entry.
      % This assumes 10 pt font!
      \setlength{\baselineskip}{10pt}%
      % Now adjust inter-entry spacing.
      \addtolength{\parskip}{-1.35 ex}%
      \if@twocolumntoc
        \setlength{\columnsep}{16pt}%
        \begin{multicols}{2}
      \fi
      \tableofcontents%
      \if@twocolumntoc
        \end{multicols}
      \fi
      \normalsize%
      \addtolength{\parskip}{1.45 ex}%
    \endgroup
    \clearpage
  \fi%
  \linenumbers}

% Need redefine \tableofcontents to counter effects of hacking \section below.

\renewcommand\tableofcontents{%
  \@startsection{section}{0}{0pt}{-1.8ex \@plus -1ex \@minus -.2ex}%
  {0.8ex}{\normalfont\Large\bfseries\sffamily}*% The star fakes a \section*
  \contentsname%
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  \@starttoc{toc}%
  }

\renewcommand\maketitle{\par
  \begingroup
  \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
  \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
  \long\def\@makefntext##1{\parindent 1em\noindent
    \hb@xt@1.8em{%
      \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
  \if@twocolumn
    \ifnum \col@number=\@ne
      \@maketitle
    \else
      \twocolumn[\@maketitle]%
    \fi
  \else
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
  \fi
  \thispagestyle{empty}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@authoremail\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }

\newcommand\maketitlepage{\par
  \begingroup
  \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
  \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
  \long\def\@makefntext##1{\parindent 1em\noindent
    \hb@xt@1.8em{%
      \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
  \vskip 2em%
  \if@twocolumn
    \ifnum \col@number=\@ne
      \@maketitle
    \else
      \twocolumn[\@maketitle]%
    \fi
  \else
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
  \fi
  \thispagestyle{empty}\@thanks
  \vfill
  \centering%
  \ifx\@frontNotice\undefined
  \relax
  \else
    {\cornersize{0.25}\color{DarkRed}\ovalbox{\begin{varwidth}{0.9\textwidth}\centering\@frontNotice\end{varwidth}}}%
  \fi
  \vfill
  \ifx\@packageGeneralURL\undefined
  \relax
  \else
    The latest release, past releases, and other materials related to this specification are available at\\
    {\small\url{\@packageGeneralURL}}\\[1em]
    \emph{This} release of the specification is available at\\
    {\small\url{\@packageThisVersionURL}}\\
    \vspace*{2em}
  \fi
  \vfill
  \centerline{\includegraphics[width=1.0in]{\SBMLbadge}}
  \vfill
  \begin{small}
  Copyright (C) all authors listed on the front page of this document.\\
  This work is made available under the \href{https://creativecommons.org/licenses/by/4.0/}{Creative Commons Attribution 4.0 International Public License}.
  \end{small}
  \clearpage
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@authoremail\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  }

\def\@maketitle{%
  \newpage
  \null
  \begin{center}%
    \let \footnote \thanks
    \@puttitle
    \vskip 1.8em%
    {\lineskip .5em%
      \@putauthorinfo
      }%
    \vskip 0.5em%
    {\large\fbox{\@packageVersion}}%
    \vskip 0.5em%
    {\large\@packageVersionDate}%
  \end{center}%
  \par%
  \vskip 1.5em%
  \ifpdf
    \hypersetup{pdftitle={\@title}}
  \fi%
  }


% Including the logo on the front page.  We switch which copy of the logo
% file we use, depending on various factors, and we switch which file format
% is used depending on the output we're producing. 

\ifgrayscalespec
  \newcommand{\@badgebasefile}{sbol-logo-gray}
\else
  \newcommand{\@badgebasefile}{sbol-logo}
\fi

\ifpdf
  % Request the JPG format specifically, because the resulting
  % quality in the final output is best.
  \newcommand{\SBMLbadge}{\@badgebasefile.jpg}%
\else%
  \newcommand{\SBMLbadge}{\@badgebasefile.eps}%
\fi


% Graphics adjustments.  The path setup is so that the \includegraphics
% in the @puttile definition can find the logo file no matter where the
% document is located (but obviously, it only works for certain path
% combinations -- it's a total hack).

\graphicspath{{./logos/}
  {../tex/logos/}
  {../project/tex/logos/}
  {../../project/tex/logos/}
  {../../../project/tex/logos/}
  {../../../../project/tex/logos/}}


% Set the page footers.
% Must do this after setting the document title.

\fancyhf{}

\newcommand{\@footchpsection}{Section \nouppercase{\leftmark}}
\newcommand{\@footpage}{Page \thepage\ of \pageref*{LastPage}}

\renewcommand{\footrule}{}

\fancypagestyle{headerandfooter}{%
  \renewcommand{\headrulewidth}{0.25pt}
  \renewcommand{\headrule}{}
  \lhead{}%
  \rhead{\color{mediumgray}\small\textsf{Section \nouppercase{\rightmark}}}%
  \cfoot{}%
  \lfoot{\color{mediumgray}\small\textsf{\@footchpsection}}%
  \rfoot{\color{mediumgray}\small\textsf{\@footpage}}%
}

\fancypagestyle{footeronly}{%
  \renewcommand{\headrule}{}%
  \lhead{}%
  \rhead{}%
  \lfoot{\color{mediumgray}\small\textsf{\@footchpsection}}%
  \rfoot{\color{mediumgray}\small\textsf{\@footpage}}%
}

\fancypagestyle{plain}{%
  \renewcommand{\headrule}{}%
  \lhead{}%
  \rhead{}%
  \lfoot{}%
  \rfoot{\color{mediumgray}\small\textsf{\@footpage}}%
}

\pagestyle{headerandfooter}


% Definition of paragraph style.

\setlength{\parindent}{0 pt}            % Unindented paragraphs, separated ...
\setlength{\parskip}{1.3 ex}            % ... by roughly one blank line.
\setlength{\partopsep}{-1ex plus 0.1ex minus -0.2ex}
\setlength{\itemsep}{-0.25ex plus 0.15ex}

% \topsep is supposed to affect list environments like itemize,
% but does nothing there.  Instead, it affects environments like tabular.

\setlength{\topsep}{0.3ex plus 0.1ex minus -0.2ex}

\renewcommand{\labelitemi}{\raisebox{0.5pt}{\color{mediumgray}\footnotesize{$\blacksquare$}}}
\renewcommand{\labelitemii}{\raisebox{-1.5pt}{\color{mediumgray}\LARGE$\bullet$}}
\renewcommand{\labelitemiii}{\color{mediumgray}\tiny\DiamondSolid}
\renewcommand{\labelitemiv}{$\diamond$}

% Definition of section heading style.

\renewcommand{\section}{\@startsection%
  {section}{1}{0pt \@plus 1ex}{-3.5ex \@plus -2ex \@minus -.2ex}%
  {1.2ex}{\clearpage\thispagestyle{footeronly}%
    \hspace*{-24.25pt}\color{sbmlgray}{\rule[1.8em]{6.84in}{0.6em}}\color{normaltextcolor}%
    \hspace*{-6.84in}\color{sbmlgray}{\rule[-0.8em]{6.84in}{0.1em}}\color{normaltextcolor}%
    \noindent\normalfont\LARGE\bfseries\sffamily\hspace*{-6.84in}}}

\newcommand{\nopagesection}{\@startsection%
  {section}{1}{0pt \@plus 1ex}{-3.5ex \@plus -2ex \@minus -.2ex}%
  {1.2ex}{\thispagestyle{footeronly}%
    \hspace*{-24.25pt}\color{sbmlgray}{\rule[1.8em]{6.84in}{0.6em}}\color{normaltextcolor}%
    \hspace*{-6.84in}\color{sbmlgray}{\rule[-0.8em]{6.84in}{0.1em}}\color{normaltextcolor}%
    \noindent\normalfont\LARGE\bfseries\sffamily\hspace*{-6.84in}}}

\renewcommand{\subsection}{\@startsection%
  {subsection}{2}{0pt}{-1.25ex \@plus 2ex \@minus -.2ex}%
  {0.1ex}{\Large\bfseries\sffamily}}

\renewcommand{\subsubsection}{\@startsection%
  {subsubsection}{3}{0pt}{-1ex \@plus 2ex \@minus -.2ex}%
  {0.4ex}{\large\bfseries\sffamily\slshape}}

\renewcommand{\paragraph}{\@startsection%
  {paragraph}{4}{0pt}{-0.75ex \@plus 2ex \@minus -.2ex}%
  {0.4ex}{\normalsize\bfseries\sffamily\slshape}}

% The References heading needs to be fixed up to account for shift
% we apply to section headings.  These defs are modified from article.cls.

\bibliographystyle{apalike}

\renewenvironment{thebibliography}[1]%
{\section*{References}%
  \pagestyle{plain}%
  \addcontentsline{toc}{section}{\protect\numberline{\refname}}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}

\newcommand{\sectionspecial}{\@startsection%
  {section}{1}{0pt}{-1.8ex \@plus -1ex \@minus -.2ex}%
  {0.8ex}{\hspace*{-41.1pt}\colorbox{sbmlgray}{\hspace*{6.99in}}\nopagebreak\\%
  \hspace*{-20pt}\normalfont\Large\bfseries\sffamily}}

% The following is a modified version of the macro from article.cls.
% It adjusts the vertical spacing in TOC for section lines.

\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{0.2ex \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries\sffamily
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}

\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\if@twocolumntoc\else
      \leftskip #2
     \fi
     \relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \if@twocolumntoc\else
       \parindent #2
     \fi
     \relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {\sffamily #4}\nobreak
     {\color{mediumgray}
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     }\nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont\sffamily #5}%
     \par}%
  \fi}

% The following is modified from natbib.sty, version 1999/05/28 7.0.
% This ensures that the References section gets a TOC entry.

\renewcommand{\bibsection}{%
  \addcontentsline{toc}{section}{\protect\textbf{\textsf{\refname}}}%
  \section*{\refname}}


% Redefine table & figure to use smaller font, sans serif,
% and to center contents by default.

\renewenvironment{table}[1][]  {\@float{table}[#1]\small\sffamily\centering}    {\end@float}
\renewenvironment{table*}[1][] {\@dblfloat{table}[#1]\small\sffamily\centering} {\end@dblfloat}
\renewenvironment{figure}[1][] {\@float{figure}[#1]\small\sffamily\centering}   {\end@float}
\renewenvironment{figure*}[1][]{\@dblfloat{figure}[#1]\small\sffamily\centering}{\end@dblfloat}


% The following was ripped out of caption.sty, version 1.4b.
% Copyright (C) 1994-95 Harald Axel Sommerfeldt
% The first few lines set up the parameters for the layout created
% by this style file.

\newcommand{\captionsize}{\small}
\newcommand{\captionfont}{\captionsize\sffamily\slshape}
\newcommand{\captionlabelfont}{\captionsize\bfseries\slshape}
\setlength{\abovecaptionskip}{1em}
\newlength{\captionmargin}
\setlength{\captionmargin}{6ex}

\newsavebox{\as@captionbox}
\newlength{\as@captionwidth}
\newcommand{\as@normalcaption}[2]{%
  #1 #2\par}
\let\as@caption\as@normalcaption
\newcommand{\as@centercaption}[2]{%
  \parbox[t]{\as@captionwidth}{{\centering#1 #2\par}}}
\let\as@shortcaption\as@centercaption
\newcommand{\as@makecaption}[2]{%
  \setlength{\leftskip}{\captionmargin}%
  \setlength{\rightskip}{\captionmargin}%
  \addtolength{\as@captionwidth}{-2\captionmargin}%
  \renewcommand{\baselinestretch}{0.9}
  \captionfont%
  \sbox{\as@captionbox}{{\captionlabelfont #1:} #2}%
  \ifdim \wd\as@captionbox >\as@captionwidth
    \as@caption{{\captionlabelfont #1:}}{#2}%
  \else%
    \as@shortcaption{{\captionlabelfont #1:}}{#2}%
  \fi}
\renewcommand{\@makecaption}[2]{%
  \vskip\abovecaptionskip%
  \setlength{\as@captionwidth}{\linewidth}%
  \as@makecaption{#1}{#2}%
  \vskip\belowcaptionskip}
\ifx\@makerotcaption\undefined
\else
  % Adjustment for the "rotating" package.
  \renewcommand{\@makerotcaption}[2]{%
    \renewcommand{\baselinestretch}{0.9}
    \captionfont%
    \sbox{\as@captionbox}{{\captionlabelfont #1:} #2}%
    \ifdim \wd\as@captionbox > .8\vsize
      \rotatebox{90}{%
        \setlength{\as@captionwidth}{.8\textheight}%
        \begin{minipage}{\as@captionwidth}%
          \as@caption{{\captionlabelfont #1:}}{#2}%
        \end{minipage}}\par
    \else%
      \rotatebox{90}{\usebox{\as@captionbox}}%
    \fi
    \hspace{12pt}}
\fi
\ifx\floatc@plain\undefined
\else
  \typeout{\space\space\space\space\space\space\space\space\space
           `float' package detected}
  \renewcommand\floatc@plain[2]{%
    \setlength{\as@captionwidth}{\linewidth}%
    \as@makecaption{#1}{#2}}
  \ifx\as@ruled\undefined
  \else
    \renewcommand\floatc@ruled[2]{%
      \setlength{\as@captionwidth}{\linewidth}%
      \renewcommand{\baselinestretch}{0.9}
      \captionfont%
      \as@caption{{\captionlabelfont #1:}}{#2}}
  \fi
\fi

%
% Additional new commands.
%

% Class and data type formatting macros.

\newcommand{\class}[1]{\figureFont{#1}}         % only SBML UML classes
\newcommand{\abstractclass}[1]{\textsl{\figureFont{#1}}} % abstract classes
\newcommand{\primtype}[1]{\literalFont{#1}}     % double, SId, SBOTerm, etc.
\newcommand{\primtypeNC}[1]{\literalFontNC{#1}} % same, but without coloring
\newcommand{\token}[1]{\literalFont{#1}}        % everything else
\newcommand{\tokenNC}[1]{\literalFontNC{#1}}    % everything else, no color
\newcommand{\val}[1]{``\token{#1}''}            % a value in XML
\newcommand{\uri}[1]{``\token{#1}''}

% Macros used for defining validation rules.
% First, preliminary internal macros.

\newcommand{\vSymbol}{\textcolor{red}{$\Box\mkern-14mu\checkmark$}}
\newcommand{\vSymbolName}{checked box\xspace}
\newcommand{\cSymbol}{\textcolor{Goldenrod}{\scalefont{0.9}\ding{115}}}
\newcommand{\cSymbolName}{triangle\xspace}
\newcommand{\mSymbol}{\textcolor{Green}{$\bigstar$}}
\newcommand{\mSymbolName}{star\xspace}

% Spacing adjustments when using the symbols inside regular 'description' env.
% Note: *not* used in \sbmlrule below.

\newcommand{\vsp}{\hspace*{4pt}}
\newcommand{\csp}{\hspace*{6.25pt}}
\newcommand{\msp}{\hspace*{4.9pt}}

% Now the actual user commands for validation rules.

\newcommand{\sbmlrule}[3]{\begin{enumerate}[labelwidth=8em,leftmargin=10em,align=left]
    \item[\textbf{\textsf{#1}}~~#2] #3
  \end{enumerate}}

\newcommand{\validRule}[2]      {\sbmlrule{#1}{\vSymbol}{#2}}
\newcommand{\consistencyRule}[2]{\sbmlrule{#1}{\cSymbol}{#2}}
\newcommand{\modelingRule}[2]   {\sbmlrule{#1}{\mSymbol}{#2}}


% Code examples.

\newcommand{\code}[1]{\literalFont{#1}}
\newcommand{\codeNC}[1]{\literalFontNC{#1}}

\lstset{escapechar=|,%
    language=XML,%
    columns=fullflexible,%
    keepspaces=true,%
    backgroundcolor=\color{veryverylightgray},%
    rulecolor=\color{sbmlgray},%
    frame=single,%
    numberstyle=\tiny\sffamily,%
    basicstyle=\small\ttfamily\color{black},%
    keywordstyle=\ttfamily,%
    xleftmargin=3.5pt,%
    xrightmargin=3.5pt,%
    aboveskip=1\baselineskip,%
    belowskip=0.4\baselineskip,%
    commentstyle=\footnotesize\itshape\color{mediumgray},%
    tabsize=2,%
    captionpos=b}

\lstdefinestyle{XML}{%
    language=XML}

\lstdefinestyle{bash}{%
    language=bash}%

\newcommand{\examplespacing}{\renewcommand{\baselinestretch}{0.88}}

\lstnewenvironment{example}[1][]
  {\lstset{#1}\examplespacing \csname lst@SetFirstLabel\endcsname}
  {\regularspacing \csname lst@SaveFirstLabel\endcsname}

\newcommand{\exampleFile}[2][style=XML]{%
  \lstset{#1}\examplespacing\lstinputlisting{#2}\regularspacing}


% Margin note commands.
% The \reversemarginpar is to put notes in the left margin.

\reversemarginpar  % Want these be put on the left, not the right.

\newcommand{\notice}{\marginpar{\hspace*{34pt}\raisebox{-0.5ex}{\color{black}\Large\ding{43}}}}

% Margin notes.
%
% Todonotes is nice and offers things like a list of notes, but it uses TikZ,
% and that's a heavy package to load every time.  I got annoyed by how much
% it slowed down my latex runs that I created a simple note alternative
% instead. Here's the original todonotes version, for posterity:
% 
% \RequirePackage[textsize=scriptsize]{todonotes}
%
% \if@draftspec
%   \newcommand{\sbmlshownotes}{}
% \else
%   \newcommand{\sbmlshownotes}{disable}
% \fi
%
% \newcommand{\draftnote}[1]{\todo[backgroundcolor=lightyellow,%
%  bordercolor=lightgray,linecolor=mediumgray,\sbmlshownotes]{\textit{#1}}}

\newcommand{\draftnoteInternal}[1]{\mbox{}\marginpar{\hspace{0pt}\fcolorbox{Gold}{lightyellow}
    {\scriptsize\begin{minipage}[t]{0.65in}\raggedright\textit{#1}\end{minipage}}}}

\if@draftspec
  \newcommand{\draftnote}[1]{\draftnoteInternal{#1}}
\else
  \newcommand{\draftnote}[1]{}
\fi


% Line numbered environments.

\newenvironment{larray}{%
  \begin{linenomath}\setlength{\arraycolsep}{1.5pt}\begin{eqnarray}}%
  {\end{eqnarray}\end{linenomath}\par\vspace*{-0.7em}}

\newenvironment{larray*}{%
  \begin{linenomath}\setlength{\arraycolsep}{1.5pt}\begin{eqnarray*}}%
  {\end{eqnarray*}\end{linenomath}\par\vspace*{-0.7em}}


% Cross-references.
%
% We load the varioref package and define a set of macros for referring to
% floats and sections in a consistent way, such that the entire reference
% ("Section X", "Figure Y", etc.) is made into a hyperlink -- not only "X"
% and "Y", as would be the case with using the normal approach of writing
% "Section~\vref{...}".  Since all figure, table and section number
% references are always capitalized (they are the proper names of the
% objects, after all), the problem of creating a macro is simplified.
% SBMLPkgSpec defines the following for this purpose:
%
%   \fig{...}
%   \tab{...}
%   \sec{...}
%
% In addition, it defines starred versions of the above:
%
%   \fig*{...}
%   \tab*{...}
%   \sec*{...}
%
% The starred versions are useful when you have two or more references in
% the same paragraph to a float or section that is located elsewhere in the
% document, to avoid having text like the following happen:
%
%   "In Figure 2 on the next page, blah blah blah.  Figure 2 on the
%   following page also blah blah blah."
%
% Using the unstarred version for the first reference and starred version
% for subsequent references avoids this, and will produce text like this:
% 
%   "In Figure 2 on the next page, blah blah blah.  Figure 2 also blah
%   blah blah."
%
% Note: this overrides the definition of \sec{...} from the AMS math
% package. I decided this is likely to be acceptable to users because
% in SBML's domain of activity, it is very unlikely that someone would
% write a mathematical formula using the \sec command in a latex document
% specifying an SBML Level 3 package.
%
% As an alternative, the following plain varioref macros will work:
%
% * Use \vref{...} for everything and it will insert Figure~X, Table~Y,
%   Section~Z, etc., as appropriate for the reference.  You do not need to
%   add the object name; in other words, don't write "Section~\vref{foo}",
%   write just "\vref{foo}".
%
% * Use \vref*{...} if the reference is in parentheses, like "(\vref*{...})".
%
% * At the beginning of a paragraph (and ONLY there), use \Vref*{...}.
%
% * For a range, use \vrefrange{startlabel}{endlabel}.
%
% To see actual examples of using this, grep for "vref" in *.tex in the
% JSBML User Guide directory.

\labelformat{chapter}{Chapter~#1}
\labelformat{table}{Table~#1}
\labelformat{figure}{Figure~#1}

\newcommand{\sectionlabel}{Section}
\newcommand{\setlabel}[1]{\renewcommand{\sectionlabel}{#1}}
\newcommand{\normallabels}{\setlabel{Section}}
\newcommand{\appendixlabels}{\setlabel{Appendix}}

\labelformat{section}{\sectionlabel~#1}
\labelformat{subsection}{\sectionlabel~#1}
\labelformat{subsubsection}{\sectionlabel~#1}
\labelformat{paragraph}{\sectionlabel~#1}

\newcommand{\@commonRefNoStar}[1]{\xspace\Vref*{#1}\xspace}
\newcommand{\@commonRefStar}[1]{\ref{#1}\xspace}

\newcommand{\fig}[1]{\normallabels\@commonRefNoStar{#1}}
\WithSuffix\newcommand\fig*[1]{\normallabels\@commonRefStar{#1}}

\newcommand{\tab}[1]{\normallabels\@commonRefNoStar{#1}}
\WithSuffix\newcommand\tab*[1]{\normallabels\@commonRefStar{#1}}

\renewcommand{\sec}[1]{\normallabels\@commonRefNoStar{#1}}
\WithSuffix\newcommand\sec*[1]{\normallabels\@commonRefStar{#1}}

\newcommand{\sect}[1]{\normallabels\@commonRefNoStar{#1}}
\WithSuffix\newcommand\sect*[1]{\normallabels\@commonRefStar{#1}}

\newcommand{\apdx}[1]{\appendixlabels\@commonRefNoStar{#1}}
\WithSuffix\newcommand\apdx*[1]{\appendixlabels\@commonRefStar{#1}}


% Misc.

\newcommand{\dblquote}    {\verb|"|} %"


% Here we list common SBML entities, to get consistent font & appearance.

\newcommand{\AlgebraicRule}{\textbf{\class{AlgebraicRule}}\xspace}
\newcommand{\Annotation}{\textbf{\class{Annotation}}\xspace}
\newcommand{\AssignmentRule}{\textbf{\class{AssignmentRule}}\xspace}
\newcommand{\Compartment}{\textbf{\class{Compartment}}\xspace}
\newcommand{\Constraint}{\textbf{\class{Constraint}}\xspace}
\newcommand{\Delay}{\textbf{\class{Delay}}\xspace}
\newcommand{\EventAssignment}{\textbf{\class{EventAssignment}}\xspace}
\newcommand{\Event}{\textbf{\class{Event}}\xspace}
\newcommand{\FunctionDefinition}{\textbf{\class{FunctionDefinition}}\xspace}
\newcommand{\InitialAssignment}{\textbf{\class{InitialAssignment}}\xspace}
\newcommand{\KineticLaw}{\textbf{\class{KineticLaw}}\xspace}
\newcommand{\ListOfCompartments}{\textbf{\class{ListOfCompartments}}\xspace}
\newcommand{\ListOfConstraints}{\textbf{\class{ListOfConstraints}}\xspace}
\newcommand{\ListOfEventAssignments}{\textbf{\class{ListOfEventAssignments}}\xspace}
\newcommand{\ListOfEvents}{\textbf{\class{ListOfEvents}}\xspace}
\newcommand{\ListOfFunctionDefinitions}{\textbf{\class{ListOfFunctionDefinitions}}\xspace}
\newcommand{\ListOfInitialAssignments}{\textbf{\class{ListOfInitialAssignments}}\xspace}
\newcommand{\ListOfLocalParameters}{\textbf{\class{ListOfLocalParameters}}\xspace}
\newcommand{\ListOfModifierSpeciesReferences}{\textbf{\class{ListOfModifierSpeciesReferences}}\xspace}
\newcommand{\ListOfPackages}{\textbf{\class{ListOfPackages}}\xspace}
\newcommand{\ListOfParameters}{\textbf{\class{ListOfParameters}}\xspace}
\newcommand{\ListOfReactions}{\textbf{\class{ListOfReactions}}\xspace}
\newcommand{\ListOfRules}{\textbf{\class{ListOfRules}}\xspace}
\newcommand{\ListOfSpeciesReferences}{\textbf{\class{ListOfSpeciesReferences}}\xspace}
\newcommand{\ListOfSpecies}{\textbf{\class{ListOfSpecies}}\xspace}
\newcommand{\ListOfUnitDefinitions}{\textbf{\class{ListOfUnitDefinitions}}\xspace}
\newcommand{\ListOfUnits}{\textbf{\class{ListOfUnits}}\xspace}
\newcommand{\ListOf}{\class{ListOf\rule{0.3in}{0.5pt}}\xspace}
\newcommand{\LocalParameter}{\textbf{\class{LocalParameter}}\xspace}
\newcommand{\Message}{\textbf{\class{Message}}\xspace}
\newcommand{\Model}{\textbf{\class{Model}}\xspace}
\newcommand{\ModifierSpeciesReference}{\textbf{\class{ModifierSpeciesReference}}\xspace}
\newcommand{\Notes}{\textbf{\class{Notes}}\xspace}
\newcommand{\Package}{\textbf{\class{Package}}\xspace}
\newcommand{\Parameter}{\textbf{\class{Parameter}}\xspace}
\newcommand{\Priority}{\textbf{\class{Priority}}\xspace}
\newcommand{\RateRule}{\textbf{\class{RateRule}}\xspace}
\newcommand{\Reaction}{\textbf{\class{Reaction}}\xspace}
\newcommand{\Rule}{\textbf{\class{Rule}}\xspace}
\newcommand{\SBML}{\textbf{\class{SBML}}\xspace}
\newcommand{\SBase}{\textbf{\abstractclass{SBase}}\xspace}
\newcommand{\SimpleSpeciesReference}{\textbf{\class{SimpleSpeciesReference}}\xspace}
\newcommand{\SpeciesReference}{\textbf{\class{SpeciesReference}}\xspace}
\newcommand{\Species}{\textbf{\class{Species}}\xspace}
\newcommand{\StoichiometryMath}{\textbf{\class{StoichiometryMath}}\xspace}
\newcommand{\Trigger}{\textbf{\class{Trigger}}\xspace}
\newcommand{\UnitDefinition}{\textbf{\class{UnitDefinition}}\xspace}
\newcommand{\Unit}{\textbf{\class{Unit}}\xspace}


% 
% Final settings before the body begins.
%

\color{normaltextcolor}                % Default body font color.

%% -----------------------------------------------------------------------------
%% End of file `cekarticle.cls'.
%% -----------------------------------------------------------------------------