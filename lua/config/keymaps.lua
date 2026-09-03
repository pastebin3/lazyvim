```lua
-- keymaps are automatically loaded on the VeryLazy event
-- default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- add any additional keymaps here

local keymap = vim.keymap

-- ============================================================================
-- General
-- ============================================================================

-- Markdown render toggle
keymap.set("n", "<leader>m", "<cmd>RenderMarkdown toggle<cr>", {
  desc = "Toggle Markdown render",
})

-- Select all
keymap.set("n", "<C-a>", "ggVG", {
  desc = "Select all",
})

-- WhichKey
keymap.set("n", "<leader>?", "<cmd>WhichKey<cr>", {
  desc = "Open WhichKey",
})

-- Terminal
keymap.set("n", "<leader>tt", "<cmd>terminal<cr>", {
  desc = "Open terminal",
})

-- Visual block
keymap.set("n", "<leader>v", "<C-v>", {
  desc = "Visual block",
})


-- ============================================================================
-- Editing
-- ============================================================================

-- Change word regardless of cursor position
keymap.set("n", "cw", "ciw")
keymap.set("n", "cW", "ciW")

-- Delete word regardless of cursor position
keymap.set("n", "dw", "diw")
keymap.set("n", "dW", "diW")

-- Replace current word with yanked text
keymap.set("n", "<C-j>", "cw<C-r>0<esc>", {
  desc = "Replace word with yank",
})

-- Go to end of line and start editing
keymap.set("n", "<C-e>", "$a", {
  desc = "Edit at end of line",
})


-- ============================================================================
-- Navigation
-- ============================================================================

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", {
  noremap = true,
  silent = true,
  desc = "Jump forward",
})


-- ============================================================================
-- Buffers
-- ============================================================================

-- New buffer
keymap.set("n", "ta", "<cmd>enew<cr>", {
  desc = "New buffer",
})

-- Next / previous buffer
keymap.set("n", "<Tab>", "<cmd>bnext<cr>", {
  desc = "Next buffer",
})

keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>", {
  desc = "Previous buffer",
})

-- Close current buffer
keymap.set("n", "tq", "<cmd>bd<cr>", {
  desc = "Close buffer",
})

-- Delete all buffers except current
keymap.set("n", "<leader>bq", '<cmd>%bdelete|edit #|normal `"<cr>', {
  desc = "Delete other buffers",
})

-- Delete all buffers except current, keeping current buffer
keymap.set("n", "<leader>bo", "<cmd>%bd|e#|bd#<cr>", {
  desc = "Delete other buffers",
})


-- ============================================================================
-- Splits
-- ============================================================================

-- Create horizontal / vertical split
keymap.set("n", "ss", "<cmd>split<cr>", {
  desc = "Horizontal split",
})

keymap.set("n", "sv", "<cmd>vsplit<cr>", {
  desc = "Vertical split",
})

-- Close current split
keymap.set("n", "sq", "<cmd>close<cr>", {
  desc = "Close split",
})

-- Navigate between splits
keymap.set("n", "sh", "<C-w>h", {
  desc = "Go to left window",
})

keymap.set("n", "sk", "<C-w>k", {
  desc = "Go to upper window",
})

keymap.set("n", "sj", "<C-w>j", {
  desc = "Go to lower window",
})

keymap.set("n", "sl", "<C-w>l", {
  desc = "Go to right window",
})


-- ============================================================================
-- Window resizing
-- ============================================================================

keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", {
  desc = "Increase window height",
})

keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", {
  desc = "Decrease window height",
})

keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", {
  desc = "Decrease window width",
})

keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", {
  desc = "Increase window width",
})


-- ============================================================================
-- Move lines
-- ============================================================================

-- Normal mode
keymap.set("n", "<A-Up>", "<cmd>move .-2<cr>==", {
  desc = "Move line up",
})

keymap.set("n", "<A-Down>", "<cmd>move .+1<cr>==", {
  desc = "Move line down",
})

-- Visual mode
keymap.set("v", "<A-Up>", "<cmd>move '<-2<cr>gv=gv", {
  desc = "Move selection up",
})

keymap.set("v", "<A-Down>", "<cmd>move '>+1<cr>gv=gv", {
  desc = "Move selection down",
})


-- ============================================================================
-- Save / Quit
-- ============================================================================

-- Save
keymap.set({ "i", "n", "v", "s" }, "<C-s>", "<cmd>w<cr>", {
  desc = "Save file",
})

-- Quit Neovim
keymap.set("n", "<C-q>", "<cmd>qa<cr>", {
  desc = "Quit Neovim",
})


-- ============================================================================
-- Notes
-- ============================================================================

-- Keep the mappings below intentional and unique.
-- Avoid defining the same key twice because the later mapping overwrites
-- the earlier one.
```

