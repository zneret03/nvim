local status_ok, toggleterm = pcall(require, "toggleterm")

if not status_ok then
  return
end

toggleterm.setup({
  open_mapping = [[<F4>]],
  direction = "float",
  shade_filetypes = {},
  hide_numbers = true,
  insert_mappings = true,
  terminal_mappings = true,
  start_in_insert = true,
  close_on_exit = true,
})
