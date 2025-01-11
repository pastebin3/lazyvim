return {
  -- popup script - to take notes
  vim.keymap.set("n", "<leader>N", function()
    require("lazy.util").float_term({ "takenotes.sh" })
  end, { desc = "Popup notes" }),
}
