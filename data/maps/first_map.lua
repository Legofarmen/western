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
  local x, y = camera:get_position_to_track(map:get_hero())
  local movement = sol.movement.create("straight")

  function movement:on_position_changed()

    local _, screen_h = sol.video.get_quest_size()
    local screen_x, screen_y0 = movement:get_xy()
    local screen_y1 = screen_y0 + screen_h

    map:get_entity("screen_top"):set_position(screen_x, screen_y0)
    map:get_entity("screen_bottom"):set_position(screen_x, screen_y1)

    local hero = map:get_hero()
    while screen_top:overlaps(hero) do
      local x, y = hero:get_position()
      hero:set_position(x, y+1)
    end
    if not hero:test_obstacles(0, -1) then
      local x, y = hero:get_position()
      hero:set_position(x, y-1)
    end
    while screen_bottom:overlaps(hero) do
      local x, y = hero:get_position()
      hero:set_position(x, y-1)
    end
    if hero:test_obstacles(0, 0) then
      game:set_life(0)
    end
  end

  movement:set_speed(9)
  movement:set_angle(math.pi / 2)
  movement:start(camera)
  movement:set_xy(x, y)
end

function screen_bottom:on_position_changed(x, y)
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end
