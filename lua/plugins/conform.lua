-- plugins\conform.lua
return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- 1Extend or set formatters_by_ft
      opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
        markdown = { "prettier", "markdownlint" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "jq" },
      })

      -- Define custom formatters and arguments
      opts.formatters = vim.tbl_extend("force", opts.formatters or {}, {
        prettier = {
          prepend_args = { "--tab-width", "4", "--use-tabs", "false" },
        },
        jq = {
          command = "jq",
          args = { "--indent", "4", "." },
          stdin = true,
        },
      })
    end,
  },
}
