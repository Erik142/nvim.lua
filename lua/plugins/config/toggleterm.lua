local present, toggleterm = pcall(require, "toggleterm")
local present2, terminal = pcall(require, "toggleterm.terminal")
if not present then return end
if not present2 then return end

toggleterm.setup({ open_mapping = [[<c-t>]], direction = 'float' })

local Terminal = terminal.Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function Lazygit_toggle() lazygit:toggle() end
