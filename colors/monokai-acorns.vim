" Maintainer: Kyle San Clemente <kylesanclemente@gmail.com>
" Repository: https://github.com/KTSCode/vim-monokai-acorns
"
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="monokai-acorns"

" Below are the colors used for this colorscheme with their fullname
"
" Grey35           GUI: #585858, Term:  240
" Bakers Chocolate GUI: #420E09, Term:  52
" Biscay           GUI: #334455, Term:  59
" Black            GUI: #111111, Term: 233
" Black0           GUI: #000000, Term:  00
" Bokara Grey      GUI: #211F1C, Term:  00
" Carmine          GUI: #960020, Term:  88
" DEBUG            GUI: #FF00FF, Term:  13
" DEBUG2           GUI: #FF0000, Term:  09
" SpringGreen2     GUI: #00ff5f, Term:  47
" Eternity         GUI: #2F312B, Term:  22
" Flint            GUI: #75715E, Term:  95
" Heavy Metal      GUI: #49483E, Term:  59
" Jumbo            GUI: #8F908A, Term: 102
" SlateBlue1       GUI: #875fff, Term:  99
" Light Slate Blue GUI: #AE81FF, Term: 141
" Light Slate Grey GUI: #778899, Term: 103
" Maire            GUI: #222218, Term:  00
" Midnight         GUI: #223344, Term:  23
" Palm Leaf        GUI: #253B22, Term:  22
" Peach Orange     GUI: #9D550F, Term: 130
" Seal Brown       GUI: #3C1518, Term:  52
" Spellbad         GUI: #F8F8F2, Term:  15
" Turquoise Blue   GUI: #66D9EF, Term:  81
" Vulcan           GUI: #383A3E, Term: 236
" White            GUI: #F8F8F2, Term:  15
" White Smoke      GUI: #F8F8F8, Term:  15
" Darkish Green    GUI: #00D700, Term:  40
" Witch Haze       GUI: #FFE972, Term: 221

" Popup Menu
" --------------------------
hi Pmenu guifg=#F8F8F8 guibg=#223344 gui=NONE ctermfg=15 ctermbg=23 cterm=NONE
hi PmenuSet guifg=#66D9EF guibg=#111111 gui=NONE ctermfg=81 ctermbg=00 cterm=NONE
hi PmenuSBar guifg=#66D9EF guibg=#334455 gui=NONE ctermfg=81 ctermbg=59 cterm=NONE
hi PmenuSel guifg=#66D9EF guibg=#334455 gui=NONE ctermfg=81 ctermbg=59 cterm=NONE
hi PmenuThumb guifg=#778899 guibg=#778899 gui=NONE ctermfg=103 ctermbg=103 cterm=NONE

" Editor
" --------------------------
hi Normal guifg=#F8F8F2 guibg=#111111 gui=NONE ctermfg=15 ctermbg=00 cterm=NONE
hi Conceal guifg=#66D9EF guibg=#111111 gui=NONE ctermfg=81 ctermbg=00 cterm=NONE
hi NonText guifg=#49483E guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#66D9EF guibg=#111111 gui=NONE ctermfg=81 ctermbg=00 cterm=NONE
hi StatusLineNC guifg=#778899 guibg=#111111 gui=NONE ctermfg=103 ctermbg=00 cterm=NONE
hi Search guifg=#000000 guibg=#FFE972 gui=NONE ctermfg=00 ctermbg=221 cterm=NONE
hi VertSplit guifg=#75715E guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi LineNr guifg=#8F908A guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=#211F1C gui=NONE ctermfg=NONE ctermbg=00 cterm=NONE

" Messages
" --------------------------
hi Question guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#111111 guibg=#00ff5f gui=NONE ctermfg=233 ctermbg=47 cterm=NONE
hi WarningMsg guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE

" Spelling
" --------------------------
hi SpellBad guifg=#F8F8F2 guibg=NONE gui=undercurl ctermfg=15 ctermbg=NONE cterm=undercurl guisp=#F92782
hi SpellLocal guifg=#66D9EF guibg=NONE gui=undercurl ctermfg=81 ctermbg=NONE cterm=undercurl guisp=#66D9EF

" Tabline
" --------------------------
hi TabLine guifg=#8F908A guibg=#111111 gui=NONE ctermfg=102 ctermbg=00 cterm=NONE
hi TabLineSel guifg=#F8F8F2 guibg=#334455 gui=NONE ctermfg=15 ctermbg=59 cterm=NONE
hi TabLineFill guifg=#111111 guibg=#111111 gui=NONE ctermfg=233 ctermbg=00 cterm=NONE

" Misc
" --------------------------
hi SpecialKey guifg=#49483E guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Title guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Directory guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE

" Diff
" --------------------------
hi DiffAdd guifg=#F8F8F8 guibg=#253B22 gui=NONE ctermfg=15 ctermbg=22 cterm=NONE
hi DiffDelete guifg=#00ff5f guibg=#420E09 gui=NONE ctermfg=47 ctermbg=52 cterm=NONE
hi DiffChange guifg=#E6DB74 guibg=#420E09 gui=NONE ctermfg=40 ctermbg=52 cterm=NONE
hi DiffText guifg=#75715E guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE

" Folding
" --------------------------
hi Folded guifg=#778899 guibg=#211F1C gui=NONE ctermfg=103 ctermbg=00 cterm=NONE
hi FoldColumn guifg=NONE guibg=#211F1C gui=NONE ctermfg=NONE ctermbg=00 cterm=NONE

