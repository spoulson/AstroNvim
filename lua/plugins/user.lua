---@type LazySpec
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "888b    888                  888     888 d8b",
        "8888b   888                  888     888 Y8P",
        "88888b  888                  888     888",
        "888Y88b 888  .d88b.   .d88b. Y88b   d88P 888 88888b.d88b.",
        '888 Y88b888 d8P  Y8b d88""88b Y88b d88P  888 888 "888 "88b',
        "888  Y88888 88888888 888  888  Y88o88P   888 888  888  888",
        "888   Y8888 Y8b.     Y88..88P   Y888P    888 888  888  888",
        '888    Y888  "Y8888   "Y88P"     Y8P     888 888  888  888',
      }
      return opts
    end,
  },
}

-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
--
-- -- You can also add or configure plugins by creating files in this `plugins/` folder
-- -- Here are some examples:
--
-- ---@type LazySpec
-- return {
--
--   -- == Examples of Adding Plugins ==
--
--   "andweeb/presence.nvim",
--   {
--     "ray-x/lsp_signature.nvim",
--     event = "BufRead",
--     config = function() require("lsp_signature").setup() end,
--   },
--
--   -- == Examples of Overriding Plugins ==
--
--   -- customize alpha options
--   {
--     "goolord/alpha-nvim",
--     opts = function(_, opts)
--       -- customize the dashboard header
--       opts.section.header.val = {
--         -- " █████  ███████ ████████ ██████   ██████",
--         -- "██   ██ ██         ██    ██   ██ ██    ██",
--         -- "███████ ███████    ██    ██████  ██    ██",
--         -- "██   ██      ██    ██    ██   ██ ██    ██",
--         -- "██   ██ ███████    ██    ██   ██  ██████",
--         -- " ",
--         -- "    ███    ██ ██    ██ ██ ███    ███",
--         -- "    ████   ██ ██    ██ ██ ████  ████",
--         -- "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
--         -- "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
--         -- "    ██   ████   ████   ██ ██      ██",
--         "      _   __         _    ___",
--         "   / | / /__  ____| |  / (_)___ ___",
--         "  /  |/ / _ \\/ __ \\ | / / / __ `__ \\",
--         " / /|  /  __/ /_/ / |/ / / / / / / /",
--         "/_/ |_/\\___/\\____/|___/_/_/ /_/ /_/",
--       }
--       return opts
--     end,
--   },
--
--   -- You can disable default plugins as follows:
--   { "max397574/better-escape.nvim", enabled = false },
--
--   -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
--   {
--     "L3MON4D3/LuaSnip",
--     config = function(plugin, opts)
--       require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
--       -- add more custom luasnip configuration such as filetype extend or custom snippets
--       local luasnip = require "luasnip"
--       luasnip.filetype_extend("javascript", { "javascriptreact" })
--     end,
--   },
--
--   {
--     "windwp/nvim-autopairs",
--     config = function(plugin, opts)
--       require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
--       -- add more custom autopairs configuration such as custom rules
--       local npairs = require "nvim-autopairs"
--       local Rule = require "nvim-autopairs.rule"
--       local cond = require "nvim-autopairs.conds"
--       npairs.add_rules(
--         {
--           Rule("$", "$", { "tex", "latex" })
--             -- don't add a pair if the next character is %
--             :with_pair(cond.not_after_regex "%%")
--             -- don't add a pair if  the previous character is xxx
--             :with_pair(
--               cond.not_before_regex("xxx", 3)
--             )
--             -- don't move right when repeat character
--             :with_move(cond.none())
--             -- don't delete if the next character is xx
--             :with_del(cond.not_after_regex "xx")
--             -- disable adding a newline when you press <cr>
--             :with_cr(cond.none()),
--         },
--         -- disable for .vim files, but it work for another filetypes
--         Rule("a", "a", "-vim")
--       )
--     end,
--   },
-- }
