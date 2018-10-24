-- Initialize game behavior specific to this quest.

local game_meta = sol.main.get_metatable("game")

function game_meta:on_key_pressed(key, modified)
  if key == "x" then
    self:get_hero():attack_left()
  elseif key == "c" then
    self:get_hero():attack_forward()
  elseif key == "v" then
    self:get_hero():attack_right()
  end
end

return true
