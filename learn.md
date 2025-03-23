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

- string concatenation is used with the .. operator. The + operator is used for integers

```lua
local s = "some string"
local new_s = "string and " .. s
```

- the `luarocks` package manager installs packages in the system where lua is installed
- an example luarocks command to install a package `luarocks install lunamark`

- the args table variable at the top-level scope stores the program arguments

```lua
local args = { ... }
local n_args = #args
```
