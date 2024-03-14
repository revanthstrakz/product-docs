import { defineConfig } from 'vitepress'
import { generateSidebar } from 'vitepress-sidebar';

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Manuals",
  description: "Manuals for Jangala's products and services",
  themeConfig: {
    logo: {
      light: '/jng-purple-vector.svg',
      dark:  '/jng-blue-vector.svg'
    },

    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Get Box', link: '/get-box/1-introduction' },
      { text: 'Big Box', link: '/big-box/1-introduction' },
      { text: 'Try Markdown', link: '/test-markdown' },
    ],

    sidebar: generateSidebar({
      /*
       * For detailed instructions, see the links below:
       * https://github.com/jooy2/vitepress-sidebar#options
       */
      documentRootPath: 'docs',
      // scanStartPath: null,
      // resolvePath: null,
      // useTitleFromFileHeading: true,
      useTitleFromFrontmatter: true,
      // useFolderTitleFromIndexFile: false,
      useFolderLinkFromIndexFile: true,
      hyphenToSpace: true,
      // underscoreToSpace: true,
      capitalizeFirst: true,
      capitalizeEachWords: true,
      collapsed: true,
      // collapseDepth: 2,
      // sortMenusByName: false,
      sortMenusByFrontmatterOrder: true,
      // sortMenusOrderByDescending: false,
      // sortMenusOrderNumerically: true,
      // frontmatterOrderDefaultValue: 0,
      // manualSortFileNameByPriority: ['first.md', 'second', 'third.md'],
      // excludeFiles: ['first.md', 'secret.md'],
      // excludeFolders: ['first', 'second'],
      // includeDotFiles: false,
      // includeRootIndexFile: false,
      // includeFolderIndexFile: false,
      // includeEmptyFolder: false,
      // rootGroupText: 'Contents',
      // rootGroupLink: 'https://github.com/jangala-dev',
      // rootGroupCollapsed: false,
      // convertSameNameSubFileToGroupIndexPage: false,
      // folderLinkNotIncludesFileName: false,
      // keepMarkdownSyntaxFromTitle: false,
      // debugPrint: false,
    }),

    // sidebar: [
    //   {
    //     text: 'Proposal',
    //     items: [
    //       { text: 'Introduction', link: '/proposal/introduction' },
    //       { text: 'Existing Blues', link: '/proposal/existing' },
    //       { text: 'Proposal', link: '/proposal/proposal' },
    //       { text: 'Markdown Examples', link: '/markdown-examples' },
    //       { text: 'Runtime API Examples', link: '/api-examples' }
    //       // { text: 'MD ex', link: '/mdex' }
    //     ]
    //   }
    // ],

    search: {
      provider: 'local'
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/jangala-dev/manuals' }
    ],

    editLink: {
      pattern: 'https://github.com/jangala-dev/product-docs/edit/main/docs/:path',
      text: 'Edit this page on GitHub'
    },  
  },
  base:'/product-docs/',
  head: [['link', { rel: 'icon', href: '/product-docs/favicon.png' }]]
})
