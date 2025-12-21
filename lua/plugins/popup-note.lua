return {
  -- popup script --
  vim.keymap.set("n", "<leader>N", function()
    require("lazy.util").float_term({ "notepop.sh" })
  end, { desc = "Popup notes" }),
}