" Cursor colors
" --------------------------
hi ColorColumn guifg=NONE guibg=#00ff5f gui=NONE ctermfg=NONE ctermbg=47 cterm=NONE
hi CursorColumn guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLine guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Cursor guifg=#111111 guibg=#F8F8F2 gui=NONE ctermfg=233 ctermbg=15 cterm=NONE
hi Visual guifg=NONE guibg=#49483E gui=NONE ctermfg=NONE ctermbg=59 cterm=NONE
hi MatchParen guibg=#E6DB74 gui=underline ctermbg=black ctermfg=47 cterm=underline term=underline


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
hi Character guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi String guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Type guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Structure guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi TypeDef guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Identifier guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Function guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Statement guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Operator guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Label guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Keyword guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Preproc guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Include guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Define guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Macro guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Special guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Comment guifg=#5F87AF guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
hi SpecialComment guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Tag guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Underlined guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Todo guifg=#F8F8F2 guibg=#111111 gui=bold ctermfg=15 ctermbg=00 cterm=bold
hi Error guifg=#F8F8F2 guibg=#960020 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE

function! s:cppMonokaiAcornsFiletype()
  " vim-cpp-enhanced-highlight syntax
  " --------------------------
  hi cppSTLnamespace guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi cppSTLtype guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi cppModifier guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE

endfunction

function! s:javascriptMonokaiAcornsFiletype()
  " vim-javascript syntax
  " --------------------------
  hi jsStorageClass guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsOperator guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsBooleanTrue guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi jsBooleanFalse guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi jsModules guifg=#00ff5fguibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsModuleWords guifg=#00ff5fguibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsOf guifg=#00ff5fguibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsArgsObj guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsImportContainer guifg=#00ff5fguibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsExportContainer guifg=#00ff5fguibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsCommentTodo guifg=#778899 guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
  hi jsLineComment guifg=#5F87AF guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
  hi jsEnvComment guifg=#5F87AF guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
  hi jsCvsTag guifg=#5F87AF guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
  hi jsComment guifg=#5F87AF guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
  hi jsBlockComment guifg=#5F87AF guibg=NONE gui=italic ctermfg=240 ctermbg=NONE cterm=italic
  hi jsDocTags guifg=#778899 guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
  hi jsDocType guifg=#778899 guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
  hi jsDocTypeNoParam guifg=#778899 guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
  hi jsDocParam guifg=#778899 guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
  hi jsDocSeeTag guifg=#778899 guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
  hi jsTemplateVar guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsStringD guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsStringS guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsTemplateString guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsTemplateBraces guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi jsTaggedTemplate guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpCharClass guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpBoundary guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpBackRef guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpQuantifier guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpOr guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpMod guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpSpecial guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpGroup guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsRegexpString guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsNumber guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi jsFloat guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi jsObjectKey guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
  hi jsFunctionKey guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi jsDecorator guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi jsDecoratorFunction guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi jsStatement guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsConditional guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsRepeat guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsLabel guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsKeyword guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsClass guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsAsyncKeyword guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsGlobalObjects guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsGlobalNodeObjects guifg=#66D9EF guibg=NONE gui=italic ctermfg=81 ctermbg=NONE cterm=italic
  hi jsThis guifg=#66D9EF guibg=NONE gui=italic ctermfg=81 ctermbg=NONE cterm=italic
  hi jsExceptions guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsBuiltins guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsFutureKeys guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsHtmlEvents guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsTernaryIfOperator guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsGenerator guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsFuncName guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi jsFuncArgs guifg=#FD971F guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsFuncArgRest guifg=#00ff5f guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi jsArrowFunction guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi jsFuncCall guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE

  " Custom syntax
  " --------------------------
  hi javaScriptMethodCallWithoutArgs guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi javaScriptMethodCallWithArgs guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi javaScriptStaticFunctionWithArgs guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi javaScriptStaticFunctionWithoutArgs guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi javaScriptFunctionCallWithArgs guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi javaScriptFunctionCallWithoutArgs guifg=#A6E22E guibg=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE
  hi javaScriptArrowFunction guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE

endfunction

function! s:jsonMonokaiAcornsFiletype()
  " JSON Syntax
  " --------------------------
  hi jsonNull guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi jsonKeyword guifg=#F8F8F2 guibg=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
  hi jsonPadding guifg=#F8F8F2 guibg=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
  hi jsonBraces guifg=#F8F8F2 guibg=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE

endfunction

function! s:pursMonokaiAcornsFiletype()
  " Purescript Syntax
  " --------------------------
  hi purescriptImportKeyword guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi purescriptConstructor guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi purescriptConstructorDecl guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi purescriptTypeAlias guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
  hi purescriptModuleKeyword guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi purescriptWhere guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi purescriptData guifg=#F92782 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
  hi purescriptTypeVar guifg=#F8F8F2 guibg=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
  hi purescriptDelimiter guifg=#F8F8F2 guibg=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE

endfunction

augroup MONOKAI_ACORNS_FILETYPE_LOADER
  au!
  au Filetype purs call <SID>pursMonokaiAcornsFiletype()
  au Filetype cpp call <SID>cppMonokaiAcornsFiletype()
  au Filetype json call <SID>jsonMonokaiAcornsFiletype()
  au Filetype javascript call <SID>javascriptMonokaiAcornsFiletype()
augroup END
