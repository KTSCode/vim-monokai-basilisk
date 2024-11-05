" Maintainer: Kyle San Clemente <kylesanclemente@gmail.com>
" Repository: https://github.com/KTSCode/vim-monokai-basilisk
"
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="monokai-basilisk"

" Below are the colors used for this colorscheme with their fullname
"
"Base1 Term:       000  GUI: #000000,
"White Term:       015  GUI: #F8F8F8,
"Base3 Term:       022  GUI: #2F312B,
"DiffText Term:    023  GUI: #223344,
"Aqua Term:        039  GUI: #00afff,
"Green Term:       040  GUI: #00D700,
"Base4 Term:       052  GUI: #3C1518,
"Base5 Term:       059  GUI: #49483E,
"Blue Term:        081  GUI: #66D9EF,
"Red Term:         088  GUI: #960020,
"DiffRemove Term:  095  GUI: #75715E,
"LightPurple Term: 099  GUI: #875fff,
"Grey Term:        102  GUI: #8F908A,
"Base6 Term:       103  GUI: #778899,
"Purple Term:      141  GUI: #AE81FF,
"Yellow Term:      221  GUI: #FFE972,
"Base2 Term:       233  GUI: #111111,
"Brown Term:       236  GUI: #383A3E,
"Comment Term:     240  GUI: #585858,

" Editor
" --------------------------
hi Normal guifg=#F8F8F2 guibg=#000000 gui=NONE ctermfg=15 ctermbg=00 cterm=NONE
hi Conceal guifg=#66D9EF guibg=#000000 gui=NONE ctermfg=81 ctermbg=00 cterm=NONE
hi NonText guifg=#49483E guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#66D9EF guibg=#000000 gui=NONE ctermfg=81 ctermbg=00 cterm=NONE
hi StatusLineNC guifg=#778899 guibg=#000000 gui=NONE ctermfg=103 ctermbg=00 cterm=NONE
hi Search guifg=#000000 guibg=#FFE972 gui=NONE ctermfg=00 ctermbg=221 cterm=NONE
hi VertSplit guifg=#75715E guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi LineNr guifg=#8F908A guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=00 cterm=NONE

" Popup Menu
" --------------------------
hi Pmenu guifg=#F8F8F8 guibg=#223344 gui=NONE ctermfg=15 ctermbg=23 cterm=NONE
hi PmenuSet guifg=#66D9EF guibg=#000000 gui=NONE ctermfg=81 ctermbg=00 cterm=NONE
hi PmenuSBar guifg=#66D9EF guibg=#49483E gui=NONE ctermfg=81 ctermbg=59 cterm=NONE
hi PmenuSel guifg=#66D9EF guibg=#49483E gui=NONE ctermfg=81 ctermbg=59 cterm=NONE
hi PmenuThumb guifg=#778899 guibg=#778899 gui=NONE ctermfg=103 ctermbg=103 cterm=NONE

" Neovim Popup Menu
" --------------------------
hi NormalFloat guifg=#F8F8F8 guibg=#223344 gui=NONE ctermfg=15 ctermbg=23 cterm=NONE

" Coc Popup Menu
" --------------------------
hi CocFloating guifg=#75715E guibg=#223344 gui=NONE ctermfg=102 ctermbg=233 cterm=NONE
hi CocMenuSel guifg=#00D700 guibg=#000000 gui=NONE ctermfg=40 ctermbg=00 cterm=NONE

" Messages
" --------------------------
hi Question guifg=#00D700 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#00D700 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#00D700 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#111111 guibg=#00afff gui=NONE ctermfg=233 ctermbg=39 cterm=NONE
hi WarningMsg guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE

" Spelling
" --------------------------
hi SpellBad guifg=#F8F8F2 guibg=NONE gui=undercurl ctermfg=15 ctermbg=NONE cterm=undercurl guisp=#F92782
hi SpellLocal guifg=#66D9EF guibg=NONE gui=undercurl ctermfg=81 ctermbg=NONE cterm=undercurl guisp=#66D9EF

" Tabline
" --------------------------
hi TabLine guifg=#8F908A guibg=#000000 gui=NONE ctermfg=102 ctermbg=00 cterm=NONE
hi TabLineSel guifg=#F8F8F2 guibg=#49483E gui=NONE ctermfg=15 ctermbg=59 cterm=NONE
hi TabLineFill guifg=#111111 guibg=#000000 gui=NONE ctermfg=233 ctermbg=00 cterm=NONE

