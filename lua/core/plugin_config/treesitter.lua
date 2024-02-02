require('nvim-treesitter.install').compilers = { "zig" }
require('nvim-treesitter.configs').setup {
    ensure_installed = { "python", "lua", "javascript", "html", "css", "cpp" },
    sync_install = false,
    auto_install = false,
    ignore_install = {  },
    highlight = {
        enable = true,
        disable = {  },
    },
}