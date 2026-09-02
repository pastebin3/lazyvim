return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("render-markdown").setup({
        -- Keep everything enabled, just clear backgrounds
        heading = {
          enabled = true, -- Keep this true to preserve icons
          -- Set backgrounds to empty strings to disable background rendering
          backgrounds = {},
          -- Keep foregrounds for the icons/text
          foregrounds = {
            "RenderMarkdownH1",
            "RenderMarkdownH2",
            "RenderMarkdownH3",
            "RenderMarkdownH4",
            "RenderMarkdownH5",
            "RenderMarkdownH6",
          },
        },
        code = {
          enabled = true,
          style = "full",
          -- Disable background for code blocks
          disable_background = { "*" }, -- '*' disables for all languages
        },
      })

      -- Manually clear any background highlight groups that persist
      local bg_groups = {
        "RenderMarkdownH1Bg",
        "RenderMarkdownH2Bg",
        "RenderMarkdownH3Bg",
        "RenderMarkdownH4Bg",
        "RenderMarkdownH5Bg",
        "RenderMarkdownH6Bg",
        "RenderMarkdownCodeBg",
        "RenderMarkdownCode",
      }
      for _, group in ipairs(bg_groups) do
        pcall(function()
          vim.api.nvim_set_hl(0, group, { bg = "none" })
        end)
      end
    end,
  },
}
