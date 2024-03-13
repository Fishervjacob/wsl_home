vim.keymap.set("n", "<C-b>", vim.cmd.Ex)

-- Allow moving lines up and down when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allow J (Append next line to end of current line) to keep cursor in same place
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in middle when jumping up and down half pages or searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste but keep the yanked value in the register
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Yank into the system register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete into void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- No one likes Q
vim.keymap.set("n", "Q", "<nop>")

-- Get tmux working to do this
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", function()
	-- vim.lsp.buf.format()
-- end)

-- Quick fix list??
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--

-- Replace all of the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executible
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})
