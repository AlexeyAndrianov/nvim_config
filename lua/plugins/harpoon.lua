return {
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      harpoon.setup({})
      require("telescope").load_extension("harpoon")

      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add a file to harpoon" })
      vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = "Show harpoon" })
      vim.keymap.set("n", "<leader>hj", ui.nav_prev, { desc = "Goto the previous harpooned file" })
      vim.keymap.set("n", "<leader>hk", ui.nav_next, { desc = "Goto the next harpooned file" })
      vim.keymap.set("n", "<leader>1", function()
        ui.nav_file(1)
      end, { desc = "Goto harpoon file 1" })
      vim.keymap.set("n", "<leader>2", function()
        ui.nav_file(2)
      end, { desc = "Goto harpoon file 2" })
      vim.keymap.set("n", "<leader>2", function()
        ui.nav_file(2)
      end, { desc = "Goto harpoon file 3" })
      vim.keymap.set("n", "<leader>3", function()
        ui.nav_file(3)
      end, { desc = "Goto harpoon file 4" })
      vim.keymap.set("n", "<leader>4", function()
        ui.nav_file(4)
      end, { desc = "Goto harpoon file 2" })
      vim.keymap.set("n", "<leader>5", function()
        ui.nav_file(5)
      end, { desc = "Goto harpoon file 5" })
    end,
  },
}
