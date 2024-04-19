require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Open compiler
map("n", "<leader>co", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = "Compiler Open" })

-- Redo last selected option
map(
  "n",
  "<leader>cr",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true, desc = "Compiler Redo" }
)

-- Toggle compiler results
map(
  "n",
  "<leader>ct",
  "<cmd>CompilerToggleResults<cr>",
  { noremap = true, silent = true, desc = "Compiler Toggle Results" }
)

-- Custom
map({ "n" }, "<ESC>", "<cmd> q <cr>") -- Global quit
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>") -- Save file
map({ "n", "i", "v" }, "<C-l>", "<cmd>Lazy<cr>") -- Open lazy dash

