return {
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    keys = {
      {
        -- cmd and cr to execute command
        "<leader>uk",
        "<cmd>MarkdownPreviewToggle<CR>",
        desc = "Toggle markdown preview",
      },
      {

        "<leader>uK",
        "<cmd>MarkdownPreviewStop<CR>",
        desc = "Toggle markdown stop",
      },
    },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
