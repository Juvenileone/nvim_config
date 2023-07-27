return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        theme = 'nord',
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'filesize'},
            lualine_y = {'encoding'},
            lualine_z = {'location', 'progress'}
        }
    }
}
