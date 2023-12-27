return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local nvimTree = require("nvim-tree")

        -- recommended by docs to disable default Vim File explorer netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- change color for arrows in file explorer to light blue
        vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
        vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

        -- configure nvim-tree
        nvimTree.setup({
            view = {
                number = true,
                relativenumber = true,
                width = 35
            },
            renderer = {
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "" -- arrow when folder is open
                        }
                    }
                }
            },
            actions = {
                open_file = {
                    window_picker = {
                        enable = false
                    }
                }
            }
        })

        -- set keymaps for nvim-tree
        local keymap = vim.keymap
        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    end
}
