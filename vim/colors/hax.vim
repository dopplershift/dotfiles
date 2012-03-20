" name: Hax

let colors_name = "hax" 
set background=dark
hi clear

if exists("syntax-on")
syntax reset
endif

" trivial colors

hi Normal       gui=none    guifg=#eeeeec   guibg=#000000
hi Cursor       gui=none    guifg=#000000   guibg=#ffffff
hi Folded                   guifg=#40ffff   guibg=#000000
hi FoldColumn               guifg=#b2b2b2   guibg=#000000

" syntax highlighting

hi Comment      gui=none    guifg=#b2b2b2
hi Constant                 guifg=#ffa0a0
hi CursorLine               guifg=#ffffff   guibg=#111133
hi CursorColoumn            guifg=#ffffff
hi Error        gui=bold    guifg=#ffffff
hi Function     gui=bold    guifg=#40ffff
hi Identifier               guifg=#40ffff
hi IncSearch    gui=none    guifg=#ff0089
hi LineNr       gui=none    guifg=#c2c2c2
hi MatchParen   gui=bold    guifg=#60ff60
hi ModeMsg      gui=none    guifg=#ffffff   guibg=#202020
hi MoreMsg      gui=bold    guifg=#36e1d0
hi Pmenu                    guifg=#60ff60   guibg=#202020
hi PmenuSel     gui=bold    guifg=#000000   guibg=#60ff60
hi PreProc                  guifg=#ff80ff
hi Question                 guifg=#8ae234
hi Search                   guifg=#ffffff   guibg=#a1a1a1
hi Special                  guifg=#40ffff
hi Statement    gui=bold    guifg=#ffff60
hi StatusLine               guifg=#e9ba6e   guibg=#202020
hi StatusLineNC gui=none                    guibg=#202020
hi TabLine      gui=none    guifg=#8ae234   guibg=#202020 
hi TabLineFill  gui=none    guifg=#ffffff   guibg=#202020
hi TabLineSel   gui=none    guifg=#60ff60   guibg=#2e3436
hi Todo                     guifg=#6336e1
hi Type         gui=bold    guifg=#60ff60
hi VertSplit    gui=none    guifg=#202020   guibg=#202020
hi Visual       gui=none    guifg=#ffffff   guibg=#202020
hi WarningMsg   gui=none    guifg=#60ff60
hi WildMenu     gui=none                    guibg=#ffffff
hi OverLength               guifg=#ffffff   guibg=#202020
match OverLength /\%>80v.*/

"status line

hi Filepath                 guifg=#c2c2c2   guibg=#202020
hi Totallines   gui=none    guifg=#40ffff   guibg=#202020
hi Filetype                 guifg=#c2c2c2   guibg=#202020
hi Flags                    guifg=#60ff60   guibg=#202020
hi Percentage               guifg=#c2c2c2   guibg=#202020
hi Positions                guifg=#c2c2c2   guibg=#202020
hi Time                     guifg=#c2c2c2   guibg=#202020
hi Encoding                 guifg=#c2c2c2   guibg=#202020
