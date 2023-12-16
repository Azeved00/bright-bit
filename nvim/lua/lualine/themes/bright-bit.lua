local colors = require("bright-bit.colors")

return {
  normal = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.line, fg = colors.green},
    c = {bg = colors.black, fg = colors.white},

    w = {bg = colors.black, fg = colors.white},
    x = {bg = colors.black, fg = colors.white},
    y = {bg = colors.line, fg = colors.white},
    z = {bg = colors.green, fg = colors.black}
  },
  insert = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.line, fg = colors.yellow},
    c = {bg = colors.black, fg = colors.white}
  },
  visual = {
    a = {bg = colors.blue,    fg = colors.black, gui = 'bold'},
    b = {bg = colors.line, fg = colors.blue},
    c = {bg = colors.black, fg = colors.white}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.line, fg = colors.red},
    c = {bg = colors.black, fg = colors.white}
  },
  command = {
    a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
    b = {bg = colors.line, fg = colors.purple},
    c = {bg = colors.black, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.white, fg = colors.black, gui = 'bold'},
    b = {bg = colors.line, fg = colors.white},
    c = {bg = colors.black, fg = colors.white}
  }
}
