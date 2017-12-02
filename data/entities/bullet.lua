-- Lua script of custom entity bullet.
-- This script is executed every time a custom entity with this model is created.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest

local entity = ...
local game = entity:get_game()
local map = entity:get_map()

-- Event called when the custom entity is initialized.
function entity:on_created()

  local movement = sol.movement.create("straight")
  movement:set_speed(300)
  movement:set_angle(math.pi / 2)

  function movement:on_obstacle_reached()

    entity:remove()
  end

  movement:start(self)

  -- Initialize the properties of your custom entity here,
  -- like the sprite, the size, and whether it can traverse other
  -- entities and be traversed by them.
end
