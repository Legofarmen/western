-- Initialize game behavior specific to this quest.

local game_meta = sol.main.get_metatable("game")

function game_meta:on_key_pressed(key, modified)
  if key == "c" then
    -- C: Attack button pressed
    print("action")
  end
end

return true
