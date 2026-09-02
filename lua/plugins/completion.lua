return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      menu = { border = "rounded" },
      documentation = { window = { border = "rounded" } },
    },
    signature = { window = { border = "rounded" } },
    keymap = {
      ["<C-t>"] = {
        function(cmp)
          cmp.show({ providers = { "snippets" } })
        end,
      },
    },
  },
}
