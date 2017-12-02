-- Initialize game behavior specific to this quest.

local game_meta = sol.main.get_metatable("game")

function game_meta:on_key_pressed(key, modified)
  if key == "c" then
    -- C: Attack button pressed
    local hero = self:get_hero()
    hero:attack()
  end
end

return true
