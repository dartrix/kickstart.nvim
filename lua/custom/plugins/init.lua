-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'theprimeagen/harpoon',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>a', mark.add_file)
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

      vim.keymap.set('n', '<C-z>', function()
        ui.nav_file(1)
      end)
      vim.keymap.set('n', '<C-x>', function()
        ui.nav_file(2)
      end)
    end,
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    end,
  },
  { 'diepm/vim-rest-console' },
  { 'wuelnerdotexe/vim-astro' },
}
