local M = {}

M.misc = {
  Bug = " ",
  Stacks = " ",
  Scopes = "",
  Watches = "",
  DebugConsole = " ",
  mainIcon = "", --"",
  Comment = "",
  symbolsOutline = "",
  linux = "🐧", -- ""
  windows = "",
  apple = "",
  prompt = "", -- ➤
  telescope = "",
  treesitter = "",
  vim_mode = "",
  vim_pos = "",
  test = "",
  docs = "",
  clock = " ",
  Circle = "",
  calendar = " ",
  buffer = " ",
  settings = " ",
  question = "",
  screen = "冷",
  dart = " ",
  config = "", -- 
  magic = " ",
  quit = " ",
  diagnostic = " ",
  finder = " ",
  definition = "  ",
  ChevronRight = ">", -- ""
  Robot = "ﮧ",
  Squirrel = "",
  Tag = "",
  Watch = "",
  Smiley = "ﲃ",
  Package = "",
  CircuitBoard = "",
  seperator = {
    triangle = {
      right = "",
    },
    circle = {
      left = "",
    },
  },
}

M.git = {
  branch = "",
  unstaged = "",
  staged = "",
  unmerged = "",
  renamed = "➜",
  untracked = "",
  ignored = "◌",
  added = "",
  modified = "柳",
  removed = "", --""
  github = "",
}

M.lsp = {
  error = "",
  warn = "",
  info = "", -- 
  hint = "", -- 
  debug = "",
  trace = "✎",
  code_action = "💡", -- 
  inactive = "轢",
  active = "歷",
  signature = "🐼",
  virtual = "🦉", --●
}

M.nvim_tree_icons = {
  default = "",
  symlink = "",
  explorer = "פּ",
  read_only = "",
  not_saved = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
    arrow_closed = "",
    arrow_open = "",
  },
}

M.symbols_outline = {
  Text = "",
  File = "",
  Module = "",
  Namespace = "",
  Package = "",
  Class = "",
  Method = "ƒ",
  Property = "ﰠ",
  Field = "",
  Constructor = "",
  Enum = "練",
  Interface = "",
  Function = "",
  Variable = "",
  Constant = "",
  String = "𝓐",
  Number = "#",
  Boolean = "⊨",
  Array = "",
  Object ="" ,--"⦿",
  Key = "",
  Null = "NULL",
  EnumMember = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
  Unit = "",
  Value = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  Reference = "",
  Folder = "",
}

M.todo_comments = {
  FIX = "律",
  TODO = " ",
  HACK = " ",
  WARN = "裂",
  PERF = "龍",
  NOTE = " ",
  ERROR = " ",
  REFS = "",
}

M.numbers = {
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
}

M.file_icons = {
  Brown = { "" },
  Aqua = { "" },
  LightBlue = { "", "" },
  Blue = { "", "", "", "", "", "", "", "", "", "", "", "", "" },
  DarkBlue = { "", "" },
  Purple = { "", "", "", "", "" },
  Red = { "", "", "", "", "", "" },
  Beige = { "", "", "" },
  Yellow = { "", "", "λ", "", "" },
  Orange = { "", "" },
  DarkOrange = { "", "", "", "", "" },
  Pink = { "", "" },
  Salmon = { "" },
  Green = { "", "", "", "", "", "" },
  LightGreen = { "", "", "", "﵂" },
  White = { "", "", "", "", "", "" },
}

return M

-- return {
--   kind = {
--     Array = "",
--     Boolean = "蘒",
--     Class = "",
--     Color = "",
--     Constant = "",
--     Constructor = "",
--     Enum = "",
--     EnumMember = "",
--     Event = "",
--     Field = "",
--     File = "",
--     Folder = "",
--     Function = "",
--     Interface = "",
--     Key = "",
--     Keyword = "",
--     Method = "",
--     Module = "",
--     Namespace = "",
--     Null = "ﳠ",
--     Number = "",
--     Object = "",
--     Operator = "",
--     Package = "",
--     Property = "",
--     Reference = "",
--     Snippet = "",
--     String = "",
--     Struct = "",
--     Text = "",
--     TypeParameter = "",
--     Unit = "",
--     Value = "",
--     Variable = "",
--   }local M = {}

M.misc = {
  Bug = " ",
  Stacks = " ",
  Scopes = "",
  Watches = "",
  DebugConsole = " ",
  mainIcon = "", --"",
  Comment = "",
  symbolsOutline = "",
  linux = "🐧", -- ""
  windows = "",
  apple = "",
  prompt = "", -- ➤
  telescope = "",
  treesitter = "",
  vim_mode = "",
  vim_pos = "",
  test = "",
  docs = "",
  clock = " ",
  Circle = "",
  calendar = " ",
  buffer = " ",
  settings = " ",
  question = "",
  screen = "冷",
  dart = " ",
  config = "", -- 
  magic = " ",
  quit = " ",
  diagnostic = " ",
  finder = " ",
  definition = "  ",
  ChevronRight = ">", -- ""
  Robot = "ﮧ",
  Squirrel = "",
  Tag = "",
  Watch = "",
  Smiley = "ﲃ",
  Package = "",
  CircuitBoard = "",
  seperator = {
    triangle = {
      right = "",
    },
    circle = {
      left = "",
    },
  },
}

M.git = {
  branch = "",
  unstaged = "",
  staged = "",
  unmerged = "",
  renamed = "➜",
  untracked = "",
  ignored = "◌",
  added = "",
  modified = "柳",
  removed = "", --""
  github = "",
}

M.lsp = {
  error = "",
  warn = "",
  info = "", -- 
  hint = "", -- 
  debug = "",
  trace = "✎",
  code_action = "💡", -- 
  inactive = "轢",
  active = "歷",
  signature = "🐼",
  virtual = "🦉", --●
}

M.nvim_tree_icons = {
  default = "",
  symlink = "",
  explorer = "פּ",
  read_only = "",
  not_saved = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
    arrow_closed = "",
    arrow_open = "",
  },
}

