function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                dim_inactive_windows = false,
                extend_background_behind_borders = true,

                styles = {
                    italic = true,
                    bold = true,
                    transparency = true
                },

                highlights_group = { GitSignsAdd = { fg = "#38a169" },
                    GitSignsChange = { fg = "#3b82f6" },
                    GitSignsDelete = { fg = "#e53e3e" },
                    GitSignsAddNr = { fg = "#38a169" },
                    GitSignsChangeNr = { fg = "#3b82f6" },
                    GitSignsDeleteNr = { fg = "#e53e3e" },
                    GitSignsAddLn = { fg = "#38a169" },
                    GitSignsChangeLn = { fg = "#3b82f6" },
                    GitSignsDeleteLn = { fg = "#e53e3e" },
                }
            })

            vim.cmd("colorscheme rose-pine")

            ColorMyPencils()
        end,

    },

    {
        'f4z3r/gruvbox-material.nvim',
        name = 'gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            require('gruvbox-material').setup({
                italics = true,     -- enable italics in general
                contrast = "hard",  -- set contrast, can be any of "hard", "medium", "soft"
                comments = {
                    italics = true, -- enable italic comments
                },
                background = {
                    transparent = false, -- set the background to transparent
                },
                float = {
                    force_background = false, -- force background on floats even when background.transparent is set
                    background_color = nil,  -- set color for float backgrounds. If nil, uses the default color set
                },
                signs = {
                    highlight = true, -- whether to highlight signs
                },
            })
            vim.cmd("colorscheme gruvbox-material")

            ColorMyPencils()
        end
    },
}
