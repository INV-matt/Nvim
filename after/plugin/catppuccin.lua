local status,catppuccin = pcall(require, "catppuccin")

if not status then
  return
end

catppuccin.setup({
  flavour = "mocha",
  transparent_background = true,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {"bold"},
        properties = {},
        types = {},
        operators = {},
    },
  integrations = {
    harpoon = true,

  }
})


vim.cmd.colorscheme "catppuccin"
