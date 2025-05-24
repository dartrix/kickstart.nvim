local M = {}

M.setup = function() end

--- @class present.Slides
--- @fields slides string[]: The slides of the file

--- Takes some lines and parses them
--- @param lines string[]: the lines in the buffer
--- @return present.Slides
local parse_slides = function(lines)
  local slides = { slides = {} }
  local current_slide = {}
  local separator = '^#'
  for _, line in ipairs(lines) do
    print(line, 'find:', line:find(separator), '|')
    if line:find(separator) then
      if #current_slide > 0 then
        table.insert(slides.slides, current_slide)
      end
      current_slide = {}
    end
    table.insert(current_slide, line)
  end
  table.insert(slides.slides, current_slide)
  return slides
end

return M
