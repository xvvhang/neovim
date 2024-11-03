return {
  'folke/trouble.nvim',
  opts = {
    focus = true,
    icons = {
      indent = {
        fold_open = ' ',
        fole_closed = ' '
      },
      folder_closed   = ' ',
      folder_open     = ' ',
      kinds = {
        Array         = ' ',
        Boolean       = ' ',
        Class         = ' ',
        Constant      = ' ',
        Constructor   = ' ',
        Enum          = ' ',
        EnumMember    = ' ',
        Event         = ' ',
        Field         = ' ',
        File          = ' ',
        Function      = ' ',
        Interface     = ' ',
        Key           = ' ',
        Method        = ' ',
        Module        = ' ',
        Namespace     = ' ',
        Null          = ' ',
        Number        = ' ',
        Object        = ' ',
        Operator      = ' ',
        Package       = ' ',
        Property      = ' ',
        String        = ' ',
        Struct        = ' ',
        TypeParameter = ' ',
        Variable      = ' ',
      }
    }
  },
  cmd = {
    'Trouble'
  }
}
