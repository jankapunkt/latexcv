# Chinese, Japanese, Korean (CJK) Language Support

## Installation

At first you need to have the CJK LaTeX packages to be installed on your system.
 
The easiest way is to install install all packages for Chinese, Japanese and KoreaN (CJK) from the apt repositories (Ubuntu Linux):


```bash
sudo apt-get install latex-cjk-all
```

Or install language specific packages:

Chinese only:

```bash
sudo apt-get install texlive-lang-chinese
```

Japanese only:

```bash
sudo apt-get install texlive-lang-japanese
```

Korean only:

```bash
sudo apt-get install texlive-lang-korean
```

(Pull requests with installation instructions for other OS are much appreciated.)

## Import and use the CJK environment

Considering the structure of this repository you can include the `cjk.tex` using the `\input` command using a relative path. You also need to define a `\cjklang` variable, that defines the character set to use.

```
\documentclass[10pt,A4]{article} % just added to demonstrate where to put the \def and input	
\usepackage[utf8]{inputenc}      % just added to demonstrate where to put the \def and input
\def \cjklang {gbsn}             % defines to use gbsn simplified Chinese for this document
\input{../cjk/cjk.tex}           % includes the CJK setup script.
% ...
```

That's it.

You can use for `\cjklang` one of the following options: 

* Simplified Chinese: `gbsn`or `gkai` 
* Traditional Chinese: `bmsi` or `bkai`  
* Japnese: `min` (Mincho), `goth` (Gothic) or `maru` (Maru Gothic)
* Korean: `mj` for MyongJu

Note, that there is no need to place the CJK environment inside the document. It is automatically done when including the `cjk.tex` file. The `cjk.tex` script uses the `\AfterEndPreamble` and `\AtEndDocument` hooks to place the environment at the very beginning and end of the document.
If you need more granular environments (e.g. mixing two or more) you can deactivate these hooks and use the `\begin{cjkenv}` and `\end{cjkenv}` in a custom way.

## Troubleshooting

The `cjk.tex` includes the `CJKutf8` package in order to cross-support the typesetting with the UTF-8 based typesetting of the `main.tex` files of the templates. If there is trouble in displaying characters, this may be your first source for troubleshooting.

If there are errors like 

```
! PACKAGE INPUTENC ERROR: UNICODE CHAR Ņ� (U+5173)
(INPUTENC)                NOT SET UP FOR USE WITH LATEX.

SEE THE INPUTENC PACKAGE DOCUMENTATION FOR EXPLANATION.
Type  H <return>  for immediate help.
``` 

it may be caused, due to the use of the environment inside a header defining command like `\section`. 
For troubleshooting such issues see this post: https://tex.stackexchange.com/questions/478696/is-there-a-way-to-make-fancyhdr-with-pagestyle-fancy-to-be-compatible-with-chine
