local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {

	-- OWN LATEX TEMPLATE
	s(
		{ trig = "start", snippetType = "snippet", condition = line_begin, wordTrig = true },
		fmta(
			[[
    \documentclass{article}

    % SYMBOLS, MATH
    \usepackage{amsmath}
    \usepackage[version=4]{mhchem}
    \usepackage{textgreek}
    \usepackage{mathtools}
    \usepackage{cancel}
    \usepackage{empheq}
    \newcommand*\widefbox[1]{%
      \fbox{%
      \vspace{0.5em}%
      \hspace{2em}%
      #1%
      \hspace{2em}%
      \vspace{0.5em}%
      }
    }

    % FIGURES, TABLES, LISTS
    \usepackage{graphicx}
    \usepackage{pgf}
    \usepackage{booktabs}
    \usepackage{enumitem}

    % FONT
    \usepackage[utf8]{inputenc}
    \usepackage{sectsty}
    \usepackage{lmodern}
    \allsectionsfont{\sffamily}
    \renewcommand{\contentsname}{{\sffamily Table of Contents}}

    % TOC STYLE
    \usepackage{tocloft}
    \renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
    \renewcommand{\cftsecfont}{\normalfont}
    \renewcommand{\cftsecpagefont}{\normalfont}

    % BIBLIOGRAPHY
    %\usepackage{biblatex}
    %\bibliography{}
    \usepackage{hyperref}

    % UNITS
    \usepackage{siunitx}
    \DeclareSIUnit\bar{bar}
    \DeclareSIUnit\feet{ft}
    \DeclareSIUnit\atmosphere{atm}

    % SOLUTION ENVIRONMENT
    \newenvironment{solution}%
      {\noindent\textbf{Solution:}\par}%
      {\medskip}

    \title{<>}
    \author{<>}
    \date{<>}


    \begin{document}

    \maketitle
    \vspace{-3em}
    \tableofcontents

    <>

    \end{document}
    ]],
			{
				i(1),
				i(2),
				i(3, "~"),
				i(4),
			}
		)
	),

	-- USEPACKAGE
	s(
		{ trig = "pkg", snippetType = "snippet", wordTrig = true },
		fmta(
			[[
    \usepackage<>{<>}
    ]],
			{
				i(1),
				i(0),
			}
		)
	),
}
