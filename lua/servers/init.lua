local on_attach = require("utils.lsp").on_attach
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language Server Protocol (LSP)
require("servers.lua_ls")(capabilities, on_attach)
require("servers.pyright")(capabilities, on_attach)
require("servers.gopls")(capabilities, on_attach)
require("servers.jsonls")(capabilities, on_attach)
require("servers.ts_ls")(capabilities, on_attach)
require("servers.bashls")(capabilities, on_attach)
require("servers.clangd")(capabilities, on_attach)
require("servers.dockerls")(capabilities, on_attach)
require("servers.emmet_ls")(capabilities, on_attach)
require("servers.yamlls")(capabilities, on_attach)
require("servers.tailwindcss")(capabilities, on_attach)
require("servers.solidity_ls_nomicfoundation")(capabilities, on_attach)

-- Linters & Formatters
require("servers.efm-langserver")(capabilities, on_attach)