M.symbols_outline = {
  Text = "",
  File = "",
  Module = "",
  Namespace = "",
  Package = "",
  Class = "",
  Method = "ƒ",
  Property = "ﰠ",
  Field = "",
  Constructor = "",
  Enum = "練",
  Interface = "",
  Function = "",
  Variable = "",
  Constant = "",
  String = "𝓐",
  Number = "#",
  Boolean = "⊨",
  Array = "",
  Object ="" ,--"⦿",
  Key = "",
  Null = "NULL",
  EnumMember = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
  Unit = "",
  Value = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  Reference = "",
  Folder = "",
}

M.todo_comments = {
  FIX = "律",
  TODO = " ",
  HACK = " ",
  WARN = "裂",
  PERF = "龍",
  NOTE = " ",
  ERROR = " ",
  REFS = "",
}

M.numbers = {
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
}

M.file_icons = {
  Brown = { "" },
  Aqua = { "" },
  LightBlue = { "", "" },
  Blue = { "", "", "", "", "", "", "", "", "", "", "", "", "" },
  DarkBlue = { "", "" },
  Purple = { "", "", "", "", "" },
  Red = { "", "", "", "", "", "" },
  Beige = { "", "", "" },
  Yellow = { "", "", "λ", "", "" },
  Orange = { "", "" },
  DarkOrange = { "", "", "", "", "" },
  Pink = { "", "" },
  Salmon = { "" },
  Green = { "", "", "", "", "", "" },
  LightGreen = { "", "", "", "﵂" },
  White = { "", "", "", "", "", "" },
}

return M
,
--   git = {
--     LineAdded = "",
--     LineModified = "",
--     LineRemoved = "",
--     FileDeleted = "",
--     FileIgnored = "◌",
--     FileRenamed = "➜",
--     FileStaged = "S",
--     FileUnmerged = "",
--     FileUnstaged = "",
--     FileUntracked = "U",
--     Diff = "",
--     Repo = "",
--     Octoface = "",
--     Branch = "",
--   },
--   ui = {
--     ArrowCircleDown = "",
--     ArrowCircleLeft = "",
--     ArrowCircleRight = "",
--     ArrowCircleUp = "",
--     BoldArrowDown = "",
--     BoldArrowLeft = "",
--     BoldArrowRight = "",
--     BoldArrowUp = "",
--     BoldClose = "",
--     BoldDividerLeft = "",
--     BoldDividerRight = "",
--     BoldLineLeft = "▎",
--     BookMark = "",
--     BoxChecked = "",
--     Bug = "",
--     Stacks = " ",
--     Scopes = "",
--     Watches = "",
--     DebugConsole = " ",
--     Calendar = "",
--     Check = "",
--     ChevronRight = ">",
--     ChevronShortDown = "",
--     ChevronShortLeft = "",
--     ChevronShortRight = "",
--     ChevronShortUp = "",
--     Circle = "",
--     Close = "",
--     CloudDownload = "",
--     Code = "",
--     Comment = "",
--     Dashboard = "",
--     DividerLeft = "",
--     DividerRight = "",
--     DoubleChevronRight = "»",
--     Ellipsis = "…",
--     EmptyFolder = "",
--     EmptyFolderOpen = "",
--     File = "",
--     FileSymlink = "",
--     Files = "",
--     FindFile = "",
--     FindText = "",
--     Fire = "",
--     Folder = "",
--     FolderOpen = "",
--     FolderSymlink = "",
--     Forward = "",
--     Gear = "",
--     History = "",
--     Lightbulb = "",
--     LineLeft = "▏",
--     LineMiddle = "│",
--     List = "",
--     Lock = "",
--     NewFile = "",
--     Note = "",
--     Package = "",
--     Pencil = "",
--     Plus = "",
--     Project = "",
--     Search = "",
--     SignIn = "",
--     SignOut = "",
--     Tab = "",
--     Table = "",
--     Target = "",
--     Telescope = "",
--     Text = "",
--     Tree = "",
--     Triangle = "契",
--     TriangleShortArrowDown = "",
--     TriangleShortArrowLeft = "",
--     TriangleShortArrowRight = "",
--     TriangleShortArrowUp = "",
--   },
--   diagnostics = {
--     BoldError = "",
--     Error = "",
--     BoldWarning = "",
--     Warning = "",
--     BoldInformation = "",
--     Information = "",
--     BoldQuestion = "",
--     Question = "",
--     BoldHint = "",
--     Hint = "",
--     Debug = "",
--     Trace = "✎",
--   },
--   misc = {
--     Robot = "ﮧ",
--     Squirrel = "",
--     Tag = "",
--     Watch = "",
--     Smiley = "ﲃ",
--     Package = "",
--     CircuitBoard = "",
--   },
-- }
