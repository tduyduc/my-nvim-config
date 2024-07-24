-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- vim.cmd([[colorscheme tokyonight-moon]])
-- vim.cmd([[colorscheme everforest]])

if vim.g.neovide then
  vim.o.guifont = "Noto Sans Mono,Droid Sans Fallback,Noto Color Emoji:h13.3:w0.6:#e-subpixelantialias:#h-slight"
  vim.opt.linespace = 1
  -- vim.g.neovide_refresh_rate = 30
  vim.g.neovide_hide_mouse_when_typing = false
  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})

  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end)
end
