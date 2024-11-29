return{
 {
    -- Git Lens
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = function()
      return {}
    end,
    config = function()
      --vim.g.gitblame_ignored_filetypes = { "toggleterm" }
      vim.g.gitblame_date_format = "%r"
      vim.g.gitblame_message_template = "<author> • <date> • <summary> • <sha>"
      vim.g.gitblame_delay = 750
    end,
  },
}
