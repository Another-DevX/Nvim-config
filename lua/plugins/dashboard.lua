-- Font https://textkool.com/en/test-ascii-art-generator?text=NEOVIM
-- Also check here https://asciiart.club/

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    local logo = [[


                                                   
            ████ ██████           █████      ██
           ███████████             █████ 
           █████████ ███████████████████ ███   ███████████
          █████████  ███    █████████████ █████ ██████████████
         █████████ ██████████ █████████ █████ █████ ████ █████
       ███████████ ███    ███ █████████ █████ █████ ████ █████
      ██████  █████████████████████ ████ █████ █████ ████ ██████



          ]]
    require("dashboard").setup({
      config = {
        header = vim.split(string.rep("\n", 8) .. logo .. "\n\n", "\n")
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
