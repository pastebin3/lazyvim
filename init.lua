-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- persistant default colorscheme
-- vim.cmd("colorscheme ")
-- vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme tokyonight-storm")

-- Example: Setting custom heading colors
vim.api.nvim_set_hl(0, "RenderMarkdownH1", { fg = "#FFB86C", bold = true }) -- Orange
vim.api.nvim_set_hl(0, "RenderMarkdownH2", { fg = "#50FA7B", bold = true }) -- Green
vim.api.nvim_set_hl(0, "RenderMarkdownH3", { fg = "#8BE9FD", bold = true }) -- Cyan
-- Add more for H4-H6 as you like
