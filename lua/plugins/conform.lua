-- plugins\conform.lua
return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
        markdown = { "prettier", "markdownlint" },
      })
    end,
  },
}