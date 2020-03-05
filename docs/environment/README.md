# Use Environment Variables

Sometimes you might want to compile different versions of the same source
without changing the code manually but using a given flag or value from
the terminal.

A good example would be a greyscale or monochrome coloured version of your
cv in case there is no color printer available.

## Include the script

There is the [environment.tex](./environment.tex) script that implements
a command `\getenv` to read environment variables into a new command.

You can include the script in the definitions section of your document
and also define all your variables there.

The following minimal example reads some variables from the environment to 
create a greyscale version of the document (named `main.tex`):

```latex
\documentclass{article}

% import our env reader
\input{environment.tex}

% think like: \COLMODE <= COLORMODE
\getenv[\COLMODE]{COLORMODE}

% define colors
\usepackage{xcolor}
\definecolor{main}{RGB}{255,150,0}
\definecolor{sub}{RGB}{0,50,150}

% apply color mode using string compare
\usepackage{xifthen}
\ifthenelse{\equal{\COLMODE}{greyscale}}
{\selectcolormodel{gray}} % condition is true
{} % else

\begin{document}
\LARGE
\section{\textcolor{main}{Main Color}}

\small
\textcolor{sub}{Et non voluptatem distinctio. Sint nam magni sequi sequi labore ab. Neque praesentium quod aut et culpa ipsum quia. Et aliquid vel dolore voluptatem quam ipsam ut. Fugit dicta error quia est.}

\LARGE
\section{\textcolor{main}{Main Color}}

\small
\textcolor{sub}{Perspiciatis nemo necessitatibus quo. Vel quod laborum voluptatum mollitia enim facilis. Quo iure suscipit est. Facilis hic illum necessitatibus nemo reiciendis. Natus sed sed commodi nihil perferendis incidunt laboriosam. Sequi aut nemo asperiores ex sit necessitatibus.}

\end{document}
``` 


## Run `pdflatex`

```bash
$ COLORMODE="greyscale" pdflatex main.tex
```
## Issues and troubleshooting

While it may run fine from the commandline, there may be issues with editors
and `write18`.

If you experience such issues you may take a look in the pereferences of your editor / IDE and look for permissions on scripts (write files, read files, system commands and apply accordingly.)

For `texworks` you need to enable "Allow scripts to run system commands".

Note, that this may introduce potential vulnerabilities in server environments,
thus use at your own risk. 