﻿-------------------------------------------------------------------------------------------------------------
--
-- AzerothAdmin Version 3.x
-- AzerothAdmin is a derivative of TrinityAdmin/MangAdmin.
--
-- Copyright (C) 2024 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
-- Repository: https://github.com/superstyro/AzerothAdmin
--
-------------------------------------------------------------------------------------------------------------

-- Initializing dynamic frames with LUA and FrameLib
-- This script must be listed in the .toc after "AzerothAdmin.lua"
-- Also some variables are globally taken from AzerothAdmin.lua

function AzerothAdmin:CreateMiniMenu()
  local transparency = {
    bg = AzerothAdmin.db.account.style.transparency.backgrounds,
    btn = AzerothAdmin.db.account.style.transparency.buttons,
    frm = AzerothAdmin.db.account.style.transparency.frames
  }
  local color = {
    bg = AzerothAdmin.db.account.style.color.backgrounds,
    btn = AzerothAdmin.db.account.style.color.buttons,
    frm = AzerothAdmin.db.account.style.color.frames
  }

  -- [[ MiniMenu Elements ]]
  FrameLib:BuildFrame({
    name = "ma_minibgframe",
    group = "minimenu",
    parent = UIParent,
    texture = {
      color = {color.bg.r, color.bg.g, color.bg.b, transparency.bg}
    },
    draggable = true,
    size = {
      width = 52,
      height = 244
    },
    setpoint = {
      pos = "RIGHT"
    },
    inherits = nil
  })

  FrameLib:BuildFrame({
    name = "ma_miniframe",
    group = "minimenu",
    parent = ma_minibgframe,
    texture = {
      color = {color.frm.r, color.frm.g, color.frm.b, transparency.frm}
    },
    size = {
      width = 48,
      height = 240
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 2,
      offY = -2
    },
    inherits = nil
  })

  FrameLib:BuildButton({
    name = "ma_mm_logoframe",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      file = ROOT_PATH.."Textures\\icon"
    },
    size = {
      width = 16,
      height = 16
    },
    setpoint = {
      pos = "TOP",
      offY = -2
    },
    inherits = nil
  })

  FrameLib:BuildButton({
    name = "ma_mm_mainbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_mainbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 2,
      offY = -20
    },
    text = "Gm"
  })

  FrameLib:BuildButton({
    name = "ma_mm_charbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_charbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_mainbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Player"
  })

     FrameLib:BuildButton({
    name = "ma_mm_npcbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_npcbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_charbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "NPC"
  })

  FrameLib:BuildButton({
    name = "ma_mm_gobutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_gobutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_npcbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Items"
  })


  FrameLib:BuildButton({
    name = "ma_mm_telebutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_telebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_gobutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Tele"
  })

  FrameLib:BuildButton({
    name = "ma_mm_ticketbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_ticketbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_telebutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Ticket"
  })

  FrameLib:BuildButton({
    name = "ma_mm_miscbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_miscbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_ticketbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Option"
  })

  FrameLib:BuildButton({
    name = "ma_mm_serverbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_serverbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_miscbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Server"
  })

  FrameLib:BuildButton({
    name = "ma_mm_logbutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_logbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_serverbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Log"
  })

    FrameLib:BuildButton({
    name = "ma_mm_whobutton",
    group = "minimenu",
    parent = ma_miniframe,
    texture = {
      name = "ma_mm_whobutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 44,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      relTo = "ma_mm_logbutton",
      relPos = "BOTTOMLEFT",
      offX = 0,
      offY = -2
    },
    text = "Online"
  })

  FrameLib:BuildButton({ --This button shows up in the center of the screen when you die!
    name = "ma_mm_revivebutton",
    group = "noneyet",
    parent = UIParent,
    texture = {
      name = "ma_mm_revivebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "CENTER",
      offY = 100
    },
    text = "REVIVE!"
  })
end
