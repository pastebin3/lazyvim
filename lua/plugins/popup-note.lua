return {
  -- popup script - to take notes
  vim.keymap.set("n", "<leader>n", function()
    require("lazy.util").float_term({ "takenotes.sh" })
  end, { desc = "Popup notes" }),
}
