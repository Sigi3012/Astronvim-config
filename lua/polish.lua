-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Open compiler
vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap(
  "n",
  "<S-F6>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)

-- Toggle compiler results
vim.api.nvim_set_keymap("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

-- Set terminal to powershell
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

-- Crates.nvim keymaps
local crates = require "crates"
local opts = { silent = true }

vim.keymap.set("n", "<leader>lcv", crates.show_versions_popup, opts)
vim.keymap.set("n", "<leader>lcf", crates.show_features_popup, opts)

vim.keymap.set("n", "<leader>lcu", crates.update_crate, opts)
vim.keymap.set("n", "<leader>lca", crates.update_all_crates, opts)

vim.keymap.set("n", "<leader>lch", crates.open_homepage, opts)
vim.keymap.set("n", "<leader>lcd", crates.open_documentation, opts)
vim.keymap.set("n", "<leader>lcc", crates.open_crates_io, opts)
