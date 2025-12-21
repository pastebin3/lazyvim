return {
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    keys = {
      {
        -- cmd and cr to execute command
        "<leader>k",
        "<cmd>MarkdownPreviewToggle<CR>",
        desc = "Toggle markdown preview",
      },
      {

        "<leader>k",
        "<cmd>MarkdownPreviewStop<CR>",
        desc = "Toggle markdown stop",
      },
    },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
