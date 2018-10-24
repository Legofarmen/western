-- Lua script of custom entity bullet_left.
local entity = ...
local game = entity:get_game()
local map = entity:get_map()

-- Event called when the custom entity is initialized.
function entity:on_created()

  local movement = sol.movement.create("straight")
  movement:set_speed(300)
  movement:set_angle(2 * math.pi / 3)
  movement:set_smooth(false)

  function movement:on_obstacle_reached()

    entity:remove()
  end

  function movement:on_position_changed()

    for enemy in map:get_entities_by_type("enemy") do
      if entity:overlaps(enemy) then
        entity:remove()
        enemy:remove_life(1)
      end
    end
  end

  movement:start(self)

  -- Initialize the properties of your custom entity here,
  -- like the sprite, the size, and whether it can traverse other
  -- entities and be traversed by them.
end
