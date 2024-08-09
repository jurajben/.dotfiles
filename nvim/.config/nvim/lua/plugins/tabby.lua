return {
    "nanozuki/tabby.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require("tabby").setup({
            preset = "tab_only",
            option = {
                theme = {
                    fill = "TabLineFill", -- tabline background
                    head = "TabLine", -- head element highlight
                    current_tab = "TabLineSel", -- current tab label highlight
                    tab = "TabLine", -- other tab label highlight
                    win = "TabLine", -- window highlight
                    tail = "TabLine", -- tail element highlight
                },
                nerdfont = true, -- whether use nerdfont
                lualine_theme = "iceberg_dark",
                tab_name = {
                    --name_fallback = function(tabid)
                      --  return tabid
                    --end,
                },
                buf_name = {
                    mode = "tail",
                },
            },
        })
    end,
}
