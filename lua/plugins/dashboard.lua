

local M = {}

---@type table<string, snacks.dashboard.Section>
M.examples = {}


M.examples.advanced = {
    { section = "header" , gap = 2},
    {
        pane = 2,
        section = "terminal",
        cmd = "pwd",
        height = 5,
        padding = 1,
    },
    { section = "keys", gap = 1, padding = 1 },
    { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
    { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
    {
        pane = 2,
        icon = " ",
        title = "Git Status",
        section = "terminal",
        enabled = function()
            return Snacks.git.get_root() ~= nil
        end,
        cmd = "git status --short --branch --renames" 
        ,
        height = 5,
        padding = 1,
        ttl = 5 * 60,
        indent = 3,
    },
    { section = "startup" },
}
local get_icon = require("astroui").get_icon

return {
    "folke/snacks.nvim",
    pane_gap = 4,
    opts = {
        dashboard = {
            preset = {
                header = table.concat({
                    "███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗",
                    "████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║",
                    "██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║",
                    "██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║",
                    "██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║",
                    "╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
                }, "\n"),
                keys = {
                    { key = "n", action = "<Leader>n", icon = get_icon("FileNew", 0, true), desc = "New File  " },
                    { key = "f", action = "<Leader>ff", icon = get_icon("Search", 0, true), desc = "Find File  " },
                    { key = "o", action = "<Leader>fo", icon = get_icon("DefaultFile", 0, true), desc = "Recents  " },
                    { key = "w", action = "<Leader>fw", icon = get_icon("WordFile", 0, true), desc = "Find Word  " },
                    { key = "'", action = "<Leader>f'", icon = get_icon("Bookmarks", 0, true), desc = "Bookmarks  " },
                    { key = "s", action = "<Leader>Sl", icon = get_icon("Refresh", 0, true), desc = "Last Session  " },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
                                -- keys = {
                --     { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                --     { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                --     { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                --     { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                --     { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                --     { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                --     { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                --     { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                -- },

            }, 
            sections = M.examples.advanced,
        },
    },
}

