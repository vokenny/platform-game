player = {}
player.body = love.physics.newBody(myWorld, 200, 430, "dynamic")
player.shape = love.physics.newRectangleShape(66, 92)
player.fixture = love.physics.newFixture(player.body, player.shape)
player.speed = 200
player.grounded = false
player.direction = 1 -- right
player.sprite = sprites.playerStand
player.body:setFixedRotation(true)

function playerUpdate(dt)
  if gameState == 2 then
    if love.keyboard.isDown("left") then
      player.body:setX(player.body:getX() - player.speed * dt)
      player.direction = -1
    end

    if love.keyboard.isDown("right") then
      player.body:setX(player.body:getX() + player.speed * dt)
      player.direction = 1
    end

    if player.grounded == true then
      player.sprite = sprites.playerStand
    else
      player.sprite = sprites.playerJump
    end
  end
end
