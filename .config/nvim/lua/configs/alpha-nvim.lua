local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
vim.opt.fillchars:append { eob = " " }
vim.cmd [[ au User AlphaReady if winnr('$') == 1 | set laststatus=1 ]]

dashboard.section.footer.val = {
  "Write Programs That Do One Thing And Do It Well.",
}

dashboard.section.buttons.val = {
	dashboard.button("n", "  Create New file",       ":set laststatus=3 | :ene <BAR> startinsert <CR>"),
	dashboard.button("e", "  Open File Manager",     ":set laststatus=3 | :Explore <CR>"),
  dashboard.button("v", "  Neovim Settings ",      ":set laststatus=3 | e ~/.config/nvim/init.lua <CR>"),
 	-- dashboard.button("b", "  Edit Bspwm Tree",       ":set laststatus=3 | e ~/.config/bspwm <CR>"),
	dashboard.button("s", "  Shell Configuration",   ":set laststatus=3 | e ~/.config/zsh/.zshrc <CR>"),
	dashboard.button("u", "  Update Nvim Plugins",   ":PackerSync <CR>"),
	dashboard.button("q", "  Quit Neovim",           ":qa<CR>"),
}

dashboard.section.header.val = {
  [[██╗  ██╗██╗     ██╗███╗   ██╗██╗  ██╗ ██████╗ ███╗   ██╗███████╗██╗  ██╗██╗   ██╗]],
  [[██║ ██╔╝██║     ██║████╗  ██║██║ ██╔╝██╔═══██╗████╗  ██║██╔════╝██║ ██╔╝╚██╗ ██╔╝]],
  [[█████╔╝ ██║     ██║██╔██╗ ██║█████╔╝ ██║   ██║██╔██╗ ██║███████╗█████╔╝  ╚████╔╝ ]],
  [[██╔═██╗ ██║     ██║██║╚██╗██║██╔═██╗ ██║   ██║██║╚██╗██║╚════██║██╔═██╗   ╚██╔╝  ]],
  [[██║  ██╗███████╗██║██║ ╚████║██║  ██╗╚██████╔╝██║ ╚████║███████║██║  ██╗   ██║   ]],
  [[╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝   ╚═╝   ]],
}

dashboard.config.layout = {
  { type = "padding", val = 5 },
  dashboard.section.header,
  { type = "padding", val = 2 },
  dashboard.section.buttons,
  { type = "padding", val = 1 },
  dashboard.section.footer,
}

-- https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=Red+Phoenix&text=Your+text+here+

alpha.setup(dashboard.opts)
