return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },

  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
::::::::::.                      `::             `::. :::::::-.                        
 `;;;```.;;;                      ;;              ;;;  ;;,   `';,                      
  `))nnn))'  ,ccc,   ,cc[[[cc. =[[[[[[.,cc[[[cc.  [[[  `[[     [[,cc[[[cc. '[[, [[, [['
   $$$""    $$$cc$$$ $$$____      $$   $$$___--'  $$'   $$,    $$$$$___--'   Y$ $$$ $P 
   888o     888   888 .     88,   88,  88b    ,o, \8o   888_,o8P'88b    ,o,   "88"888  
   YMMMb     "YUM" MP "YUMMMMP"   MMM   "YUMMMMP"  MM;  MMMMP"`   "YUMMMMP"    "M "M"  
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
