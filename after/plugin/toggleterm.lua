local toggleterm = require("toggleterm")

local function check_horizontal()
  -- Get the current window width
  local win_width = vim.api.nvim_win_get_width(0)

  if win_width < 130 then
    return 'horizontal'
  else
    return 'vertical'
  end
end

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set("v", "<leader>s", function()
    toggleterm.send_lines_to_terminal("visual_lines", true, { args = vim.v.count })
    -- Replace with these for the other two options
    -- require("toggleterm").send_lines_to_terminal("visual_lines", trim_spaces, { args = vim.v.count })
    -- require("toggleterm").send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })
end)

vim.keymap.set("n", "<leader>st", function()
    toggleterm.send_lines_to_terminal("single_line", true, { args = vim.v.count })
end)

toggleterm.setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
  highlights = {
    -- highlights which map to a highlight group name and a table of it's values
    -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    Normal = {
      guibg = "#f13a35",
    },
    NormalFloat = {
      link = 'Normal'
    },
    FloatBorder = {
      guifg = "white",
      guibg = "white",
    },
  },
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  shading_factor = -30, -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction =  check_horizontal(),--'vertical', -- | 'horizontal' | 'tab' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
   -- Change the default shell. Can be a string or a function returning a string
  shell = vim.o.shell,
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  float_opts = {
    border = 'curved',
    winblend = 3,
    title_pos = 'center',
  },
  winbar = {
    enabled = false,
    name_formatter = function(term)
      return term.name
    end
  },
}


-- # Running scripts commands
-- Function to save the current buffer and run the script in the terminal
function RunScriptInToggleTerm()
    vim.cmd('write')

    local script_name = vim.fn.expand('%')
    local file_ext = vim.fn.expand('%:e')

    local interpreter_map = {
        sh = 'bash',
        py = 'python',
        js = 'node',
        rb = 'ruby',
        pl = 'perl',
        php = 'php',
        lua = 'lua',
    }

    local lang = interpreter_map[file_ext]
    if not lang then
        lang = 'bash'
    end

    local function find_open_terminal()
        local terms = require("toggleterm.terminal").get_all()
        for _, term in pairs(terms) do
            if term:is_open() then
                return term
            end
        end
        return nil
    end


    local term = find_open_terminal()
    if term == nil then
        term = require('toggleterm.terminal').Terminal:new({
            direction = check_horizontal(),
        })
        term:toggle()
    end

    term:send(lang .. ' ' .. script_name .. '\n')

end

vim.api.nvim_set_keymap('n', '<F9>', ':lua RunScriptInToggleTerm()<CR>', { noremap = true, silent = true })

