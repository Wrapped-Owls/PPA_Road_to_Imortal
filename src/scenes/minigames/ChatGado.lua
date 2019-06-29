local ChatGado = {}

ChatGado.__index = ChatGado

function ChatGado:new()    
    local this = setmetatable({
        tinkerAnimation = gameDirector:getLibrary("Pixelurite").configureSpriteSheet("tinker_side", "assets/sprites/", true, nil, 1, 1, true),
        thisIsHowILike = love.audio.newSource("assets/sounds/assim_que_eu_gosto.mp3", "static"),
        elapsedTime = 0,
        buttons = {parentName = "inGame"}
    }, ChatGado)
    this.buttons.parentName = nil
    return this
end

function ChatGado:deleteTextBox()
    self.textbox = nil; self.elapsedTime = 0
end

function ChatGado:keypressed(key, scancode, isrepeat)
end

function ChatGado:mousepressed(x, y, button)
end

function ChatGado:mousereleased(x, y, button)
end

function ChatGado:update(dt)
    self.elapsedTime = self.elapsedTime + dt
end

function ChatGado:draw()
end

return ChatGado