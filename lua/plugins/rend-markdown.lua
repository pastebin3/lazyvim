return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-mini/mini.nvim", -- supports icons/layout
      -- or "nvim-web-devicons" if you prefer
    },
    config = function()
      require("render-markdown").setup({
        -- optional custom config here
      })
    end,
  },
}
