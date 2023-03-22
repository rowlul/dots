return {
  { -- default theme loaded with highest priority and no lazy loading
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').load()
    end
  },
  { -- status line with vscode theme set
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = 'onedark'
    },
    config = function(_, opts)
      require('lualine').setup(opts)
    end
  },
  { -- syntax highlighting
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      highlight = { enable = true, },
      indent = { enable = true, },
      context_commentstring = { enable = true, enable_autocmd = false, },
      ensure_installed = {
        "bash",
        "c",
        "c_sharp",
        "cmake",
        "diff",
        "dockerfile",
        "gitcommit",
        "gitignore",
        "json",
        "jsonc",
        "lua",
        "make",
        "markdown",
        "python",
        "rust",
        "go",
        "yaml",
        "javascript",
        "typescript",
        "css",
        "html",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },
}
