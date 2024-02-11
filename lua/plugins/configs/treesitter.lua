local options = {
  ensure_installed = {
    "lua",
    "javascript",
    "typescript",
    "vim",
    "json"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = true
  },

  autopairs = {
    enable = true
  },

  indent = { enable = true },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s',
        __parent = {
          -- if a node has this as the parent, use the `//` commentstring
          jsx_expression = '// %s',
        },
      },
      typescript = { __default = '// %s', __multiline = '/* %s */' }
    }
  }
}

return options
