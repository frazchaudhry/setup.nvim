-- Set the line numbers to show
vim.opt.number = true

-- Set relative numbers to show. Will show current line number where the cursor is present.
-- The rest of the line will be shown relatively to current position.
-- Helps with jumping to other lines quickly
vim.opt.relativenumber = true

-- When splitting a window, it will put the new window to the right.
vim.opt.splitright = true

-- When splitting a window, it will be put at the bottom of the current window.
vim.opt.splitbelow = true

-- Use space instead of tabs. Makes auto index and tabbing better
vim.opt.expandtab = true

-- Set the size of the tabs to 4 spaces (Default = 8....Way too large)
vim.opt.tabstop = 4

-- Number of spaces to use for each (auto)indent.
vim.opt.shiftwidth = 4

-- Set Neovim to use the system's clipboard. It is disabled by default.
-- The register that interacts with the system clipboard is called "plus". The value for
-- this option is a type of string. For this setting we will use "unnamedplus" for neovim
-- to use the system clipboard.
vim.opt.clipboard:append("unnamedplus")

-- Allows selection to move past the space where there is an actual character
vim.opt.virtualedit = "block"

-- When searching for a word, and preceding the search command with "%s" will show all
-- possible results and changes to the matching word in a split window to the bottom.
-- Example: :%s /vim
vim.opt.inccommand = "split"

-- Ignore casing throughout the editor. Mostly useful for completions when running commands.
-- For example, NetrwClean is a built-in Neovim command. Typing :net and pressing tab will
-- not cause the auto complete to show anything. With this setting set to 'true', Typing
-- :net and pressing tab will show all possible plugins starting with Net or net.
vim.opt.ignorecase = true

-- Makes the colors "better". Turn it off to see the difference. More importantly it
-- enables 24 bit colors which will allow us to use color schemes.
vim.opt.termguicolors = true
