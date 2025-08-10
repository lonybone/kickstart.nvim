return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Use if you want file icons
  config = function()
    require('oil').setup {
      -- Your settings go here. For example:
      -- To make it look more like a traditional file explorer
      view_options = {
        show_hidden = true, -- Show hidden files
      },
      -- To open oil in a floating window (optional)
      -- float = {
      --   padding = 2,
      --   max_width = 80,
      --   max_height = 20,
      -- },
    }

    -- This sets the keymap to open Oil.
    -- The '-' key in Normal mode will open the parent directory.
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory with Oil' })
  end,
}
