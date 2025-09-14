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
     _________                               
    / ======= \                              
   / __________\                             
  | ___________ |                            
  | | -       | |                            
  | |         | |                            
  | |_________| |________________________    
  \=____________/          PD Lab.       )   
  / """"""""""" \                       /   
 / ::::::::::::: \                  =D-'    
(_________________)                          
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
    config = function(_, opts) 
      require("dashboard").setup(opts)
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#a7c7e7" })
    end,
  },
}
