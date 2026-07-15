Rectangle = {}
function Rectangle:new(width, height)
  local obj = {width = width, height = height}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Rectangle:area()
  return self.width * self.height
end

local rect = Rectangle:new(5, 10)
print(rect:area())

Square = Rectangle:new(0, 0)
function Square:new(size)
  return Rectangle:new(size, size)
end
local square = Square:new(5)
print(square:area())
