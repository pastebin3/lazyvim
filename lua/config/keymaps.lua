-- keymaps are automatically loaded on the verylazy event
-- default keymaps that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/keymaps.lua
-- add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- select all,
keymap.set("n", "<C-a>", "gg<S-v>G")

-- changing in word
keymap.set("n", "cw", "ciw")

-- change word with yanked cltr+ j
keymap.set("n", "<C-j>", "cw<C-r>0<ESC>")

-- jumplist
keymap.set("n", "<c-m>", "<c-i>", opts)

-- new tab
keymap.set("n", "ta", ":tabedit<cr>")
keymap.set("n", "<tab>", ":tabnext<return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<return>", opts)

-- split window
keymap.set("n", "ss", ":split<return>", opts)
keymap.set("n", "sv", ":vsplit<return>", opts)

-- close split window
keymap.set("n", "sq", "<esc>:q<cr>")

-- navigate split windows
keymap.set("n", "sh", "<c-w>h")
keymap.set("n", "sk", "<c-w>k")
keymap.set("n", "sj", "<c-w>j")
keymap.set("n", "sl", "<c-w>l")

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- maps save to ctrl + s and insert
-- keymap.set("n", "<c-s", ":update<cr>gi")
keymap.set({ "i", "x", "n", "s" }, "<c-s>", "<esc>:wq!<cr>")
keymap.set({ "i", "x", "n", "s" }, "<c-q>", "<esc>:qa!<cr>")

-- map end of line to cltr+e plus edit mode
keymap.set("n", "<c-e>", "<esc>$<right>")

-- move text up and down
keymap.set("n", "<c-up>", ":m .-2<cr>", opts)
keymap.set("n", "<c-down>", ":m .+1<cr>", opts)
keymap.set("v", "<c-down>", ":m .+1<cr>", opts)
keymap.set("v", "<c-up>", ":m .-2<cr>", opts)
keymap.set("x", "<C-Down>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<C-Up>", ":move '<-2<CR>gv-gv", opts)

-- Delete all buffers but the current one --
keymap.set("n", "<leader>bq", '<Esc>:%bdelete|edit #|normal`"<cr>')
