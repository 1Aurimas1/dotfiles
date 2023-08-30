require("plugins")
require("set")

-- pcall catches errors if the plugin doesn't load
local ok, gruvbox = pcall(require, "gruvbox")
if not ok then return end
gruvbox.setup {}
vim.cmd[[colorscheme gruvbox]]
vim.cmd[[hi! Normal ctermbg=None guibg=None]]
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_invert_selection = '0'

vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

---- Add additional capabilities supported by nvim-cmp
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
--
--local lspconfig = require('lspconfig')
--
---- Enable some language servers with the additional completion capabilities offered by nvim-cmp
----local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
--local servers = { 'clangd', 'pyright', 'tsserver' }
--for _, lsp in ipairs(servers) do
--  lspconfig[lsp].setup {
--    -- on_attach = my_custom_on_attach,
--    capabilities = capabilities,
--  }
--end
--
---- luasnip setup
--local luasnip = require 'luasnip'
--
---- nvim-cmp setup
--local cmp = require 'cmp'
--cmp.setup {
--  snippet = {
--    expand = function(args)
--      luasnip.lsp_expand(args.body)
--    end,
--  },
--  mapping = cmp.mapping.preset.insert({
--    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--    ['<C-f>'] = cmp.mapping.scroll_docs(4),
--    ['<C-Space>'] = cmp.mapping.complete(),
--    ['<CR>'] = cmp.mapping.confirm {
--      behavior = cmp.ConfirmBehavior.Replace,
--      select = true,
--    },
--    ['<Tab>'] = cmp.mapping(function(fallback)
--      if cmp.visible() then
--        cmp.select_next_item()
--      elseif luasnip.expand_or_jumpable() then
--        luasnip.expand_or_jump()
--      else
--        fallback()
--      end
--    end, { 'i', 's' }),
--    ['<S-Tab>'] = cmp.mapping(function(fallback)
--      if cmp.visible() then
--        cmp.select_prev_item()
--      elseif luasnip.jumpable(-1) then
--        luasnip.jump(-1)
--      else
--        fallback()
--      end
--    end, { 'i', 's' }),
--  }),
--  sources = {
--    { name = 'nvim_lsp' },
--    { name = 'luasnip' },
--  },
--}
--
--local M = {}
--
--local function bind(op, outer_opts)
--    outer_opts = outer_opts or {noremap = true}
--    return function(lhs, rhs, opts)
--        opts = vim.tbl_extend("force",
--            outer_opts,
--            opts or {}
--        )
--        vim.keymap.set(op, lhs, rhs, opts)
--    end
--end
--
--M.nmap = bind("n", {noremap = false})
--M.nnoremap = bind("n")
--M.vnoremap = bind("v")
--M.xnoremap = bind("x")
--M.inoremap = bind("i")
--
--local nnoremap = M.nnoremap
--local inoremap = M.inoremap
--
--local function config(_config)
--	return vim.tbl_deep_extend("force", {
--		capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
--		on_attach = function()
--			nnoremap("gd", function() vim.lsp.buf.definition() end)
--			nnoremap("K", function() vim.lsp.buf.hover() end)
--			nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
--			nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
--			nnoremap("[d", function() vim.diagnostic.goto_next() end)
--			nnoremap("]d", function() vim.diagnostic.goto_prev() end)
--			nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
--			nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
--			nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
--			inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
--		end,
--	}, _config or {})
--end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--require("lspconfig").tsserver.setup(config())
--require'lspconfig'.tsserver.setup{}
vim.g.neoformat_try_node_exe = 1
----require'lspconfig'.tsserver.setup(config({
----    root_dir = lspconfig.util.root_pattern("package.json"),
----}))
----require('lspconfig').denols.setup(config({
----    root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
----}))
----require'lspconfig'.volar.setup(config())
----require'lspconfig'.tailwindcss.setup(config())
----
----require("lspconfig").gopls.setup(config())
----require("lspconfig").clangd.setup(config())
------require("lspconfig").ccls.setup(config())
------require("lspconfig").sumneko_lua.setup(config())
----require'lspconfig'.lua_ls.setup(config(
----{
----  settings = {
----    Lua = {
----      runtime = {
----        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
----        version = 'LuaJIT',
----      },
----      diagnostics = {
----        -- Get the language server to recognize the `vim` global
----        globals = {'vim'},
----      },
----      workspace = {
----        -- Make the server aware of Neovim runtime files
----        library = vim.api.nvim_get_runtime_file("", true),
----      },
----      -- Do not send telemetry data containing a randomized but unique identifier
----      telemetry = {
----        enable = false,
----      },
----    },
----  },
----}))
------require("lspconfig").bashls.setup(config())
----require("lspconfig").pyright.setup(config())
----require("lspconfig").solargraph.setup(config())
----require'lspconfig'.rust_analyzer.setup(config({
----  settings = {
----    ['rust-analyzer'] = {
----      diagnostics = {
----        enable = true;
----      }
----    }
----  }
----}))
--require'lspconfig'.rust_analyzer.setup{
--  settings = {
--    ['rust-analyzer'] = {
--      diagnostics = {
--        enable = false;
--      }
--    }
--  }
--}
--require'lspconfig'.rust_analyzer.setup(config())
local function format_local()
    local currentBuffer = vim.api.nvim_get_current_buf()
    local currentFilePath = vim.api.nvim_buf_get_name(currentBuffer)
    local currentDir = vim.fn.getcwd()

    --local relativeProjectPath = string.gsub(filePath, "^" .. currentDir, "") // doesnt work with '-' in path
    --local relativeProjectPath = string.gsub(filePath, "home", "")
    --for c in currentFilePath:gmatch"." do
    --    currentDir:sub(1, 1)

    --end

    --local dirEndIdx = string.find(relativeProjectPath, "/", 2)
    local dirEndIdx = string.find(currentFilePath, "/", currentDir:len() + 2)
    --local rootDir = string.sub(relativeProjectPath, 0, dirEndIdx)
    local rootDir = string.sub(currentFilePath, 0, dirEndIdx)
    --print(filePath, currentDir, relativeProjectPath)
    --print(rootDir)

    --vim.fn.chdir("." .. rootDir)
    vim.fn.chdir(rootDir)
    vim.api.nvim_command("Neoformat")
    vim.fn.chdir(currentDir)
