return {
    "stevearc/aerial.nvim",
    opts = {

        placement = "edge",
    },
    -- Optional dependencies
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>", { noremap = true, silent = true, desc = "AerialToggle" }),

}
