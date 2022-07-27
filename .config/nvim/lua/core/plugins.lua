vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'

--  use 'windwp/nvim-autopairs'
--  use 'jparise/vim-graphql'
--  use 'folke/lsp-colors.nvim'

  use 'kyazdani42/nvim-web-devicons'

  use 'styled-components/vim-styled-components'
  use 'editorconfig/editorconfig-vim'

  use 'pangloss/vim-javascript'

  use "goolord/alpha-nvim"
  use "shaunsingh/nord.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "akinsho/nvim-toggleterm.lua"
  use "lewis6991/impatient.nvim"
  use "nvim-lualine/lualine.nvim"

  use 'ryanoasis/vim-devicons'

  use 'AndrewRadev/tagalong.vim'

  use { 
    'akinsho/git-conflict.nvim', 
    config = function() require('git-conflict').setup() end 
  }

  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  
  use {
    'neoclide/coc.nvim',
    branch = 'master',
    run = 'yarn install --frozen-lockfile'
  }

  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    branch = 'release/0.x'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

