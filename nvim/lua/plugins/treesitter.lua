return {
  "nvim-treesitter/nvim-treesitter",
  init = function()
    -- Register missing filetype→parser mappings
    -- .tsx → typescriptreact → tsx
    -- .jsx → javascriptreact  → javascript
    vim.treesitter.language.register("tsx", "typescriptreact")
    vim.treesitter.language.register("javascript", "javascriptreact")
    -- Add nvim-treesitter runtime to RTP early so HTML queries can inherit from html_tags
    local ts_rtp = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter/runtime"
    if vim.fn.isdirectory(ts_rtp) == 1 then
      vim.opt.runtimepath:prepend(ts_rtp)
    end
  end,
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "css",
      "scss",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
}
