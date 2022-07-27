require('onedark').setup{
    style = 'darker',
    transparent = true,
    code_style = {
        comments = 'italic',
        functions = 'none',
        variables = 'none',
        string = 'italic'
    },
    colors = {
      yellow = "#FF5050",
--      green = "#04d361",
--      red = "#FF4040",
    },
}


require('onedark').load()

vim.cmd([[
  hi LineNr guibg=NONE
  hi CursorLine guibg=NONE guifg=NONE
  hi CursorLineNR guibg=NONE guifg=NONE
]])
