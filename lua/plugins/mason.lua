-- Customize Mason plugins

-- Prompt for `go test -run` argument.
local function get_arguments()
  local args = { "-test.run" }
  local co = coroutine.running()
  if co then
    return coroutine.create(function()
      vim.ui.input({ prompt = "Test -run: " }, function(input) table.insert(args, input) end)
      coroutine.resume(co, args)
    end)
  else
    vim.ui.input({ prompt = "Test -run: " }, function(input) table.insert(args, input) end)
    return args
  end
end

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "gopls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "delve",
        -- add more arguments for adding more debuggers
      },
      handlers = {
        delve = function(source_name)
          local dap = require "dap"
          dap.adapters.delve = {
            type = "server",
            port = "${port}",
            executable = {
              command = vim.fn.exepath "dlv",
              args = { "dap", "-l", "127.0.0.1:${port}" },
            },
          }
          dap.configurations.go = {
            {
              type = "delve",
              name = "Debug go run",
              request = "launch",
              program = "./${relativeFileDirname}",
            },
            {
              type = "delve",
              name = "Debug go test",
              request = "launch",
              mode = "test",
              program = "./${relativeFileDirname}",
            },
            {
              type = "delve",
              name = "Debug go test -run",
              request = "launch",
              mode = "test",
              program = "./${relativeFileDirname}",
              args = get_arguments,
            },
          }
        end,
      },
    },
  },
}
