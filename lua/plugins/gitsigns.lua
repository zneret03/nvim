-- Show modified code (vs. git HEAD) inline in the buffer.
--   signcolumn -> gutter markers (LazyVim default)
--   numhl      -> line number tinted on changed lines
--   linehl     -> whole changed line gets a subtle background
--   word_diff  -> the exact changed words/tokens are highlighted
return {
  {
    "lewis6991/gitsigns.nvim",
    -- NOTE: no `on_attach` here on purpose — defining it would replace
    -- LazyVim's, losing ]h / [h / <leader>gh* hunk mappings.
    opts = {
      signcolumn = true,
      numhl = true,
      linehl = true,
      word_diff = true,
      attach_to_untracked = true,
    },
  },

  {
    "gitsigns.nvim",
    opts = function()
      local gs = require("gitsigns")
      local cfg = require("gitsigns.config")

      local function toggle(name, key, field, setter)
        Snacks.toggle({
          name = name,
          get = function()
            return cfg.config[field] and true or false
          end,
          set = function(state)
            setter(state)
          end,
        }):map(key)
      end

      toggle("Git Line Highlight", "<leader>uil", "linehl", gs.toggle_linehl)
      toggle("Git Number Highlight", "<leader>uin", "numhl", gs.toggle_numhl)
      toggle("Git Word Diff", "<leader>uiw", "word_diff", gs.toggle_word_diff)
      toggle("Git Deleted Lines", "<leader>uid", "show_deleted", gs.toggle_deleted)

      -- Subtle line backgrounds (tuned for dark themes) so full-line
      -- highlighting stays readable, with brighter inline word-diff on top.
      local function set_hl()
        local hl = vim.api.nvim_set_hl
        hl(0, "GitSignsAddLn", { bg = "#1e3a2a" })
        hl(0, "GitSignsChangeLn", { bg = "#2b2f3f" })
        hl(0, "GitSignsDeleteLn", { bg = "#3a1f26" })
        hl(0, "GitSignsAddInline", { bg = "#2f6b46", bold = true })
        hl(0, "GitSignsChangeInline", { bg = "#3d4a7a", bold = true })
        hl(0, "GitSignsDeleteInline", { bg = "#6b2f3a", bold = true })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("gitsigns_diff_hl", { clear = true }),
        callback = set_hl,
      })
      set_hl()
    end,
  },

  -- which-key label for the new toggle group
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>ui", group = "inline git diff" },
      },
    },
  },
}
