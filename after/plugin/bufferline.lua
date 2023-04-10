local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup({
  options = {
    mode = "tabs",
    numbers = "ordinal",
    indicator = {
      --icon = "",
      style = "underline"
    },
    tab_size = 16,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    separator_style = "thin" --"slant" | "slope" | "thick" | "thin" | { 'any', 'any' },

  }
})
