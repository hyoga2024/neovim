return {
    "lervag/vimtex",
    ft = { "tex", "bib" },
    config = function()
        vim.g.tex_flavor = 'latex'
        vim.g.vimtex_compiler_method = 'latexmk'
        vim.g.vimtex_compiler_latexmk = {
            out_dir = 'build',
            continuous = 1,
        }
        vim.g.vimtex_view_method = 'zathura'

        vim.g.vimtex_complete_enabled = 1
        vim.g.vimtex_syntax_enabled = 0
    end
}

