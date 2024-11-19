return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sf",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browser Files",
    },
  },
  config = function()
    require("Telescope").load_extention("file_browser")
  end,
}
