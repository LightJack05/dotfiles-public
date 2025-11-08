require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  ignore_install = {"ipkg"},
  sync_install = false,
  auto_install = false,
  highlight = { enable = true, additional_vim_regex_highlighting = false },
})
