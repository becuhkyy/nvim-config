return {
  registries = {
    "github:mason-org/mason-registry",
    "github:Crashdummyy/mason-registry",
  },

  ensure_installed = {
    -- formatters
    "prettier",
    "csharpier",
    "stylua",

    -- linters
    "hadolint",
    "jsonlint",
    "tflint",
    "vale",

    -- lsp
    "css-lsp",
    "html-lsp",
    "lua-language-server",
    "typescript-language-server",
    "roslyn",
  },
}
