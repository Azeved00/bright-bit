local util = {}
local theme = require("bright-bit.theme")
local v = vim

-- Only define the theme if it's the active colorscheme
function util.onColorScheme()
	if v.g.colors_name ~= "bright-bit" then
		v.cmd([[autocmd! bright-bit]])
		v.cmd([[augroup! bright-bit]])
	end
end

-- Load the theme
function util.load()
	-- Set the theme environment
	v.cmd("hi clear")
	if v.fn.exists("syntax_on") then
		v.cmd("syntax reset")
	end

	v.o.background = "dark"
	v.o.termguicolors = true
	v.g.colors_name = "bright-bit"

	-- load the most importaint parts of the theme
	local editor = theme.loadEditor()
	local syntax = theme.loadSyntax()
	--local treesitter = theme.loadTreeSitter()
	--local filetypes = theme.loadFiletypes()

	-- load editor highlights
	util.loadColorSet(editor)

	-- load syntax highlights
	util.loadColorSet(syntax)

	-- load treesitter highlights
	--util.loadColorSet(treesitter)

	-- load filetype-specific highlights
	--util.loadColorSet(filetypes)

	--theme.loadTerminal()

	-- imort tables for plugins and lsp
	local plugins = theme.loadPlugins()
	--local lsp = theme.loadLSP()

	-- load plugin highlights
	util.loadColorSet(plugins)

	-- load lsp highlights
	--util.loadColorSet(lsp)

	-- if contrast is enabled, apply it to sidebars and floating windows
	--if v.g.theme_contrast == true then
		--util.contrast()
	--end
end

return util
