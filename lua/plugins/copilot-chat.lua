return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "zbirenbaum/copilot.lua", -- Required: GitHub Copilot
      "nvim-lua/plenary.nvim", -- Required for async ops
    },
    cmd = { "CopilotChat", "CopilotChatToggle" },
    keys = {
      {
        "<leader>cc",
        function()
          require("CopilotChat").toggle()
        end,
        desc = "Toggle Copilot Chat",
        mode = { "n", "v" },
      },
      {
        "<leader>cp",
        function()
          require("CopilotChat.integrations.telescope").pick()
        end,
        desc = "Copilot Chat (Telescope prompt)",
        mode = { "n", "v" },
      },
    },
    opts = {
      show_help = true,
      prompts = {
        Explain = "Explain how this code works",
        Review = "Review this code for bugs or improvements",
        Tests = "Write unit tests for this code",
        Docs = "Generate documentation for this code",
        Refactor = "Refactor this code to improve clarity or performance",
      },
    },
  },
}
