<h1 align="center">
  <img alt="latexcv icon" src="./logo.svg" height="300px" />
  <br />
  LaTex CV and Resume Collection
</h1>

<div align="center">
  <a href="https://github.com/jankapunkt/latexcv/actions/workflows/buildall.yml">
    <img alt="buildall workflow status" src="https://github.com/jankapunkt/latexcv/actions/workflows/buildall.yml/badge.svg">
  </a>
  <a href="http://www.repostatus.org/#active" title="Project Status: Active – The project has reached a stable, usable state and is being actively developed.">
    <img src="http://www.repostatus.org/badges/latest/active.svg" alt="Project Status: Active" />
  </a>
  <img alt="license badge" src="https://img.shields.io/github/license/jankapunkt/latexcv">
</div>

<br />
<br />
<p align="center">
:necktie: A collection of simple and easy to use, yet powerful LaTeX templates for CVs and resumes. All of them are self designed and self implemented and not copied from template collections.
</p>
<p>
Now with support for Chinese, Japanese and Korean character encoding. Setup is only two lines of code! Read more <a href="docs/cjk/README.md">here</a>.
</p>	
<br />

<div align="center">
<table width="100%" margin-left="auto" margin-right="auto">
	<tr>
		<th>Classic</th>
		<th>Modern</th>
		<th>Minimalistic</th>
	</tr>
	<tr>
		<td width="33%">
			<img src="docs/media/classic.png" 
				alt="Classic CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-classic-cv/tvghvdsffwgs">Edit on overleaf</a>
		</td>
		<td width="33%">
			<img src="docs/media/modern.png" 
				alt="Modern CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-modern-cv/kbfxhgjtxhgh">Edit on overleaf</a>
		</td>
		<td width="33%">
			<img src="docs/media/minimal.png" 
				alt="Minimalistic Layout CV example preview" />
		</td>
	</tr>
</table>

<table width="100%" margin-left="auto" margin-right="auto">
	<tr>
		<th>Two Columns</th>
   	    	<th>Sidebar</th>
       	<th>Sidebar Left</th>
	</tr>
	<tr>
		<td width="33%">
			<img src="docs/media/two_column.png" 
				alt="Two Column CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-two-column-cv/mgdkqgdcktjv">Edit on overleaf</a>
		</td>
		<td width="33%">
    			<img src="docs/media/sidebar.png" 
    				alt="Sidebar CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/sidebar-cv/kssfdykmmdvz">Edit on overleaf</a>
    		</td>
		<td width="33%">
    			<img src="docs/media/sidebarleft.png"
    				alt="Left sidebar CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-left-sidebar-cv/tmmnhrkcmpgv">Edit on overleaf</a>
    		</td>
	</tr>
</table>

<table width="100%" margin-left="auto" margin-right="auto">
	<tr>
   		<th>Row Layout</th>
		<th>Infographics</th>
    		<th>Infographics 2</th>
	</tr>
	<tr>
		<td width="33%">
			<img src="docs/media/rows.png"
    		    		alt="Row-Layout CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-row-layout-cv/pdjxrdkpddzq">Edit on overleaf</a>
		</td>
		<td width="33%">
			<img src="docs/media/infographics.png" 
				alt="Infographics CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/infographics-cv/hdgkztmhztph">Edit on overleaf</a>
		</td>	  
		<td width="33%">
			<img src="docs/media/infographics2_en.png" 
				alt="Infographics CV example preview" />
		</td>
	</tr>
</table>
</div>

**Great first impression**

Stand out with a pixel-perfect layout. Give decision makers and HR only most important information about you in one single page
or provide a complete and extensive full curriculum viate.

**Beginner friendly**

Pick a template, replace the content, compile, done. If that's not enough you can easily customize colors, fonts and layout. The templates are documented directly in the code.

**Minimal environment**

You need a minimal tex-live distribution to compile the templates. **No XeTeX, Koma or LuaTeX required.** No other SDKs or environments required.

## How to build?

There are multiple ways to build your very own version of these templates.

### Using Overleaf

Most of the templates are also available on [Overleaf](https://overleaf.com), an 
online LaTeX editing and publishing tool.

Just pick one and start editing without any local installation required:

- <a href="https://www.overleaf.com/latex/templates/jan-kusters-classic-cv/tvghvdsffwgs">Classic</a>
- <a href="https://www.overleaf.com/latex/templates/jan-kusters-modern-cv/kbfxhgjtxhgh">Modern</a>
- <a href="https://www.overleaf.com/latex/templates/jan-kusters-two-column-cv/mgdkqgdcktjv">Two Column</a>
- <a href="https://www.overleaf.com/latex/templates/sidebar-cv/kssfdykmmdvz">Sidebar</a>
- <a href="https://www.overleaf.com/latex/templates/jan-kusters-left-sidebar-cv/tmmnhrkcmpgv">Left sidebar</a>
- <a href="https://www.overleaf.com/latex/templates/jan-kusters-row-layout-cv/pdjxrdkpddzq">Row Layout</a>
- <a href="https://www.overleaf.com/latex/templates/infographics-cv/hdgkztmhztph">Infographics</a>

### Using Docker

We now have a Dockerfile you can use to build your latex environment. 
For this you need to have Docker installed on your system.

Get Docker: https://docs.docker.com/get-docker/

We provide scripts for building the image and running the containers, 
so you should fine by simply running the `build.sh` script:

```shell
$ .docker/create_image.sh
```

You should now be able to build CVs simply by providing the folder name:

```shell
$ .docker/build.sh classic
```

Constraints: You need to be in the top-level folder of this project and the image has been created (see prior step).

You can also run a daemon and pass through build commands, suitable if you build many times in sequence:

```shell
$ .docker/daemon.sh
$ .docker/dbuild.sh classic
$ .docker/dbuild.sh modern
$ # ... and so on
```

This has originally been implemented by https://github.com/blang/latex-docker/tree/master

### Manual build

The following guide just briefly describes the requirements and build procedure as there are many ways to install a LaTeX distribution on various OS. Please create an issue, if this part is not helpful.

**Build Requirements**

You will need some minimal Texlive distrubution (The full texlive distribution is nearly 2GB large but you will need only a part of it). A good starting point is here: https://www.latex-project.org/get/#tex-distributions

If you want to install texlive from tug.org instead, you can use this guide: https://tug.org/texlive/

Users of various Linux distrubutions can also install texlive from their repositories.

This repo also contains a `texlive.profile` file in the project root, that can be used to install the minimum required texlive packages when manually installing texlive.


**Build Procedure**


 * Clone or download this project. 
 * Change to a template folder, which contains a `main.tex` file do
 * Edit the `main.tex` according to your CV credentials, optionally change settings and colors etc.
 * Run `pdflatex` (build/compile) 
 - The `main.pdf` should show the output.


## Contribution

**Contributors are very welcome**. You want to contribute? Awesome! Please check the [contribution guidelines](https://github.com/jankapunkt/latexcv/blob/master/CONTRIBUTING.md) first to make it a success.

## Sponsors

:heart: Thanks a lot to all sponsors of this project, your contribution will help to keep this project going:

- [janemiceli](https://github.com/janemiceli)

## License

The MIT License (MIT)

Copyright (c) 2014-2021 Jan Küster

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
	
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

