local colors = require("bright-bit.colors")

return {
  normal = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.green},
    c = {bg = colors.cursor_line, fg = colors.white},

    w = {bg = colors.cursor_line, fg = colors.white},
    x = {bg = colors.cursor_line, fg = colors.white},
    y = {bg = colors.cursor_line, fg = colors.white},
    z = {bg = colors.green, fg = colors.black}
  },
  insert = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.yellow},
    c = {bg = colors.cursor_line, fg = colors.white}
  },
  visual = {
    a = {bg = colors.blue,    fg = colors.black, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.blue},
    c = {bg = colors.cursor_line, fg = colors.white}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.red},
    c = {bg = colors.cursor_line, fg = colors.white}
  },
  command = {
    a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.purple},
    c = {bg = colors.cursor_line, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.white, fg = colors.black, gui = 'bold'},
    b = {bg = colors.selection, fg = colors.white},
    c = {bg = colors.cursor_line, fg = colors.white}
  }
}
