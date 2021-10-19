local cmd = vim.cmd
local fn = vim.fn
local gl = require("galaxyline")
local line = gl.section
gl.short_line_list = {"LuaTree", "packager", "Floaterm", "coc-explorer"}

-- local nord_colors = {
--   bg = "NONE",
--   fg = "#81A1C1",
--   line_bg = "NONE",
--   lbg = "NONE",
--   fg_green = "#8FBCBB",
--   yellow = "#EBCB8B",
--   cyan = "#A3BE8C",
--   darkblue = "#81A1C1",
--   green = "#8FBCBB",
--   orange = "#D08770",
--   purple = "#B48EAD",
--   magenta = "#BF616A",
--   gray = "#616E88",
--   blue = "#5E81AC",
--   red = "#BF616A"
-- }

local nord_colors = {
    bg       = 'NONE',
    line_bg  = 'NONE',
    fg       = '#8FBCBB',
    fg_green = '#65a380',
    lbg = 'NONE',
    yellow   = '#E5C07B',
    cyan     = '#70C0BA',
    darkblue = '#83A598',
    green    = '#98C379',
    orange   = '#FF8800',
    purple   = '#C678DD',
    magenta  = '#C858E9',
    blue     = '#73BA9F',
    red      = '#D54E53',
}

local buffer_not_empty = function()
  if fn.empty(fn.expand("%:t")) ~= 1 then
    return true
  end
  return false
end

line.left[1] = {
  FirstElement = {
    provider = function()
      return "  "
    end,
    highlight = {nord_colors.blue, nord_colors.line_bg}
  }
}
line.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {
        n = nord_colors.yellow,
        i = nord_colors.green,
        v = nord_colors.magenta,
        [""] = nord_colors.magenta,
        V = nord_colors.magenta,
        c = nord_colors.red,
        no = nord_colors.green,
        s = nord_colors.orange,
        S = nord_colors.orange,
        [""] = nord_colors.orange,
        ic = nord_colors.green,
        R = nord_colors.purple,
        Rv = nord_colors.purple,
        cv = nord_colors.red,
        ce = nord_colors.red,
        r = nord_colors.cyan,
        rm = nord_colors.cyan,
        ["r?"] = nord_colors.cyan,
        ["!"] = nord_colors.red,
        t = nord_colors.red
      }
      cmd("hi GalaxyViMode guifg=" .. mode_color[fn.mode()])
      return "     "
    end
  }
}
-- line.left[3] = {
--   FileIcon = {
--     provider = "FileIcon",
--     condition = buffer_not_empty,
--     highlight = {require("galaxyline.providers.fileinfo").get_file_icon_color, nord_colors.line_bg}
--   }
-- }
line.left[3] = {
  FileName = {
    -- provider = "FileName",
    provider = function()
      return fn.expand("%:F")
    end,
    condition = buffer_not_empty,
    highlight = {nord_colors.fg, nord_colors.line_bg}
    --  highlight = {nord_colors.purple, nord_colors.line_bg, "bold"}
  }
}

line.left[4] = {
  DiagnosticError = {
    provider = "DiagnosticError",
    --  separator = " ",
    icon = " ",
    highlight = {nord_colors.red, nord_colors.line_bg}
  }
}
line.left[5] = {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    -- separator = " ",
    icon = " ",
    highlight = {nord_colors.yellow, nord_colors.line_bg}
  }
}

line.left[6] = {
  DiagnosticInfo = {
    -- separator = " ",
    provider = "DiagnosticInfo",
    icon = " ",
    highlight = {nord_colors.green, nord_colors.line_bg}
  }
}

line.left[7] = {
  DiagnosticHint = {
    provider = "DiagnosticHint",
    -- separator = " ",
    icon = " ",
    highlight = {nord_colors.blue, nord_colors.line_bg}
  }
}

local checkwidth = function()
  local squeeze_width = fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

line.right[1] = {
  DiffAdd = {
    provider = "DiffAdd",
    condition = checkwidth,
    icon = " ",
    highlight = {nord_colors.green, nord_colors.line_bg}
  }
}
line.right[2] = {
  DiffModified = {
    provider = "DiffModified",
    condition = checkwidth,
    icon = "柳",
    highlight = {nord_colors.yellow, nord_colors.line_bg}
  }
}
line.right[3] = {
  DiffRemove = {
    provider = "DiffRemove",
    condition = checkwidth,
    icon = " ",
    highlight = {nord_colors.red, nord_colors.line_bg}
  }
}
line.right[4] = {
  GitIcon = {
    provider = function()
      return " "
    end,
    condition = require("galaxyline.providers.vcs").check_git_workspace,
    highlight = {nord_colors.orange, nord_colors.line_bg}
  }
}
line.right[5] = {
  GitBranch = {
    provider = "GitBranch",
    condition = require("galaxyline.providers.vcs").check_git_workspace,
    highlight = {nord_colors.orange, nord_colors.line_bg, "bold"}
  }
}

-- LineInfo = {
-- LineInfo = {
-- provider = "LineColumn",
-- separator = "",
-- separator_highlight = {nord_colors.blue, nord_colors.line_bg},
-- highlight = {nord_colors.gray, nord_colors.line_bg}
-- section.right[7] = {
-- }
--   FileSize = {
--     provider = "FileSize",
--     separator = " ",
--     condition = buffer_not_empty,
--     separator_highlight = {nord_colors.blue, nord_colors.line_bg},
--     highlight = {nord_colors.fg, nord_colors.line_bg}
--   }
-- }

line.short_line_left[1] = {
  SFileName = {
    provider = function()
      local fileinfo = require("galaxyline.providers.fileinfo")
      local fname = fileinfo.get_current_file_name()
      for _, v in ipairs(gl.short_line_list) do
        if v == vim.bo.filetype then
          return ""
        end
      end
      return fname
    end,
    condition = buffer_not_empty,
    highlight = {nord_colors.white, nord_colors.lbg, "bold"}
  }
}
