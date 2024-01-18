" Vim syntax file
" Language:   CindyScript
" Maintainer: NXVZBGBFBEN <nxvzbgbfben@gmail.com>
" Repository: https://github.com/NXVZBGBFBEN/vim-cindyscript
" License:    MIT

if exists("b:current_syntax")
  finish
endif

syntax case match

syntax match cdsNumber "\%(\a\|\d\)\@<!\d*\w\@!"
highlight def link cdsNumber Number

syntax match cdsLoopCounter "\%(\a\|\d\)\@<!\%(#\)\%\(\a\|\d\)\@!"
highlight def link cdsLoopCounter Special

syntax match cdsConstant "\w\@<!\%(i\|pi\)\w\@!"
highlight def link cdsConstant Constant

syntax match cdsBoolean "\w\@<!\%(true\|false\)\w\@!"
highlight def link cdsBoolean Boolean

syntax match cdsOperator "\%(:\|\.\|°\|_\|\^\|*\|/\|+\|-\|!\|>\|<\|&\|%\|=\)"
syntax match cdsOperator "\%(==\|>=\|<=\|!=\|\~=\|\~<\|\~>\|\.\.\|++\|--\|\~\~\|:>\|<:\|:=\|->\)"
syntax match cdsOperator "\%(\~>=\|\~<=\|=:=\|\~!=\|:=_\)"
highlight def link cdsOperator Operator

syntax match cdsFunction "\a\%(\a\|\d\)*\%(\_s\)*("me=e-1,he=e-1
highlight def link cdsFunction Function

syntax region cdsString start=/"/ end=/"/
highlight def link cdsString String

syntax match cdsComment /\/\/.*/
highlight def link cdsComment Comment

let b:current_syntax="cindyscript"
