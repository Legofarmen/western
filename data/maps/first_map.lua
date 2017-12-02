-- Lua script of map first_map.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()
  local camera = map:get_camera()
  local movement = sol.movement.create("straight")
  movement:set_speed(9)
  movement:set_angle(math.pi / 2)
  movement:start(camera)
  local x, y = camera:get_position_to_track(map:get_hero())
  movement:set_xy(x, y)
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end
