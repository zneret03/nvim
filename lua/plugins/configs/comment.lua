local status_ok, Comment = pcall(require, "Comment")

if not status_ok then
  return
end

Comment.setup({
  -- padding = true,
  -- sticky = true,
  -- ignore = "^$",
  -- toggler = {
  --   line = "gcc",
  --   block = "gbc",
  -- },
  -- opleader = {
  --   line = "gc",
  --   block = "gb",
  -- },
  -- extra = {
  --   above = "gcO",
  --   below = "gco",
  --   eol = "gcA",
  -- },
  -- mappings = {
  --   basic = true,
  --   extra = true,
  --   extended = false,
  -- },
  -- pre_hook = function ()
  --   require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
  -- end,
  -- post_hook = nil,
  pre_hook = function()
    return vim.bo.commentstring
  end
})


