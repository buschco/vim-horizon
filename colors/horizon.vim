if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Horizon] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'horizon'

" hi! Function cterm=italic gui=italic ctermfg=37 guifg=#25b0bc
hi! Function cterm=NONE gui=NONE ctermfg=37 guifg=#25b0bc

hi! Keyword cterm=NONE gui=NONE ctermfg=171 guifg=#b877db
hi! link Special Keyword
hi! link PreProc Keyword
hi! link Include Keyword
hi! link StorageClass Keyword
hi! link Structure Keyword

hi! Statement cterm=bold gui=bold ctermfg=171 guifg=#b877db

hi! Identifier cterm=NONE gui=NONE ctermfg=203 guifg=#e95678
hi! link Directory Identifier 
hi! link Character Identifier 
hi! link Label Identifier 

hi! Normal cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guibg=#1c1e26 guifg=#d5d8da
hi! Error cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1c1e26 guifg=#eC6a88
hi! Comment cterm=italic gui=italic ctermfg=242 guifg=#6c6f93
hi! CocFadeOut cterm=NONE gui=NONE ctermbg=59 ctermfg=48 guifg=#6c6f93
hi! Constant cterm=NONE gui=NONE ctermfg=209 guifg=#f09483
hi! Delimiter cterm=NONE gui=NONE ctermfg=44 guifg=#21bfc2
hi! String cterm=NONE gui=NONE ctermfg=209 guifg=#fab795
hi! link Type String

" https://github.com/unblevable/quick-scope
hi! QuickScopePrimary  cterm=NONE gui=NONE ctermfg=48 guifg=#09f7a0
hi! link QuickScopeSecondary QuickScopePrimary

hi! link CocHintSign Comment

"
hi! SpellBad cterm=undercurl gui=undercurl ctermbg=95 ctermfg=252 guisp=#eC6a88
hi! SpellCap cterm=undercurl gui=undercurl ctermbg=24 ctermfg=252 guisp=#25b0bc
hi! SpellLocal cterm=undercurl gui=undercurl ctermbg=23 ctermfg=203 guisp=#e95678
hi! SpellRare cterm=undercurl gui=undercurl ctermbg=97 ctermfg=252 guisp=#f09483

hi! ColorColumn cterm=NONE gui=NONE ctermbg=235 guibg=#2e303e
hi! CursorColumn cterm=NONE gui=NONE ctermbg=235 guibg=#2e303e
hi! CursorLine cterm=NONE gui=NONE ctermbg=235 guibg=#2e303e

hi! Cursor cterm=NONE gui=NONE ctermbg=242 ctermfg=242 guibg=#6c6f93 guifg=#6c6f93
hi! CursorLineNr cterm=NONE gui=NONE ctermbg=235 ctermfg=251 guibg=#2a3158 guifg=#cdd1e6

" vim dif
hi! DiffAdd cterm=NONE gui=NONE ctermbg=238 ctermfg=7 guibg=#45493e guifg=#c0c5b9
hi! DiffChange cterm=NONE gui=NONE ctermbg=23 ctermfg=241 guibg=#384851 guifg=#b3c3cc
hi! DiffDelete cterm=NONE gui=NONE ctermbg=52 ctermfg=167 guibg=#53343b guifg=#ceb0b6
hi! DiffText cterm=NONE gui=NONE ctermbg=24 ctermfg=233 guibg=#5b7881 guifg=#1c1e26

hi! Error cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1c1e26 guifg=#eC6a88
hi! ErrorMsg cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1c1e26 guifg=#ec6a88
hi! WarningMsg cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1c1e26 guifg=#eC6a88
hi! EndOfBuffer cterm=NONE gui=NONE ctermbg=233 ctermfg=236 guibg=#1c1e26 guifg=#2e303e
hi! NonText cterm=NONE gui=NONE ctermbg=233 ctermfg=233 guifg=#2e303e guibg=#1c1e26
hi! SpecialKey cterm=NONE gui=NONE ctermbg=203 ctermfg=235 guibg=#e95678 guifg=#2e303e

