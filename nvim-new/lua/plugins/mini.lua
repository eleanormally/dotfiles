return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.files').setup({
      mappings = {
        close = 'q',
        go_in = 'l',
        go_in_plus = '<cr>',
        go_out = 'h',
        go_out_plus = '<BS>',
        reset = '<esc>',
        reveal_cwd = '@',
        show_help = 'g?',
        synchronize = '=',
        trim_left = '<',
        trim_right = '>',
      }
    })
    -- require('mini.surround').setup()
    -- require('mini.cursorword').setup()
    -- require('mini.ai').setup()
    -- require('mini.bracketed').setup({
    --   buffer     = { suffix = 'b', options = {} },
    --   comment    = { suffix = 'c', options = {} },
    --   conflict   = { suffix = 'x', options = {} },
    --   diagnostic = { suffix = 'd', options = {} },
    --   file       = { suffix = 'f', options = {} },
    --   indent     = { suffix = '', options = {} },
    --   jump       = { suffix = '', options = {} },
    --   location   = { suffix = '', options = {} },
    --   oldfile    = { suffix = '', options = {} },
    --   quickfix   = { suffix = 'q', options = {} },
    --   treesitter = { suffix = '', options = {} },
    --   undo       = { suffix = '', options = {} },
    --   window     = { suffix = 'w', options = {} },
    --   yank       = { suffix = '', options = {} },
    -- })
  end
}
