local colors = require("bright-bit.colors")
 -- local v = vim

local theme = {};
theme.loadSyntax = function ()
    return {
        -- Syntax colors
        Whitespace = {fg = colors.non_text},
        NonText = {fg = colors.non_text},
        Comment = {fg = colors.comment, style="italic"},
        Constant = {fg = colors.cyan},
        String = {fg = colors.green},
        Character = {fg = colors.green},
        Number = {fg = colors.orange},
        Boolean = {fg = colors.orange},
        Float = {fg = colors.orange},
        Identifier = {fg = colors.white},
        Function = {fg = colors.blue},
        Statement = {fg = colors.white},
        Conditional = {fg = colors.magenta},
        Repeat = {fg = colors.magenta},
        Label = {fg = colors.magenta},
        Operator = {fg = colors.magenta},
        Keyword = {fg = colors.magenta},
        Exception = {fg = colors.red},
        PreProc = {fg = colors.magenta},
        Include = {fg = colors.magenta},
        Define = {fg = colors.magenta},
        Macro = {fg = colors.magenta},
        PreCondit = {fg = colors.magenta},
        Type = {fg = colors.yellow},
        StorageClass = {fg = colors.magenta},
        Structure = {fg = colors.magenta},
        Typedef = {fg = colors.magenta},
        Special = {fg = colors.blue},
        SpecialChar = {fg = colors.white},
        Tag = {fg = colors.white},
        Delimiter = {fg = colors.white},
        SpecialComment = {fg = colors.comment},
        Debug = {fg = colors.magenta},
        Underlined = {fg = colors.white},
        Ignore = {fg = colors.white},
        Error = {fg = colors.red, bg = colors.black},
        Todo = {bg = colors.yellow, fg=colors.black},
       }
end

theme.loadEditor = function ()
    local editor = {
        -- User interface colors
        Normal = {fg = colors.white, bg = colors.black},
        FloatBorder = {fg = colors.white, bg = colors.black},

        Cursor = {fg = colors.black, bg = colors.blue},
        CursorColumn = {bg = colors.cursor_line},
        CursorLine = {bg = colors.cursor_line},

        LineNr = {fg = colors.non_text, bg = colors.black},
        CursorLineNr = {fg = colors.white},

        DiffAdd = {fg = colors.green},
        DiffChange = {fg = colors.yellow},
        DiffDelete = {fg = colors.red},
        DiffText = {fg = colors.blue},

        IncSearch = {fg = colors.black, bg = colors.yellow},
        Search = {fg = colors.black, bg = colors.yellow},

        ErrorMsg = {fg = colors.white},
        ModeMsg = {fg = colors.white},
        MoreMsg = {fg = colors.white},
        WarningMsg = {fg = colors.red},
        Question = {fg = colors.magenta},

        Pmenu = {fg = colors.black, bg = colors.white},
        PmenuSel = {fg = colors.white, bg = colors.blue},
        PmenuSbar = {bg = colors.selection},
        PmenuThumb = {bg = colors.white},

        SpellBad = {fg = colors.red},
        SpellCap = {fg = colors.yellow},
        SpellLocal = {fg = colors.yellow},
        SpellRare = {fg = colors.yellow},

        StatusLine = {fg = colors.blue, bg = colors.cursor_line},
        StatusLineNC = {fg = colors.comment, bg = colors.cursor_line},
        TabLine = {fg = colors.comment, bg = colors.cursor_line},
        TabLineFill = {fg = colors.comment, bg = colors.cursor_line},
        TabLineSel = {fg = colors.white, bg = colors.black},

        Visual = {bg = colors.selection},
        VisualNOS = {bg = colors.selection},

        ColorColumn = {bg = colors.cursor_line},
        Conceal = {fg = colors.white},
        Directory = {fg = colors.blue},
        VertSplit = {fg = colors.cursor_line, bg = colors.cursor_line},
        Folded = {fg = colors.white},
        FoldColumn = {fg = colors.white},
        SignColumn = {fg = colors.white},

        MatchParen = {fg = colors.blue, style = "underline"},
        SpecialKey = {fg = colors.white},
        Title = {fg = colors.green},
        WildMenu = {fg = colors.white},

        -- Plugins
        GitGutterAdd = {fg = colors.green, bg = colors.black},
        GitGutterDelete = {fg = colors.red, bg = colors.black},
        GitGutterChange = {fg = colors.yellow, bg = colors.black},
        GitGutterChangeDelete = {fg = colors.red, bg = colors.black},
        diffAdded = {fg = colors.green},
        diffRemoved = {fg = colors.red},

        -- Git
        gitcommitComment = {fg = colors.comment},
        gitcommitUnmerged = {fg = colors.red},
        gitcommitOnBranch = {fg = colors.white},
        gitcommitBranch = {fg = colors.magenta},
        gitcommitDiscardedType = {fg = colors.red},
        gitcommitSelectedType = {fg = colors.green},
        gitcommitHeader = {fg = colors.white},
        gitcommitUntrackedFile = {fg = colors.cyan},
        gitcommitDiscardedFile = {fg = colors.red},
        gitcommitSelectedFile = {fg = colors.green},
        gitcommitUnmergedFile = {fg = colors.yellow},
        gitcommitFile = {fg = colors.white}

    }

    return editor
end

theme.loadTerminal = function()
end

theme.loadTreeSitter = function ()
    return {
        ["@comment.todo"]  = { link = "Todo"},
        ["@comment.documentation"] = { fg = colors.non_text, style="italic" },
        ["@comment.note"] = { fg=colors.selection  }
    }
end

theme.loadFiletypes = function ()
end
theme.loadLSP = function()
end

theme.loadPlugins = function()
    local plugins = {
	-- rainbow-delimiters
	RainbowDelimiterBlue = { fg = colors.blue},
        RainbowDelimiterCyan = { fg = colors.cyan},
	RainbowDelimiterGreen = { fg = colors.green},
	RainbowDelimiterYellow = { fg = colors.yellow},
	RainbowDelimiterOrange = { fg = colors.orange},
	RainbowDelimiterRed = { fg = colors.red},
	RainbowDelimiterViolet= { fg = colors.magenta}
    }

    return plugins;
end

return theme
