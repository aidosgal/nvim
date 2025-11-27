return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          layout_config = { width = 0.90, height = 0.85 },
        },
      })

      local map = vim.keymap.set
      map("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
      map("n", "<leader>pb", builtin.buffers, { desc = "List buffers" })
      map("n", "<leader>pg", builtin.live_grep, { desc = "Grep" })
    end,
  },
}

