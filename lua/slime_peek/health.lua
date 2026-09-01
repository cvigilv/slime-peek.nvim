local M = {}

--- Run slime-peek's healthcheck
-- Report on the presence of the plugin's requirements: a recent enough
-- Neovim version and the `vim-slime` dependency.
function M.check()
    vim.health.start("slime-peek.nvim")

    if vim.fn.has("nvim-0.7.0") == 1 then
        vim.health.ok("Neovim version is >= 0.7.0")
    else
        vim.health.error("Neovim version is too old", "slime-peek.nvim requires at least Neovim v0.7.0")
    end

    if vim.fn.exists(":SlimeSend0") == 2 then
        vim.health.ok("vim-slime is installed (`:SlimeSend0` is available)")
    else
        vim.health.error(
            "vim-slime does not appear to be installed",
            "Install https://github.com/jpalardy/vim-slime; slime-peek requires it to send text to a REPL"
        )
    end
end

return M
