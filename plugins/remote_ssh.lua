return {
  "inhesrom/remote-ssh.nvim",
  branch = "master",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("remote-ssh").setup({})
  end,
}
