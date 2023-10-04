local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
vim.wo.colorcolumn = "150"
opt.cursorline = true

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
--vim.cmd[[colorscheme tokyonight-storm]]
--vim.opt.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'
vim.cmd[[colorscheme onenord]]
--opt.signcolumn = "yes
local iron = require("iron.core")

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"zsh"}
      }
    },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = require('iron.view').split.vertical("35%"),
  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<space>sc",
    visual_send = "<space>sc",
    send_file = "<space>sf",
    send_line = "<space>sl",
    send_until_cursor = "<space>su",
    send_mark = "<space>sm",
    mark_motion = "<space>mc",
    mark_visual = "<space>mc",
    remove_mark = "<space>md",
    cr = "<space>s<cr>",
    interrupt = "<space>s<space>",
    exit = "<space>sq",
    clear = "<space>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}