" Misc
" --------------------------
hi SpecialKey guifg=#49483E guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Title guifg=#00D700 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Directory guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE

" Diff
" --------------------------
hi DiffAdd guifg=#F8F8F8 guibg=#2F312B gui=NONE ctermfg=15 ctermbg=22 cterm=NONE
hi DiffDelete guifg=#00afff guibg=#3C1518 gui=NONE ctermfg=39 ctermbg=52 cterm=NONE
hi DiffChange guifg=#00D700 guibg=#3C1518 gui=NONE ctermfg=40 ctermbg=52 cterm=NONE
hi DiffText guifg=#75715E guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE

" Folding
" --------------------------
hi Folded guifg=#585858 guibg=#000000 gui=NONE ctermfg=240 ctermbg=00 cterm=NONE
hi FoldColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=00 cterm=NONE

" Cursor colors
" --------------------------
hi ColorColumn guifg=NONE guibg=#00afff gui=NONE ctermfg=NONE ctermbg=39 cterm=NONE
hi CursorColumn guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLine guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Cursor guifg=#111111 guibg=#F8F8F2 gui=NONE ctermfg=233 ctermbg=15 cterm=NONE
hi Visual guifg=NONE guibg=#49483E gui=NONE ctermfg=NONE ctermbg=59 cterm=NONE
hi MatchParen guibg=#00afff gui=underline ctermbg=black ctermfg=39 cterm=underline term=underline


if has("nvim")

  " Neovim Terminal
  " --------------------------
  hi TermCursor guifg=#111111 guibg=#F8F8F2 gui=NONE ctermfg=233 ctermbg=15 cterm=NONE
  hi TermCursorNC guifg=#111111 guibg=#778899 gui=NONE ctermfg=233 ctermbg=103 cterm=NONE

endif

" General Highlighting
" --------------------------
hi Constant guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Number guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Float guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Boolean guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Character guifg=#00D700 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi String guifg=#00D700 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Type guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Structure guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi TypeDef guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Identifier guifg=#875fff guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Function guifg=#875fff guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Statement guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Operator guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Label guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Keyword guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Preproc guifg=#875fff guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Include guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Define guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Macro guifg=#875fff guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#875fff guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Special guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Comment guifg=#585858 guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
hi SpecialComment guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Tag guifg=#00afff guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Underlined guifg=#875fff guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Todo guifg=#F8F8F2 guibg=#000000 gui=bold ctermfg=15 ctermbg=00 cterm=bold
hi Error guifg=#F8F8F2 guibg=#960020 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE

" RenderMarkdown Plugin
" --------------------------
"  Code Block
hi RenderMarkdownCode guibg=#333333 gui=NONE cterm=NONE

"  Header Foreground
hi RenderMarkdownH1 guifg=#00D700 gui=NONE cterm=NONE
hi RenderMarkdownH2 guifg=#66D9EF gui=NONE cterm=NONE
hi RenderMarkdownH3 guifg=#00afff gui=NONE cterm=NONE
hi RenderMarkdownH4 guifg=#875fff gui=NONE cterm=NONE
hi RenderMarkdownH5 guifg=#8F908A gui=NONE cterm=NONE
hi RenderMarkdownH6 guifg=#F8F8F8 gui=NONE cterm=NONE
hi RenderMarkdownH7 guifg=#99FF99 gui=NONE cterm=NONE

"  Header background
hi RenderMarkdownH1Bg guibg=#003300 gui=NONE cterm=NONE
hi RenderMarkdownH2Bg guibg=#001133 gui=NONE cterm=NONE
hi RenderMarkdownH3Bg guibg=#000033 gui=NONE cterm=NONE
hi RenderMarkdownH4Bg guibg=#110033 gui=NONE cterm=NONE
hi RenderMarkdownH5Bg guibg=#222222 gui=NONE cterm=NONE
hi RenderMarkdownH6Bg guibg=#111111 gui=NONE cterm=NONE
hi RenderMarkdownH7Bg guibg=#005500 gui=NONE cterm=NONE
