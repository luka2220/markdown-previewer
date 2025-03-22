--- @type string[]
local args = { ... }    -- Empty table args

local args_size = #args -- gets the size of args
if args_size == 0 then
  print("❗add the mardown file path")
  os.exit(true) -- exit with an error
end

MD_FILE_PATH = tostring(args[1]) -- explicitly coerse args[1] to string

-- NOTE: functions need to be defined before they are called so they are hoisted, the only way around this is 'forward decleration'

--- Checks if a file exists in the file system
---
--- @param file string
--- @return boolean
local function file_exists(file)
  local f = io.open(file, "r")
  if f ~= nil then -- ~= is not equal to...
    f:close()     -- method synytax which implicilty passes table f as the first arg (self) to the method close
    return true
  end
  return false
end

-- NOTE:
-- apparently + opr. is for numbers
-- to concatenate string use .. opr.
if file_exists(MD_FILE_PATH) == true then
  print("markdown file path: " .. MD_FILE_PATH)
else
  error("❗Invalid markdown file path, check the file passed in")
end

-- Iterate over every arg in args
--
