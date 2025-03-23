# Markdown to PDF converter

My first lua project to become more familair with the syntax and semantics

## TODOs

- [x] read in a file as a program arg and verify it is valid
- [x] validate that the file is a markdown file
- [x] convert the markdown file to an html file via lunamark
- [x] open the html file in the browser via a os command `open markdown.html`

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
