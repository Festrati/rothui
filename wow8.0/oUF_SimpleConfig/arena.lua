
-- oUF_SimpleConfig: arena
-- zork, 2018

-----------------------------
-- Variables
-----------------------------

local A, L = ...

-----------------------------
-- Arena Config
-----------------------------

L.C.arena = {
  enabled = true,
  size = {130,26},
  point = {"TOP",Minimap,"BOTTOM",0,-35}, --point of first arena frame
  scale = 1*L.C.globalscale,
  --healthbar
  healthbar = {
    --health and absorb bar cannot be disabled, they match the size of the frame
    colorReaction = true,
    colorClass = true,
    colorHealth = true,
    frequentUpdates = true,
    name = {
      enabled = true,
      points = {
        {"LEFT",2,0},
        {"RIGHT",-2,0},
      },
      size = 16,
      align = "CENTER",
      tag = "[arenaspec] [name]",
    },
    debuffHighlight = true,
  },
  --powerbar
  powerbar = {
    enabled = true,
    size = {130,5},
    point = {"TOP","BOTTOM",0,-4}, --if no relativeTo is given the frame base will be the relativeTo reference
    colorPower = true,
  },
  --raidmark
  raidmark = {
    enabled = true,
    size = {18,18},
    point = {"CENTER","TOP",0,4},
  },
  --castbar
  castbar = {
    enabled = true,
    size = {130,26},
    point = {"TOP","BOTTOM",0,-14},
    name = {
      enabled = true,
      points = {
        {"LEFT",2,0},
        {"RIGHT",-2,0},
      },
      size = 16,
    },
    icon = {
      enabled = true,
      size = {26,26},
      point = {"RIGHT","LEFT",-6,0},
    },
  },
  --buffs
  buffs = {
    enabled = true,
    point = {"RIGHT","LEFT",-5,0},
    num = 2,
    cols = 2,
    size = 22,
    spacing = 5,
    initialAnchor = "TOPRIGHT",
    growthX = "LEFT",
    growthY = "DOWN",
    disableCooldown = true,
  },
  --debuffs
  debuffs = {
    enabled = true,
    point = {"TOPLEFT","BOTTOMLEFT",0,-14},
    num = 5,
    cols = 5,
    size = 22,
    spacing = 5,
    initialAnchor = "TOPLEFT",
    growthX = "RIGHT",
    growthY = "DOWN",
    disableCooldown = true,
  },
  setup = {
    point = "TOP",
    relativePoint = "BOTTOM", --relativeTo will be the arena frame preceding
    xOffset = 0,
    yOffset = -50,
  },
}
