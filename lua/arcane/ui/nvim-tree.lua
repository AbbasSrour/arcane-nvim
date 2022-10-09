local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end
local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local kind = require("arcane.utils.kind")
local utils = require "nvim-tree.utils"
local tree_cb = nvim_tree_config.nvim_tree_callback

---@diagnostic disable-next-line: unused-local
local function notify_level(level)
  return function(msg)
    vim.schedule(function()
      vim.api.nvim_echo({ { msg, "WarningMsg" } }, false, {})
    end)
  end
end

utils.notify.warn = notify_level(vim.log.levels.WARN)
utils.notify.error = notify_level(vim.log.levels.ERROR)
utils.notify.info = notify_level(vim.log.levels.INFO)
utils.notify.debug = notify_level(vim.log.levels.DEBUG)

nvim_tree.setup {
  auto_reload_on_write = true,
  create_in_closed_folder = false,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = true,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  view = {
    width = 30,
    -- height = 30,
    hide_root_folder = false,
    side = "left",
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    -- auto_resize = false,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    highlight_opened_files = "none",
    root_folder_modifier = ":t",
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "after",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = kind.nvim_tree_icons.default,
        symlink = kind.nvim_tree_icons.symlink,
        folder = {
          default = kind.nvim_tree_icons.folder.default,
          open = kind.nvim_tree_icons.folder.open,
          empty = kind.nvim_tree_icons.folder.empty,
          empty_open = kind.nvim_tree_icons.folder.empty_open,
          symlink = kind.nvim_tree_icons.folder.symlink,
          arrow_closed = kind.nvim_tree_icons.folder.arrow_closed,
          arrow_open = kind.nvim_tree_icons.folder.arrow_open,
          symlink_open = kind.nvim_tree_icons.folder.symlink_open,
        },
        git = {
          unstaged = kind.nvim_tree_icons.git.unstaged,
          staged = kind.nvim_tree_icons.git.staged,
          unmerged = kind.nvim_tree_icons.git.unmerged,
          renamed = kind.nvim_tree_icons.git.renamed,
          deleted = kind.nvim_tree_icons.git.deleted,
          untracked = kind.nvim_tree_icons.git.untracked,
          ignored = kind.nvim_tree_icons.git.ignored,
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  },
  hijack_directories = {
    enable = false,
    auto_open = true,
  },
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  system_open = {
    cmd = "",
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = { ".git" },
    exclude = { ".gitignore" },
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    expand_all = {
      max_folder_discovery = 300,
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
    remove_file = {
      close_window = true,
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  live_filter = {
    prefix = "[FILTER]: ",
    always_show_folders = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
    },
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = kind.lsp.hint,
      info = kind.lsp.info,
      warning = kind.lsp.warn,
      error = kind.lsp.error,
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
}
