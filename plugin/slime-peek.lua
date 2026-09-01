if vim.g.loaded_slime_peek then
    return
end
vim.g.loaded_slime_peek = 1

if vim.fn.has("nvim-0.7.0") ~= 1 then
    vim.api.nvim_err_writeln("slime-peek.nvim requires at least Neovim v0.7.0.")
end
