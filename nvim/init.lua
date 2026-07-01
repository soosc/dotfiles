-- Share configuration with Vim: reuse ~/.vim (plugins, autoload) and ~/.vimrc.
-- See :help nvim-from-vim. Sourced first so mapleader/plugins are set up
-- before the Lua config below runs.
vim.cmd([[
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc
]])

