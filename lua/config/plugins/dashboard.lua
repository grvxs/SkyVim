local g = vim.g

g.dashboard_disable_at_vimenter = 0
g.dashboard_disable_statusline = 0
g.dashboard_default_executive = "telescope"

local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

g.dashboard_custom_header = {
    " ██████╗ ██████╗ ██╗   ██╗██╗  ██╗███████╗",
    "██╔════╝ ██╔══██╗██║   ██║╚██╗██╔╝██╔════╝",
    "██║  ███╗██████╔╝██║   ██║ ╚███╔╝ ███████╗",
    "██║   ██║██╔══██╗╚██╗ ██╔╝ ██╔██╗ ╚════██║",
    "╚██████╔╝██║  ██║ ╚████╔╝ ██╔╝ ██╗███████║",
    " ╚═════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚══════╝",
    "                                          ",
    "                                          ",
    "                                          ",
}

g.dashboard_custom_section = {
    a = { description = { "  Sessions                             " }, command = "lua require('sessions').sload()" },
    b = {
        description = { "  Restore Session for current directory" },
        command = "lua require('persistence').load_current()",
    },
    c = { description = { "  Find Files                           " }, command = "Telescope find_files" },
}

g.dashboard_custom_footer = {
    "   ",
    plugins_count .. " plugins loaded",
}