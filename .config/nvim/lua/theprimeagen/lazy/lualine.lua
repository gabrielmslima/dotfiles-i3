return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "meuter/lualine-so-fancy.nvim",
        "letieu/harpoon-lualine"
    },

    config = function()
        require('lualine').setup({
            options = {
                icons_enabled = true,
                theme = "gruvbox-material",
                disabled_filetypes = {},
                section_separators = {},
                component_separators = {},
                always_divide_middle = true,
                globalstatus = false,
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch" },
                lualine_c = { "filename", "harpoon2" },
                lualine_x = { "diagnostics", "diff", "filetype" },
                lualine_y = { "location" },
                lualine_z = { "progress" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        })
    end
}
