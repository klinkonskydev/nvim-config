vim.api.nvim_exec([[
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])
]], false)


local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

vim.cmd([[
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev 1! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
]])

vim.api.nvim_exec([[ autocmd InsertEnter * norm zz ]], false)

vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

vim.cmd [[silent! set updatetime=300 timeout timeoutlen=500 ttimeout ttimeoutlen=50 ttyfast lazyredraw]]

vim.api.nvim_exec([[ autocmd VimEnter * set noru]], false)

vim.cmd [[hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE]]

-- vim.api.nvim_exec([[ autocmd VimEnter * set laststatus=1]], false)