hi! Folded cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1c1e26 guifg=#6c6f93
hi! FoldColumn cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1c1e26 guifg=#6c6f93

hi! LineNr cterm=NONE gui=NONE ctermbg=233 ctermfg=239 guibg=#1c1e26 guifg=#6c6f93
hi! MatchParen cterm=NONE gui=NONE ctermbg=237 ctermfg=255 guibg=#3e445e guifg=#ffffff

hi! MoreMsg cterm=NONE gui=NONE ctermfg=48 guifg=#09f7a0
hi! Operator cterm=NONE gui=NONE ctermfg=37 guifg=#25b0bc
hi! Pmenu cterm=NONE gui=NONE ctermbg=NONE ctermfg=NONE guifg=#d5d8da guibg=#272c42
hi! NormalFloat cterm=NONE gui=NONE ctermbg=NONE ctermfg=NONE guifg=#d5d8da guibg=#272c42
hi! PmenuSbar cterm=NONE gui=NONE ctermbg=236 guibg=#3d425b
hi! PmenuSel cterm=NONE gui=NONE ctermbg=240 ctermfg=255 guibg=#5b6389 guifg=#eff0f4
hi! PmenuThumb cterm=NONE gui=NONE ctermbg=233 guibg=#1c1e26

hi! Question cterm=NONE gui=NONE ctermfg=150 guifg=#09f7a0

hi! QuickFixLine cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guibg=#272c42 guifg=#1c1e26
hi! Search cterm=NONE gui=NONE ctermbg=216 ctermfg=234 guibg=#e4aa80 guifg=#392313
hi! SignColumn cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1c1e26 guifg=#6c6f93
hi! StatusLine cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#17171b guifg=#818596
hi! StatusLineTerm cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#17171b guifg=#818596
hi! StatusLineNC cterm=reverse gui=reverse ctermbg=237 ctermfg=233 guibg=#3e445e guifg=#0f1117
hi! StatusLineTermNC cterm=reverse gui=reverse ctermbg=237 ctermfg=233 guibg=#3e445e guifg=#0f1117

hi! TabLine cterm=NONE gui=NONE ctermbg=245 ctermfg=234 guibg=#818596 guifg=#17171b
hi! TabLineFill cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#17171b guifg=#818596
hi! TabLineSel cterm=NONE gui=NONE ctermbg=234 ctermfg=247 guibg=#e95678 guifg=#272c42

hi! Title cterm=bold gui=bold ctermfg=37 guifg=#25b0bc
hi! Todo cterm=inverse,bold gui=inverse,bold ctermbg=59 ctermfg=48 guibg=#45493e guifg=#09f7a0
hi! Underlined cterm=underline gui=underline ctermfg=37 guifg=#25b0bc

hi! VertSplit cterm=bold gui=bold ctermbg=233 ctermfg=233 guibg=#0f1117 guifg=#0f1117
hi! Visual cterm=NONE gui=NONE ctermbg=236 guibg=#272c42

" Autocomplete menu for commands
hi! WildMenu cterm=NONE gui=NONE ctermbg=255 ctermfg=234 guibg=#d4d5db guifg=#17171b
" Legacy groups for official git.vim and diff.vim syntax
hi! diffAdded cterm=NONE gui=NONE ctermfg=48 guifg=#09f7a0
hi! diffRemoved cterm=NONE gui=NONE ctermfg=203 guifg=#eC6a88

hi! CtrlPMode1 cterm=NONE gui=NONE ctermbg=241 ctermfg=234 guibg=#5a5f72 guifg=#17171b


hi! GitGutterAdd cterm=NONE gui=NONE ctermbg=233 ctermfg=48 guibg=#1c1e26 guifg=#09f7a0
hi! GitGutterChange cterm=NONE gui=NONE ctermbg=233 ctermfg=109 guibg=#1c1e26 guifg=#e95678
hi! GitGutterChangeDelete cterm=NONE gui=NONE ctermbg=233 ctermfg=109 guibg=#1c1e26 guifg=#e95678
hi! GitGutterDelete cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1c1e26 guifg=#eC6a88


