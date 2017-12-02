-- Initialize hero behavior specific to this quest.

require("scripts/multi_events")

local hero_meta = sol.main.get_metatable("hero")

local function initialize_hero_features(game)

  local hero = game:get_hero()
  hero:set_tunic_sprite_id("main_heroes/eldran")
end

function hero_meta:attack()
  local x, y, layer = self:get_position()

  local map = self:get_map()
  map:create_custom_entity({
    direction = 1,
    layer = layer,
    x = x,
    y = y,
    width = 16,
    height = 16,
    sprite = "animals/phoenix",
    model = "bullet",
  })

  print("attack")
end

-- Set up Eldran hero sprite on any game that starts.
local game_meta = sol.main.get_metatable("game")
game_meta:register_event("on_started", initialize_hero_features)
return true
