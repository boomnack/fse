--

local Class = require 'lib.hump.class'

local Slug = Class({
  -- Set up default stats that apply to all slugs.
  attack = 1,
  defence = 0,
  maxHP = 10,
  -- Drops is a table of the items an enemy could drop when it dies.
  drops = {
    -- Items consists of tables with both an item name and percent
    -- chance of it being dropped.
    items = {
      {'healthpotion', 0.2}
    },
    gold = 10, -- Drops 10 gold.
    exp = 3, -- Gives the player 3 experience.
  },
})

function Slug:init(game, battle)
  self.game = game
  self.battle = battle
  
  self.HP = self.maxHP
end

function Slug:update(dt)
  -- Update is where any events will be run, and animations will
  -- be updated.
end

function Slug:draw(enemyNum)
  love.graphics.setColor(0, 255, 0)
  love.graphics.circle('fill', 480, 20, 20)
end

function Slug:takeTurn(player)
  -- AI for the slug during it's turn to fight.
  player.stats.HP = player.stats.HP - self.attack + player.stats.defence
  -- Tell the battle system that the slugs turn is over.
  return 'done'
end

function Slug:onDeath()
  -- Return what the player gets when the slug dies.
  return self.drops
end

return Slug
