-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local tb = require("telescope.builtin")
local map = vim.keymap
local opts = { noremap = true, silent = true }

function vim.getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

map.set("n", "<space>F", ":Telescope current_buffer_fuzzy_find<cr>", opts)
map.set("v", "<space>F", function()
  local text = vim.getVisualSelection()
  tb.current_buffer_fuzzy_find({ default_text = text })
end, opts)
map.set("v", "<space>/", function()
  local text = vim.getVisualSelection()
  tb.live_grep({ default_text = text })
end, opts)
