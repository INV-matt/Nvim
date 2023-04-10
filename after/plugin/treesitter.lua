require'nvim-treesitter.configs'.setup {

  highlight = {
	enable = true,
  	additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
  autotag = { enable = true },

  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "javascript",
    "typescript",
    "html",
    "css",
    "bash",
    "latex",
    "cpp",
    "gitignore",
    "json",
    "markdown",
    "markdown_inline",
    "sxhkdrc",
  },
  sync_install = false,
  auto_install = true,
}
