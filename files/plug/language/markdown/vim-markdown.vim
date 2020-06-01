" ==================================================
" 名稱: vim-markdown
" 來源: 
" ==================================================

" 禁用折叠
let g:vim_markdown_folding_disabled = 1

" Disable conceal
let g:vim_markdown_conceal = 0

" To disable math conceal with LaTeX math syntax enabled
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" Disabling conceal for code fences requires an additional setting
let g:vim_markdown_conceal_code_blocks = 0

" Syntax extensions
" LaTeX math
let g:vim_markdown_math = 1
" YAML Front Matter
let g:vim_markdown_frontmatter = 1
" TOML Front Matter
let g:vim_markdown_toml_frontmatter = 1
" JSON Front Matter
let g:vim_markdown_json_frontmatter = 1
" Strikethrough
let g:vim_markdown_strikethrough = 1

" Do not require .md extensions for Markdown links
let g:vim_markdown_no_extensions_in_markdown = 1
