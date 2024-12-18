-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- select all,
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<cr>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- close split window
keymap.set("n", "sq", "<Esc>:q<cr>")

-- Navigate split windows
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Maps save to ctrl + s and insert
keymap.set("n", "<C-s>", "<Esc>:update<cr>gi")
keymap.set("n", "<C-x>", "<esc>:wq!<cr>")
keymap.set("n", "<C-n>", "<esc>:qa!<cr>")

-- Map end of line to Cltr+e plus edit mode
-- keymap.set("n", "<C-e>", "<esc>$i<right>")
keymap.set("n", "<C-e>", "<esc>$<right>")
