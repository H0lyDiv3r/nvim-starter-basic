return   {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"},
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      popup_border_style = "rounded",
      git_status = {
        symbols = {
          -- Change type
          added     = "A", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified  = "M", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted   = "X",-- this can only be used in the git_status source
          renamed   = "=>",-- this can only be used in the git_status source
          -- Status type
          untracked = "?",
          ignored   = "[/]",
          unstaged  = "[]",
          staged    = "S",
          conflict  = "Y",
        }
      }
    })
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left toggle<CR>', {})
    vim.keymap.set('n', '-', ':Neotree filesystem focus<CR>', {})
  end
}
