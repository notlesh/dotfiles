return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('diffview').setup({
      -- Optional: add keymaps for quick access
      keymaps = {
        view = {
          ["<tab>"] = false,  -- Disable default tab mapping if you want
        },
      },
    })
  end,
  -- Optional: lazy-load it
  cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
}
