# Markdown to PDF converter

My first lua project to become more familiar with the syntax and semantics

## TODOs

- [x] read in a file as a program arg and verify it is valid
- [x] validate that the file is a markdown file
- [x] convert the markdown file to an HTML file via lunamark
- [x] open the html file in the browser via the os command `open markdown.html`
- [ ] store the HTML file elsewhere on the system (~/srcipts/markdown)
- [ ] prompt the user where to store the md file?
- [ ] figure where to store default file path for markdown 

## Planning

- To display it as formatted Markdown in a browser, it needs to be converted to HTML
  - Read the .md file
  - Convert it to HTML (using a lua markdown library)
- Default location can be set somewhere, maybe in a config file...
- Prompt the user where to store the md file

## Basic goals

- Accepts a Markdown file path as an argument: lua main.lua file.md
- Reads that file and converts it to HTML (stores the HTML file as template.html)
- Automatically opens the browser

## Tools

- Lua library to convert markdown to html (https://github.com/jgm/lunamark)
