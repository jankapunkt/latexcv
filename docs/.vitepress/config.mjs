import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "latexcv.pro",
  description: "Free LaTeX cv and resume templates",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    logo: '/logo.svg',
    
    search: {
      provider: 'local',
      options: {
        disableDetailedView: true
      }
    },
    nav: [
      { text: 'Home', link: '/' },
      {
        text: 'Getting started',
        items: [
          { text: 'Edit on Overleaf', link: 'https://www.overleaf.com/latex/templates?q=jan+k%C3%BCster' },
          { text: 'Build via Docker', link: 'https://github.com/jankapunkt/latexcv?tab=readme-ov-file#using-docker' },
          { text: 'Build manually', link: 'https://github.com/jankapunkt/latexcv/?tab=readme-ov-file#manual-build' }
        ]
      },
      {
        text: 'Donate',
        items: [
          { text: 'Sponsor on GitHub', link: 'https://github.com/sponsors/jankpunkt' },
          { text: 'Via PayPal', link: 'https://paypal.me/kuesterjan' }
        ]
      }
    ],

    sidebar: [
      {
        text: 'Getting started',
        items: [
          { text: 'Edit on Overleaf', link: 'https://www.overleaf.com/latex/templates?q=jan+k%C3%BCster' },
          { text: 'Build via Docker', link: 'https://github.com/jankapunkt/latexcv?tab=readme-ov-file#using-docker' },
          { text: 'Build manually', link: 'https://github.com/jankapunkt/latexcv/?tab=readme-ov-file#manual-build' }
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/jankapunkt/latexcv' }
    ],
    
    footer: {
      message: 'All templates are released under the MIT License.', 
      copyright: 'Copyright © 2025-present Jan Küster'
    }
  }
})
