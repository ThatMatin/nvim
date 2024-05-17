local lsplines = require("lsp_lines")

lsplines.setup()

vim.diagnostic.config{
    virtual_text = false
}

local function toggle()
    vim.diagnostic.config({
        virtual_text = not vim.diagnostic.config().virtual_text
    })
    lsplines.toggle()
end

vim.keymap.set("", "<leader>llt", toggle)
