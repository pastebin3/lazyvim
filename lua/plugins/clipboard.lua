return {
  "atiladefreitas/lazyclip",
  config = function()
    require("lazyclip").setup({
      -- optional custom config
    })
  end,
  keys = {
    -- simpler leader key, e.g., <leader>y
    { "<leader>y", "<cmd>LazyClip<CR>", desc = "Open clipboard manager" },
  },
  -- Optional: Load plugin when yanking text
  event = { "TextYankPost" },
}
