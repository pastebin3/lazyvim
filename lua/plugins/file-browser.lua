return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>sf",
      --- ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      desc = "Browser Files",
    },
  },
  config = function()
    require("Telescope").load_extention("file_browser")
  end,
}
