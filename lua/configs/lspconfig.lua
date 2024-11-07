-- load defaults i.e lua_lsp
--
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "jdtls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- local jdtls = require('jdtls')
-- local root_dir = vim.fn.getcwd()
-- local jar_path = root_dir .. 'lib/EV3JLib.jar'
-- jdtls.start_or_attach({
--     cmd = { 'java', '-jar', '/path/to/jdtls.jar' },
--     root_dir = root_dir,
--     settings = {
--         java = {
--             classpath = { jar_path },
--         },
--     },
-- })

-- lspconfig.rust_analyzer.setup ({
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   filetypes = {"rust"},
--   root_dir = lspconfig.util.root_pattern("Cargo.toml"),
--   settings = {
--     ['rust_analyzer'] = {
--       cargo = {
--         allFeatures = true,
--       }
--     }
--   }
-- })
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
