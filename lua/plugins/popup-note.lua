return {
  -- popup script combined with leader N within vim
  vim.keymap.set("n", "<leader>N", function()
    require("lazy.util").float_term({ "notepop.sh" })
  end, { desc = "Popup notes" }),
}
