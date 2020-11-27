local obj={}
obj.__index = obj

-- Metadata
obj.name = "Bouncing Window"
obj.version = "1.0"
obj.author = "catskull <bro@catskull.net>"
obj.license = "MIT"
obj.homepage = "https://github.com/catskull/BouncingWindow.spoon"

obj.direction = "downright"
obj.animate = false

function obj:bindHotKeys(mapping)
  local spec = {
    bounce = hs.fnutils.partial(self.bounce, self)
  }
  hs.spoons.bindHotkeysToSpec(spec, mapping)
  return self
end

function obj:bounce()
  self.animate = not self.animate
  window = hs.window.focusedWindow()
  width = hs.screen.primaryScreen():fullFrame().w
  height = hs.screen.primaryScreen():fullFrame().h
  hs.timer.doWhile(function() return self.animate end, function()
  frame = window:frame()
  if self.direction == "downright" then
      if (frame.x + frame.w + 4) >= width then
      self.direction = "downleft"
      elseif (frame.y + frame.h + 4) >= height then
      self.direction = "upright"
      end
      window:move(hs.geometry.point(4, 4))
  elseif self.direction == "downleft" then
      if (frame.x - 4) <= 0 then
      self.direction = "downright"
      elseif (frame.y + frame.h + 4) >= height then
      self.direction = "upleft"
      end
      window:move(hs.geometry.point(-4, 4))
  elseif self.direction == "upright" then
      if (frame.x + frame.w + 4) >= width then
      self.direction = "upleft"
      elseif (frame.y - 4) <= 23 then
      self.direction = "downright"
      end
      window:move(hs.geometry.point(4, -4))
  elseif self.direction == "upleft" then
      if (frame.x - 4) <= 0 then
      self.direction = "upright"
      elseif (frame.y - 27) <= 0 then
      self.direction = "downleft"
      end
      window:move(hs.geometry.point(-4, -4))
  end
  end, 0.01)
end

return obj