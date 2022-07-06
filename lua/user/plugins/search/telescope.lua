local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end
local actions = require("telescope.actions")
local kind = require("user.utils.kind")

telescope.setup({
	pickers = {
		colorscheme = {
			layout_strategy = "horizontal",
			layout_config = {
				width = 0.75,
				preview_width = 0.7,
				prompt_position = "bottom",
				preview_cutoff = 120,
			},
			enable_preview = true,
		},
		find_files = {
			layout_strategy = "horizontal",
			layout_config = {
				width = 0.85,
				preview_width = 0.5,
				prompt_position = "bottom",
				preview_cutoff = 120,
			},
			enable_preview = true,
		},
		oldfiles = {
			layout_strategy = "horizontal",
			layout_config = {
				width = 0.85,
				preview_width = 0.5,
				prompt_position = "bottom",
				preview_cutoff = 120,
			},
			enable_preview = true,
		},
		help_tags = {
			theme = "ivy",
		},
		man_pages = {
			theme = "ivy",
		},
		buffers = {
			theme = "dropdown",
		},
		live_grep = {
			theme = "ivy",
		},
	},
	extensions = {
		media_files = {
			filetypes = { "png", "webp", "jpg", "jpeg" },
			find_cmd = "rg", -- find command (defaults to `fd`)
		},
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
		},
		file_browser = {
			theme = "ivy",
			hijack_netrw = true,
			previewer = false,
			layout_config = {
				height = 15,
			},
		},
	},
	defaults = {
		layout_strategy = "horizontal",
		layout_config = {
			width = 0.75,
			preview_cutoff = 120,
			horizontal = { mirror = false },
			vertical = { mirror = false },
		},

		sorting_strategy = "descending",
		prompt_prefix = kind.icons.telescope .. " ",
		selection_caret = kind.icons.prompt .. " ",
		entry_prefix = "  ",
		color_devicons = true,
		use_less = true,
		set_env = { ["COLORTERM"] = "truecolor" },
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		initial_mode = "insert",
		path_display = { "smart" },
		dynamic_preview_title = true,

		selection_strategy = "reset",
		find_command = { "rg", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" },
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		file_ignore_patterns = {
			"node_modules/",
			"vendor/",
			".git/",
		},

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,

		mappings = {
			i = {
				["<C-n>"] = actions.cycle_history_next,
				["<C-p>"] = actions.cycle_history_prev,

				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,

				["<C-c>"] = actions.close,

				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,

				["<CR>"] = actions.select_default,
				["<C-x>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["<C-t>"] = actions.select_tab,

				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,

				["<PageUp>"] = actions.results_scrolling_up,
				["<PageDown>"] = actions.results_scrolling_down,

				["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
				["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<C-l>"] = actions.complete_tag,
				["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
			},

			n = {
				["<esc>"] = actions.close,
				["<CR>"] = actions.select_default,
				["<C-x>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["<C-t>"] = actions.select_tab,

				["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
				["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

				["j"] = actions.move_selection_next,
				["k"] = actions.move_selection_previous,
				["H"] = actions.move_to_top,
				["M"] = actions.move_to_middle,
				["L"] = actions.move_to_bottom,

				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,
				["gg"] = actions.move_to_top,
				["G"] = actions.move_to_bottom,

				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,

				["<PageUp>"] = actions.results_scrolling_up,
				["<PageDown>"] = actions.results_scrolling_down,

				["?"] = actions.which_key,
			},
		},
	},
})

require("telescope").load_extension("media_files")
require("telescope").load_extension("fzf")
-- require("telescope").load_extension("ultisnips")
require("telescope").load_extension("notify")
require("telescope").load_extension("ghn")
require("telescope").load_extension("file_browser")
require("telescope").load_extension("dap")
