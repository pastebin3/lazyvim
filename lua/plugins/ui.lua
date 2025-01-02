-- removing hover notification bar, adding notification border with K
return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  --lualine custom
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },
  -- -- bufferline name (tabs - show only name)
  -- {
  --   "akinsho/bufferline.nvim",
  --   opts = {
  --     options = {
  --       mode = "tabs",
  --       show_buffer_close_icons = false,
  --       show_close_icons = false,
  --     },
  --   },
  -- },
}
