local set = vim.opt
set.swapfile = false
set.updatetime = 0
set.encoding="utf-8"
set.fileencoding="utf-8"
set.smartindent = true
set.iskeyword:append("-")
set.clipboard = "unnamedplus"
set.smarttab = true
set.expandtab = true
set.autoindent = true
-- set.autochdir = true
set.incsearch = true
set.shell = "/bin/zsh"
-- set.shortmess:append "sI"
vim.cmd [[set nobackup]]
vim.cmd [[set nowritebackup]]
vim.cmd [[set formatoptions-=cro]]
vim.cmd [[set complete+=kspell]]
vim.cmd [[set completeopt=menuone,longest]]
vim.cmd [[set nocompatible]]
-- set.mouse = 'a'

---------------
-- Neovim UI --
---------------
set.pumheight = 15
set.ruler = true
set.splitbelow = true
set.splitright = true
set.conceallevel = 0
set.tabstop = 2
set.number = true
set.background = "dark"
set.virtualedit = "onemore"
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
set.laststatus=3
set.title = true
set.relativenumber = false
set.cursorline = true
set.shiftwidth = 2
set.showtabline = 1
set.cmdheight = 1
set.numberwidth = 5
vim.cmd [[set noshowmode]]
vim.cmd [[syntax enable]]
vim.cmd [[set t_Co=256]]
-- vim.cmd "set whichwrap+=<,>,[,],h,l"         -- Breaks Space-Time Continuum
-- vim.cmd [[set nowrap]]                       -- Display long lines as just one line

-----------------
-- Memory, CPU --
-----------------
set.hidden = true
set.timeoutlen = 500
set.lazyredraw = true
set.synmaxcol = 240
set.updatetime = 700

vim.cmd([[ 
  set path=.,src,node_modules
  set suffixesadd=.js,.jsx,.ts,.tsx,.hbs,.json

  function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
    else
        return nodeModules . a:fname
    endif
  endfunction
]])
vim.cmd([[ let extension = expand('%:e') ]])

