require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'javascript',
    'typescript',
    'json',
    'python',
    'java',
    'c',
    'rust',
    'lua',
    'vim',
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
