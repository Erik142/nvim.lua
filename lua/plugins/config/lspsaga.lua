local present, lspsaga = pcall(require, "lspsaga")
if not present then return end

lspsaga.setup({
    lightbulb = {
        enable = true,
        enable_in_insert = false,
        sign = true,
        sign_priority = 40,
        virtual_text = false
    }
})
