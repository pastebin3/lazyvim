require("window-picker").setup({
  autoselect_one = false,
  include_current = false,
  filter_rules = {
    bo = {
      filetype = { "neo-tree", "neo-tree-popup", "notify" },
      buftype = { "terminal", "quickfix" },
    },
  },
  other_win_hl_color = "#e35e4f",
})
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  },
})

local lazypath = "./lua/plugins/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.runtimepath:prepend(lazypath)

-- install plugins
local plugins = {
  "folke/tokyonight.nvim",
  -- add any other plugins here
}

local neotree_config = {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" },
  cmd = { "Neotree" },
  keys = {
    { "<Leader>e", "<Cmd>Neotree<CR>" }, -- change or remove this line if relevant.
  },
  opts = {
    -- Your config here
    -- ...
  },
}

table.insert(plugins, neotree_config)
require("lazy").setup(plugins, {
  root = "./lua/plugins/",
})

vim.cmd.colorscheme("tokyonight")
-- add anything else here
