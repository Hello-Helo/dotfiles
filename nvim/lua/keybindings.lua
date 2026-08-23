-- Save and exit
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>x', ':wq<CR>')

-- Split navegations
vim.keymap.set("n", "<leader>gh", "<C-w>h")
vim.keymap.set("n", "<leader>gk", "<C-w>k")
vim.keymap.set("n", "<leader>gj", "<C-w>j")
vim.keymap.set("n", "<leader>gl", "<C-w>l")

-- Toggle spelling
vim.api.nvim_create_user_command( "LtexLang", "lua Set_ltex_lang(<q-args>)", { nargs = 1, desc = "Set ltex-ls language" })
vim.keymap.set( "n", "<leader>sp", ":LtexLang 'pt-BR'<CR>")
vim.keymap.set( "n", "<leader>se", ":LtexLang 'pt-BR'<CR>")

-- Create file under cursor
vim.api.nvim_set_keymap('n', 'gf', ':e <cfile><CR>', {noremap = true, silent = true})


-- File browser
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Find and replave with visual mode
vim.keymap.set('v', '<C-r>', '"hy:%s/<C-r>h//g<left><left><left>')

-- LSP commands
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>') -- Just some nice information
    bufmap('n', 'mgd', '<cmd>lua vim.lsp.buf.definition()<cr>') -- Go to Definition
    bufmap('n', 'mgD', '<cmd>lua vim.lsp.buf.declaration()<cr>') -- Go to Declaration
    bufmap('n', 'mgi', '<cmd>lua vim.lsp.buf.implementation()<cr>') -- Go to Implementation
    bufmap('n', 'mtd', '<cmd>lua vim.lsp.buf.type_definition()<cr>') -- Type definition
    bufmap('n', 'mgr', '<cmd>lua vim.lsp.buf.references()<cr>') -- Go to References
    bufmap('n', 'mfs', '<cmd>lua vim.lsp.buf.signature_help()<cr>') -- Function Signiture
    bufmap('n', 'mrv', '<cmd>lua vim.lsp.buf.rename()<cr>') -- Rename Variable
    bufmap('n', 'mca', '<cmd>lua vim.lsp.buf.code_action()<cr>') -- Code action
    bufmap('n', 'mdd', '<cmd>lua vim.diagnostic.open_float()<cr>') -- Diagonose Diagnose
    bufmap('n', 'mdp', '<cmd>lua vim.diagnostic.goto_prev()<cr>') -- Diagnostic Previous
    bufmap('n', 'mdn', '<cmd>lua vim.diagnostic.goto_next()<cr>') -- Diagnostic Next
  end
})
