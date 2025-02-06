---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "latexcv.pro"
  text: "Free LaTeX cv and resume templates"
  tagline: Crafting your own is essential to stand out. These templates will make it easy as a snap! Select one and just get started. They're all free, no hidden costs!
  image:
    src: /logo.svg
    alt: LaTeX CV Banner
  actions:
    - theme: brand
      text: Edit on Overleaf
      link: https://www.overleaf.com/latex/templates?q=jan+k%C3%BCster
    - theme: alt
      text: Build via Docker
      link: https://github.com/jankapunkt/latexcv?tab=readme-ov-file#using-docker
    - theme: alt
      text: Build manually
      link: https://github.com/jankapunkt/latexcv/?tab=readme-ov-file#manual-build

---


<script setup>
import { VPTeamMembers } from 'vitepress/theme'

const members = [
  {
    avatar: 'https://avatars.githubusercontent.com/u/1135285?v=4',
    name: 'Jan Küster',
    title: 'Creator of LaTeX cv',
    sponsor: 'https://github.com/sponsors/jankapunkt',
    links: [
      { icon: 'github', link: 'https://github.com/jankapunkt' },
      { icon: 'linkedin', link: 'https://www.linkedin.com/in/jan-kuester/' }
    ]
  },
]
</script>


## Gallery

<div align="center">
<table width="100%" margin-left="auto" margin-right="auto">
<tbody>
	<tr>
		<th>Classic</th>
		<th>Modern</th>
		<th>Minimalistic</th>
	</tr>
	<tr>
		<td width="33%">
			<img src="/media/classic.png" 
				alt="Classic CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-classic-cv/tvghvdsffwgs">Edit on overleaf</a>
		</td>
		<td width="33%">
			<img src="/media/modern.png" 
				alt="Modern CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-modern-cv/kbfxhgjtxhgh">Edit on overleaf</a>
		</td>
		<td width="33%">
			<img src="/media/minimal.png" 
				alt="Minimalistic Layout CV example preview" />
			 <Badge type="tip" text="Soon on Overleaf!" />
		</td>
	</tr>
	</tbody>
</table>

<table width="100%" margin-left="auto" margin-right="auto">
<tbody>
	<tr>
		<th>Two Columns</th>
   	    	<th>Sidebar</th>
       	<th>Sidebar Left</th>
	</tr>
	<tr>
		<td width="33%">
			<img src="/media/two_column.png" 
				alt="Two Column CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-two-column-cv/mgdkqgdcktjv">Edit on overleaf</a>
		</td>
		<td width="33%">
    			<img src="/media/sidebar.png" 
    				alt="Sidebar CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/sidebar-cv/kssfdykmmdvz">Edit on overleaf</a>
    		</td>
		<td width="33%">
    			<img src="/media/sidebarleft.png"
    				alt="Left sidebar CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-left-sidebar-cv/tmmnhrkcmpgv">Edit on overleaf</a>
    		</td>
	</tr>
	</tbody>
</table>

<table width="100%" margin-left="auto" margin-right="auto">
<tbody>
	<tr>
   		<th>Row Layout</th>
		<th>Infographics</th>
    		<th>Infographics 2</th>
	</tr>
	<tr>
		<td width="33%">
			<img src="/media/rows.png"
    		    		alt="Row-Layout CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/jan-kusters-row-layout-cv/pdjxrdkpddzq">Edit on overleaf</a>
		</td>
		<td width="33%">
			<img src="/media/infographics.png" 
				alt="Infographics CV example preview" />
				<a href="https://www.overleaf.com/latex/templates/infographics-cv/hdgkztmhztph">Edit on overleaf</a>
		</td>	  
		<td width="33%">
			<img src="/media/infographics2_en.png" 
				alt="Infographics CV example preview" />
		</td>
	</tr>
	</tbody>
</table>
</div>

## Documentation and Source 

All templates are hosted on GitHub. There, you'll also find the documentation and [the installation guides](https://github.com/jankapunkt/latexcv?tab=readme-ov-file#how-to-build), in case you want to edit them locally.


## FAQ


Please note: There is also [wiki section](https://github.com/jankapunkt/latexcv/wiki) with troubleshooting information or language-specific guides.´

<details>

<summary>Are there any hidden costs?</summary>

No! All templates are released under [MIT license](https://opensource.org/license/mit) and are free to use **AND** also free to (re-)distribute, even commercially!

</details>

<details>
<summary>How can I support you?</summary>

My templates helped you to lang a new job? Congratualtions, this is awesome! 

You can either [sponsor me on GitHub](https://github.com/sponsors/jankapunkt) or [donate via PayPal](https://paypal.me/kuesterjan).

</details>

<details>
<summary>Why don't you provide classes?</summary>

I want these templates to be as beginner friendly as possible!
Many parts of the CV have to handcrafted to be pixel perfect, because everone
provides different content which complicates things a lot when using classes.

Instead, I opted for single standalone documents for each template, so you
can immediately start to add your content and change details on your own behalf
without changing the entire layout.

</details>



<details>
<summary>Can I help to improve the templates or documentation?</summary>

Of course! Please get familar with the [conribution guide](https://github.com/jankapunkt/latexcv/blob/master/CONTRIBUTING.md) and then we can get started!

</details>



<details>
<summary>I found a bug or technical problem and I'm sure it's a problem with one of your templates.</summary>

That's awesome, please [open an issue in the repository](https://github.com/jankapunkt/latexcv/issues) or get involved with me directly (info [at] jankuester [dot] com).

</details>

<details>
<summary>I have trouble setting up things or need help to make my CV look in a specific way.</summary>

First, I encourage you to seek help by [asking a question / opening a discussion](https://github.com/jankapunkt/latexcv/discussions) in the repository. Chances are, someone else already solved this issue.

If you want to reach out to me instead, please be aware of the following: While I'm always open to help, I'm doing this in my free time and mostly for free. Please understand, I will charge fees for personal support. Get in contact with me, if you're okay with it (info [at] jankuester [dot] com).

</details>



<details>
<summary>Can you design me a custom CV?</summary>

Yes, of course! However, please note that I'll charge you for the invested time and effort. However, you can get a decent discount, if you're willing to contribute the result as template (under MIT license) to this repository. Reach out to me via (info [at] jankuester [dot] com).

</details>

## Get in touch

<VPTeamMembers size="small" :members="members" />