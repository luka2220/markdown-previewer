## Notes
Some things I have learned about Lua

- arrays are implemented with tables `{}` and sub-scripting starts at 1 
- functions need to be defined before they are called so they are hoisted, the only way around this is 'forward declaration' i.e define the function signature before calling
- the operator ~= is `not euqal too` or `!=` ???
- method syntax which implicitly passes table f as the first arg (self) to the method close:
```lua
local f = io.open(file)
f:close()
```
- Use the `#` operator to get the size of a table:
```lua
local args = { ... }
local n = #args
```
