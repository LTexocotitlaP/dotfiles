-- Chapter 1 configuration
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4

-- Chapter 2 configuration fix for ident
vim.opt.shiftwidth = 4
-- Chapter 2 configuration fix for ident

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

-- Chapter 2 configuration 

vim.opt.virtualedit = "block" -- ctrl + v allows to get edit mode with block option

vim.opt.inccommand = "split" -- %s/

vim.opt.ignorecase = true -- evicts upper case convention for plugins

vim.opt.termguicolors = true

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    "rebelot/kanagawa.nvim"
})

vim.cmd.colorscheme("kanagawa-dragon")
