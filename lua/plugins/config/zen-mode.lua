local present, zen_mode = pcall(require, "zen-mode")
local present2, twilight = pcall(require, "twilight")
if not present then return end
if not present2 then return end

twilight.setup { dimming = { alpha = 0.25 } }

zen_mode.setup {
	plugins = {
		twilight = { enabled = true },
		gitsigns = { enabled = false },
		tmux = { enabled = false },
		options = { enabled = true, ruler = false }
	}
}
