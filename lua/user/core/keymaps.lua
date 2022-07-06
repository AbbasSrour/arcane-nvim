local M = {}

---------------------------------------------------------------------------------------------------------------------------------
-- Commands
---------------------------------------------------------------------------------------------------------------------------------
M.commands = {}

---------------------------------------------------------------------------------------------------------------------------------
-- AutoCommands
---------------------------------------------------------------------------------------------------------------------------------
M.autocmds = {
	{
		"ColorScheme",
		require("user.utils.colorscheme").current_theme_colors(),
		opts = {
			pattern = "*",
			group = nil,
		},
		description = "Change the custom colors of the components",
	},
}

---------------------------------------------------------------------------------------------------------------------------------
--Keymaps
---------------------------------------------------------------------------------------------------------------------------------
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

M.keymaps = {
	------------------------------------------------ Remaps --------------------------------------------
	-- Better window navigation
	{ "<C-h>", "<C-w>h", description = "Move Cursor To The Left Window", mode = { "n" }, opts },
	{ "<C-j>", "<C-w>j", description = "Move Cursor To The Window Above", mode = { "n" }, opts },
	{ "<C-k>", "<C-w>k", description = "Move Cursor To The Window Below", mode = { "n" }, opts },
	{ "<C-l>", "<C-w>l", description = "Move Cursor To The Right Window", mode = { "n" }, opts },

	-- Resize with arrows
	{ "<C-Up>", ":resize -2<CR>", description = "Resize Vertical Up", mode = { "n" }, opts },
	{ "<C-Down>", ":resize +2<CR>", description = "Resize Vertical Down", mode = { "n" }, opts },
	{ "<C-Left>", ":vertical resize -2<CR>", description = "Resize Hortizontal Left", mode = { "n" }, opts },
	{ "<C-Right>", ":vertical resize +2<CR>", description = "Move Horizontal Right", mode = { "n" }, opts },

	-- Navigate buffers
	{ "<S-l>", ":bnext<CR>", description = "Next Buffer", mode = { "n" }, opts },
	{ "<S-h>", ":bprevious<CR>", description = "Previous Buffer", mode = { "n" }, opts },

	-- Move text up and down
	{ "<A-j>", "<Esc>:m .+1<CR>==gi", description = "Move Text Down Normal Mode", mode = { "n" }, opts },
	{ "<A-k>", "<Esc>:m .-2<CR>==gi", description = "Move Text Up Normal Mode", mode = { "n" }, opts },

	{ "<A-j>", ":m .+1<CR>==", description = "Move Text Down Visual Mode", mode = { "v" }, opts },
	{ "<A-k>", ":m .-2<CR>==", description = "Move Text Up Visual Mode", mode = { "v" }, opts },

	{ "J", ":move '>+1<CR>gv-gv", description = "Move Text Down Block Mode", mode = { "x" }, opts },
	{ "K", ":move '<-2<CR>gv-gv", description = "Move Text Up Block Mode", mode = { "x" }, opts },
	{ "<A-j>", ":move '>+1<CR>gv-gv", description = "Move Text Down Block Mode", mode = { "x" }, opts },
	{ "<A-k>", ":move '<-2<CR>gv-gv", description = "Move Text Up Block Mode", mode = { "x" }, opts },

	-- Paste
	{ "p", '"_dP', description = "Paste Text", mode = { "v" }, opts },

	-- Press jk fast to escape
	{ "jk", "<ESC>", description = "Press jk Fast To Escape", mode = { "i" }, opts },

	-- Stay in indent mode
	{ "<", "<gv", description = "Indent Right", mode = { "v" }, opts },
	{ "jk", "<ESC>", description = "Indent Left", mode = { "v" }, opts },

	-- Better terminal navigation
	{ "<C-h>", "<C-\\><C-N><C-w>h", description = "Better Terminal Navigate Left", mode = { "t" }, term_opts },
	{ "<C-j>", "<C-\\><C-N><C-w>j", description = "Better Terminal Navigate Down", mode = { "t" }, term_opts },
	{ "<C-k>", "<C-\\><C-N><C-w>k", description = "Better Terminal Navigate Up", mode = { "t" }, term_opts },
	{ "<C-l>", "<C-\\><C-N><C-w>l", description = "Better Terminal Navigate Right", mode = { "t" }, term_opts },

	-- Telescope
	{ "<C-b>", "<cmd>lua require('legendary').find()<CR>", description = "Search Keymaps", mode = { "n" }, opts },
	{ "<C-p>", "<cmd>Telescope neoclip default<cr>", description = "Clipboard", mode = { "n" }, opts },
	{ "<C-c>", "<cmd>Telescope commands<cr>", description = "Clipboard", mode = { "n" }, opts },

	-- Hide Search Results
	{ "<Esc>", "<cmd>noh<CR>", description = "Hide Search Results", mode = { "n" }, opts },

	------------------------------------------------ Debugger --------------------------------------------
	{ "<F5>", ":lua require'dap'.continue()<CR>", description = "Dap Continue", mode = { "n" }, opts },
	{ "<F3>", ":lua require'dap'.step_over()<CR>", description = "Dap Step Over", mode = { "n" }, opts },
	{ "<F2>", ":lua require'dap'.step_into()<CR>", description = "Dap Step Into", mode = { "n" }, opts },
	{ "<F12>", ":lua require'dap'.step_out()<CR>", description = "Dap Step Out", mode = { "n" }, opts },
	-- { "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", description = "", mode = { "n" }, opts },
	-- {
	-- 	"<leader>B",
	-- 	":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	-- 	description = "",
	-- 	mode = { "n" },
	-- 	opts,
	-- },
	-- {
	-- 	"<leader>lp",
	-- 	":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
	-- 	description = "",
	-- 	mode = { "n" },
	-- 	opts,
	-- },
	-- { "<leader>dr", ":lua require'dap'.repl.open()<CR>", description = "", mode = { "n" }, opts },
	-- { "<leader>dt", ":lua require'dap-go'.debug_test()<CR>", description = "", mode = { "n" }, opts },

	-- utils.map('n', '<leader>dct', '<cmd>lua require"dap".continue()<CR>')
	-- utils.map('n', '<leader>dsv', '<cmd>lua require"dap".step_over()<CR>')
	-- utils.map('n', '<leader>dsi', '<cmd>lua require"dap".step_into()<CR>')
	-- utils.map('n', '<leader>dso', '<cmd>lua require"dap".step_out()<CR>')
	-- utils.map('n', '<leader>dtb', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
	-- utils.map('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>')
	-- utils.map('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>')
	-- utils.map('v', '<leader>dhv',
	--           '<cmd>lua require"dap.ui.variables".visual_hover()<CR>')
	--
	-- utils.map('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>')
	-- utils.map('n', '<leader>duf',
	--           "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>")
	--
	-- utils.map('n', '<leader>dsbr',
	--           '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
	-- utils.map('n', '<leader>dsbm',
	--           '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
	-- utils.map('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>')
	-- utils.map('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>')
	-- -- telescope-dap
	-- utils.map('n', '<leader>dcc',
	--           '<cmd>lua require"telescope".extensions.dap.commands{}<CR>')
	-- utils.map('n', '<leader>dco',
	--           '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>')
	-- utils.map('n', '<leader>dlb',
	--           '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>')
	-- utils.map('n', '<leader>dv',
	--           '<cmd>lua require"telescope".extensions.dap.variables{}<CR>')
	-- utils.map('n', '<leader>df',
	--           '<cmd>lua require"telescope".extensions.dap.frames{}<CR>')

	------------------------------------------------ Lsp --------------------------------------------
	{
		"fe",
		"<cmd>lua vim.diagnostic.open_float()<CR>",
		description = "Get Diagnostic Message",
		mode = { "n" },
		opts,
	},

	{
		"fn",
		"<cmd>lua vim.diagnostic.goto_prev()<CR>",
		description = "Previous Diagnostic",
		mode = { "n" },
		opts,
	},

	{
		"fm",
		"<cmd>lua vim.diagnostic.goto_next()<CR>",
		description = "Next Diagnostic",
		mode = { "n" },
		opts,
	},

	{
		"fk", --K
		"<cmd>lua vim.lsp.buf.hover()<CR>",
		description = "Get Diagnostic On Hover",
		mode = { "n" },
		opts,
	},

	{
		"fq",
		"<cmd>Trouble document_diagnostics<CR>", -- 	"<cmd>lua vim.diagnostic.setloclist()<CR>",
		description = "Get Quickfix List",
		mode = { "n" },
		opts,
	},

	{
		"fw",
		"<cmd>Trouble workspace_diagnostics<CR>", -- 	"<cmd>lua vim.diagnostic.setqflist()<CR>",
		description = "Get Quickfix List",
		mode = { "n" },
		opts,
	},

	{
		"fg", --gD
		"<cmd>lua vim.lsp.buf.declaration()<CR>",
		description = "Go To Declaration",
		mode = { "n" },
		opts,
	},

	{
		"fi", --gi
		"<cmd>Telescope lsp_implementations<CR>",
		description = "Go To Implementation",
		mode = { "n" },
		opts,
	},

	{
		"fr",
		"<cmd>Telescope lsp_references<CR>",
		description = "Get References",
		mode = { "n" },
		opts,
	},

	{
		"fd", --gd
		"<cmd>Telescope lsp_definitions<CR>",
		description = "Go To Definition",
		mode = { "n" },
		opts,
	},

	{
		"ft",
		"<cmd>Telescope lsp_type_definitions<CR>",
		description = "Get Type Definition",
		mode = { "n" },
		opts,
	},

	{
		"fx",
		"<cmd>lua vim.lsp.buf.rename()<CR>",
		description = "Rename Object",
		mode = { "n" },
		opts,
	},

	{
		"fa",
		"<cmd>lua vim.lsp.buf.code_action()<CR>",
		description = "Get Code Actions",
		mode = { "n" },
		opts,
	},

	{
		"fl",
		"<cmd>lua vim.lsp.codelens.run()<CR>",
		description = "Get CodeLens",
		mode = { "n" },
		opts,
	},

	{
		"fp",
		"<cmd>lua vim.lsp.buf.signature_help()<CR>",
		description = "Get Parameters Signature Help",
		mode = { "n" },
		opts,
	},

	{
		"fs",
		"<cmd>SymbolsOutline<cr>",
		description = "Document Symbols",
		mode = { "n" },
		opts,
	},

	{
		"fh",
		"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
		description = "Workspace Symbols",
		mode = { "n" },
		opts,
	},

	{
		"F",
		"<cmd>lua vim.lsp.buf.format({async = true})<CR>",
		description = "Format Document",
		mode = { "n" },
		opts,
	},

	{
		"wa",
		"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",
		description = "Add Workspace Folder",
		mode = { "n" },
		opts,
	},

	{
		"wl",
		"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
		description = "List Workspace Folders",
		mode = { "n" },
		opts,
	},

	{
		"wr",
		"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",
		description = "Remove Workspace Folder",
		mode = { "n" },
		opts,
	},
}

---------------------------------------------------------------------------------------------------------------------------------
-- WhichKey
---------------------------------------------------------------------------------------------------------------------------------
M.WhichkeyOpts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

M.WhichkeyMappings = {
	["a"] = { "<cmd>Alpha<cr>", "Alpha" },
	["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
	b = {
		name = "buffers",
		b = { "<cmd> Telescope buffers<cr>", "Buffers Preview" },
		c = { "<cmd>Bdelete!<CR>", "Close Buffer" },
		w = { "<cmd>w!<CR>", "Save" },
		q = { "<cmd>q<CR>", "Quit" },
	},
	d = {
		name = "debugging",
		b = { ":lua require'dap'.toggle_breakpoint()<CR>", "Toggle Breakpoint" },
		B = {
			":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
			"Set Breakpoint Condition",
		},
		s = {
			":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
			"Log Point Message",
		},
		r = { ":lua require'dap'.repl.open()<CR>", "Repl" },
		t = { ":lua require'dap-go'.debug_test()<CR>", "Test" },
	},
	f = {
		name = "LSP",
		e = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostic" },
		n = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous Diagnostic" },
		m = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
		k = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover Diagnostics" },
		q = { "<cmd>Trouble document_diagnostics<CR>", "Document Diagnostics" },
		w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
		g = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Go To Declaration" },
		i = { "<cmd>Telescope lsp_implementations<CR>", "Go To implementation" },
		r = { "<cmd>Telescope lsp_references<CR>", "Go To References" },
		d = { "<cmd>Telescope lsp_definitions<CR>", "Go To Definition" },
		t = { "<cmd>Telescope lsp_type_definitions<CR>", "Get Type Definition" },
		x = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename Object" },
		a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Get Code Actions" },
		l = { "<cmd>lua vim.lsp.codelens.run()<CR>", "Get Code Lens" },
		p = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
		s = { "<cmd>SymbolsOutline<cr>", "Document Symbols" },
		h = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
		F = { "<cmd>lua vim.lsp.buf.format({async = true})<CR>", "Format Document" },
		W = {
			name = "Workspace Folders",
			a = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add Workspace Folder" },
			l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "List Workspace Folders" },
			r = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove Workspace Folder" },
		},
	},
	g = {
		name = "Git",
		g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = {
			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
			"Undo Stage Hunk",
		},
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		d = {
			"<cmd>Gitsigns diffthis HEAD<cr>",
			"Diff",
		},
	},
	s = {
		name = "Search",
		b = { "<cmd>Legendary<cr>", "Keymaps" },
		c = { "<cmd>Telescope commands<cr>", "Commands" },
		C = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		e = { "<cmd> Telescope file_browser<cr>", "File Explorer" },
		f = { "<cmd>Telescope find_files<cr>", "Find files" },
		t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		n = {
			"<cmd>lua require('telescope').extensions.notify.notify(require('telescope.themes').get_ivy({layout_config={ preview_width=0.8, }}))<cr>",
			"Notifications",
		},
		p = { "<cmd>Telescope neoclip default<cr>", "Clipboard" },
		o = { "<cmd>TodoTrouble<cr>", "Get Todos" },
		P = { "<cmd>Telescope projects<cr>", "Projects" },
		u = { "<cmd>Telescope ultisnips<cr>", "UtilSnip Search" },
	},
	p = {
		name = "Packer",
		c = { "<cmd>PackerCompile<cr>", "Compile" },
		i = { "<cmd>PackerInstall<cr>", "Install" },
		s = { "<cmd>PackerSync<cr>", "Sync" },
		S = { "<cmd>PackerStatus<cr>", "Status" },
		u = { "<cmd>PackerUpdate<cr>", "Update" },
	},
	t = {
		name = "Terminal",
		n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
		u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
		t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
		p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
	},
}

return M
