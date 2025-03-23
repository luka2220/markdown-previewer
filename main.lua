--- Checks if the file is a markdown file
---
--- @param file string
--- @return boolean
local function validate_markdown_extension(file)
  local ext = ""
  for w in string.gmatch(file, "[^%.]+") do
    ext = w
  end

  return ext == "md"
end

---
--- @param file string
--- @return string
local function file_exists(file)
  if validate_markdown_extension(file) ~= true then
    error("❗invalid file extension, only .md files accepted") -- throw error for now
  end

  local f = io.open(file, "r")
  local mkd_content = ""
  if f ~= nil then
    for c in f:lines(1) do
      mkd_content = mkd_content .. c
    end
    f:close()
    return mkd_content
  else
    error("❗invalid markdown file path, check the file passed in") -- throw error for now
  end
end

--- Converts the markdown file to html
---
--- @param md string
--- @return string
local function markdown_to_html(md)
  local lunamark = require("lunamark")
  local writer = lunamark.writer.html.new()
  local parse = lunamark.reader.markdown.new(writer, { smart = true })
  local result = parse(md)
  return result
end

--- Creates and saves an html file with the html md content and saves the html file
---
--- @param md string
local function create_html_file(md)
  local html = markdown_to_html(md)

  if os.execute("touch markdown.html") ~= true then
    error("❗error creating an html file")
  end

  local f = io.open("./markdown.html", "w")
  if f ~= nil then
    f:write(html)
    f:close()
  else
    error("❗error opening html file")
  end
end

--- Opens the html file in the browser
local function open_html_file()
  if os.execute("open markdown.html") ~= true then
    error("❗error opening html file in the browser")
  end
end

--- @type string[]
local args = { ... } -- Empty table args

local args_size = #args
if args_size == 1 then
  local path = args[1]
  local mkd_content = file_exists(path)
  create_html_file(mkd_content)
  open_html_file()
else
  print("❗add the mardown file path")
  os.exit(true) -- exit with an error
end
