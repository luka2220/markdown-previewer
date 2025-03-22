# Markdown to PDF converter

My first lua project to become more familair with the syntax and semantics

## Planning

- To display it as formatted Markdown in a browser, it needs to be converted it to HTML
  - Read the .md file
  - Convert it to html (using a lua markdown library or system command like pandoc)
  - Serve is on localhost:42069

## Basic goals

- Accepts a Markdown file path as an argument: lua main.lua file.md
- Reads that file and converts it to HTML (stores the html file as template.html)
- Serves it at http://localhost:42069
- Automatically opens the browser

## Tools

- Luasocket for serving the file (https://github.com/lunarmodules/luasocket)
- Lua library to convert markdown to html (https://github.com/jgm/lunamark)
