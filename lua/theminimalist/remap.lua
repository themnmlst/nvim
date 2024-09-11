vim.g.mapleader = " "
local keymap = vim.keymap

-- File Explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open File Explorer" })

-- Move selected text up or down in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Center the cursor after joining lines
keymap.set("n", "J", "mzJ`z", { desc = "Join lines and center cursor" })

-- Scroll half page down/up and center cursor
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })

-- Center cursor when searching
keymap.set("n", "n", "nzzzv", { desc = "Search next and center cursor" })
keymap.set("n", "N", "Nzzzv", { desc = "Search previous and center cursor" })

-- Paste over the current selection without overwriting the register
keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over selection without overwriting register" })

-- Copy to system clipboard
keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank whole line to system clipboard" })

-- Delete to void register
keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete to void register" })

-- Escape insert mode with Ctrl-c
keymap.set("i", "<C-c>", "<Esc>", { desc = "Escape insert mode" })

-- Disable Q key
keymap.set("n", "Q", "<nop>", { desc = "Disable Q key" })

-- Open tmux sessionizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux sessionizer" })

-- Format buffer with LSP
keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer with LSP" })

-- Navigate quickfix and location lists
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next item in quickfix list" })
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous item in quickfix list" })
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next item in location list" })
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous item in location list" })

-- Search and replace the word under the cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace word under cursor" })

-- Make current file executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make file executable", silent = true })

-- Insert error handling boilerplate
-- keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>", { desc = "Insert error handling boilerplate" })

-- Source the current file
keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Source the current file" })


