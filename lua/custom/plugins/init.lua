-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvchad/ui',
    config = function()
      require 'nvchad'
    end,
  },

  {
    'nvchad/base46',
    lazy = true,
    build = function()
      require('base46').load_all_highlights()
    end,
  },

  'nvchad/volt', -- optional, needed for theme switcher
  -- or just use Telescope theme
  {
    'nvzone/minty',
    cmd = { 'Shades', 'Huefy' },
  },
  {
    'nvzone/floaterm',
    dependencies = 'nvzone/volt',
    opts = {},
    cmd = 'FloatermToggle',
  },
  { 'nvzone/timerly', opts = { position = 'top-right' }, cmd = 'TimerlyToggle' },
  {
    'nvzone/typr',
    dependencies = 'nvzone/volt',
    opts = {},
    cmd = { 'Typr', 'TyprStats' },
  },
}