end

vim.keymap.set('n', '<leader>fl', format_local, { })

require'nvim-treesitter.configs'.setup {
  --ensure_installed = "all",
  --sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

vim.g.clipboard = {
    name = 'WslClipboard',
    copy =  { ["+"] = { "clip.exe" }, ["*"] = { "clip.exe" } },
    paste = { ["+"] = { "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))" }, 
    ["*"] = { "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))" } },
    cache_enabled = false
}

--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")
--
--vim.keymap.set("n", "<leader>a", mark.add_file)
--vim.keymap.set("n", "<leader><C-e>", ui.toggle_quick_menu)
--
----vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
----vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
----vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
----vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
----nmap { "<M-h><M-l>", require("harpoon.ui").toggle_quick_menu }
--for i = 1, 4 do
--    vim.keymap.set("n", string.format("<leader>%s", i), function() ui.nav_file(i) end)
--end

-- prompt for a refactor to apply when the remap is triggered
vim.api.nvim_set_keymap(
    "v",
    "<leader>rr",
    ":lua require('refactoring').select_refactor()<CR>",
    { noremap = true, silent = true, expr = false }
)

vim.diagnostic.config({
    virtual_text = true
})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pc", "<cmd>e ~/.config/nvim<CR>")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

--vim.keymap.set("n", "<C-Up>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-Down>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader><Up>", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader><Down>", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<PageUp>", "<cmd>bprevious<CR>zz")
vim.keymap.set("n", "<PageDown>", "<cmd>bnext<CR>zz")
