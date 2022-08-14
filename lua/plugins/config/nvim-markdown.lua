-- disable header folding
vim.g.vim_markdown_folding_disabled = 1
vim.cmd('let g:pandoc#modules#disabled = ["folding"]')

-- do not use conceal feature, the implementation is not so good
vim.g.vim_markdown_conceal = 0

-- disable math tex conceal feature
vim.g.tex_conceal = ""
vim.g.vim_markdown_math = 1

vim.g.vim_markdown_no_default_key_mappings = 1

vim.cmd([[augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END]])
