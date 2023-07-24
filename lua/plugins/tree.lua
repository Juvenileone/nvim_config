return {
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        sort_by = "case_sensitive",
        view = {
            width = 20,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    },
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "" }
    }
}
