-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.html-css" },

  -- Misc --
  { import = "astrocommunity.code-runner.compiler-nvim" },

  -- Colour --
  { import = "astrocommunity.color.modes-nvim" },

  -- Media --
  { import = "astrocommunity.media.cord-nvim" },

  -- Diagnostics
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- Register
  { import = "astrocommunity.register.nvim-neoclip-lua" },
}
