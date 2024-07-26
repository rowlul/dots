local global = {
    mapleader = " ",
    maplocalleader = " ",
    have_nerd_font = true,
    startup_message = false,
    random_header = false,
}

local options = {
    number = true,
    -- relativenumber = true

    mouse = "a",

    showmode = false,

    clipboard = "unnamedplus",

    breakindent = true,

    undofile = true,

    ignorecase = true,
    smartcase = true,

    signcolumn = "yes",

    updatetime = 250,

    timeoutlen = 300,

    splitright = true,
    splitbelow = true,

    list = true,
    listchars = { tab = "» ", trail = "·", nbsp = "␣" },

    inccommand = "split",

    cursorline = true,

    scrolloff = 10,

    -- Set highlight on search, but clear on pressing <Esc> in normal mode
    hlsearch = true,

    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
}

for name, value in pairs(options) do
    vim.opt[name] = value
end

for name, value in pairs(global) do
    vim.g[name] = value
end
