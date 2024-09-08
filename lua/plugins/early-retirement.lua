return {
  "chrisgrieser/nvim-early-retirement",
  event = { "BufRead", "BufNewFile" },
  config = function()
    require("early-retirement").setup({
      retirementAgeMins = 5, -- close buffers after 5 minutes of inactivity
      ignoreUnsavedChangesBufs = true, -- don't close buffers with unsaved changes
      ignoreSpecialBuftypes = true, -- ignore special buffers like NvimTree
      ignoreVisibleBufs = true, -- don't close visible buffers
    })
  end,
}