hi! link TSAttribute Identifier 
hi! link TSBoolean Constant
hi! link TSCharacter String
hi! link TSCharacterSpecial Keyword 
hi! link TSComment Comment
hi! link TSConditional Keyword
hi! link TSConstant Identifier 
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Keyword 
hi! link TSConstructor Function 

hi! link TSDebug Normal
hi! link TSDefine Normal
hi! link TSError Error
hi! link TSException Normal

hi! link TSField String
hi! link TSFloat Constant
hi! link TSNumber Constant

hi! link TSFunction Function 
hi! link TSFunctionCall Normal
hi! link TSMethod Function 
hi! link TSMethodCall Normal

hi! link TSFuncBuiltin Normal
hi! link TSFuncMacro Normal

hi! link TSInclude Keyword 
hi! link TSKeyword Keyword 
hi! link TSKeywordFunction Keyword 
hi! link TSKeywordOperator Keyword 
hi! link TSKeywordReturn Statement 
hi! link TSLabel Identifier 

hi! link TSNamespace Keyword 

hi! link TSNone Normal

hi! link TSOperator Delimiter

hi! link TSParameter Identifier 
hi! link TSParameterReference Identifier 
hi! link TSPreProc Comment

hi! link TSProperty Identifier 

hi! link TSPunctDelimiter Delimiter
hi! link TSPunctBracket Normal
hi! link TSPunctSpecial Keyword 

hi! link TSRepeat Keyword 
hi! link TSStorageClass Keyword 
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Keyword 
hi! link TSStringSpecial Keyword 
hi! link TSSymbol Keyword 

hi! link TSTag Function 
hi! link TSTagAttribute String

hi! link TSTagDelimiter Comment
hi! link TSText String

hi! link TSStrong Normal
hi! link TSEmphasis Normal
hi! link TSUnderline Normal
hi! link TSStrike Normal

hi! link TSTitle String
hi! link TSLiteral String

hi! link TSURI Operator 
hi! link TSMath String

hi! link TSTextReference Normal
hi! link TSEnvironment String
hi! link TSEnvironmentName String

hi! link TSNote Comment
hi! link TSWarning WarningMsg
hi! link TSDanger WarningMsg
hi! link TSTodo Comment

hi! link TSType Type  
hi! link TSTypeBuiltin Type  
hi! link TSTypeQualifier Keyword 
hi! link TSTypeDefinition Type  

hi! link TSVariable Identifier 
hi! link TSVariableBuiltin Constant


if has('nvim')
  let g:terminal_color_0 = '#1c1e26'
  let g:terminal_color_1 = '#eC6a88'
  let g:terminal_color_2 = '#09f7a0'
  let g:terminal_color_3 = '#fab795'
  let g:terminal_color_4 = '#25b0bc'
  let g:terminal_color_5 = '#f09483'
  let g:terminal_color_6 = '#e95678'
  let g:terminal_color_7 = '#1c1e26'
  let g:terminal_color_8 = '#d5d8da'
  let g:terminal_color_9 = '#ec6a88'
  let g:terminal_color_10 = '#6bdfe6'
  let g:terminal_color_11 = '#fab38e'
  let g:terminal_color_12 = '#21bfc2'
  let g:terminal_color_13 = '#b877db'
  let g:terminal_color_14 = '#95c4ce'
  let g:terminal_color_15 = '#d2d4de'
else
  let g:terminal_ansi_colors = ['#1c1e26', '#eC6a88', '#09f7a0', '#fab795', '#25b0bc', '#f09483', '#e95678', '#1c1e26', '#d5d8da', '#ec6a88', '#6bdfe6', '#fab38e', '#21bfc2', '#b877db', '#95c4ce', '#d2d4de']
endif
