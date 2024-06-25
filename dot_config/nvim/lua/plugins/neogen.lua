return {
  "danymat/neogen",
  config = true,
  keys = {
    { "<Leader>d", ":lua require('neogen').generate()<CR>", desc = "Generate doc annotation." },
  },
  opts = {
    languages = {
      python = {
        template = {
          annotation_convention = "google_docstrings"
        }
      },
    }
  }
}
