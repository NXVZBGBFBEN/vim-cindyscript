" Vim syntax file
" Language:   CindyScript
" Maintainer: NXVZBGBFBEN <nxvzbgbfben@gmail.com>
" Repository: https://github.com/NXVZBGBFBEN/vim-cindyscript
" License:    MIT

if exists("b:current_syntax")
  finish
endif

syntax case match

syntax match cdsOperator "\%(:\|\.\|°\|_\|\^\|*\|/\|+\|-\|!\|>\|<\|&\|%\|=\|,\|;\)"
syntax match cdsOperator "\%(==\|>=\|<=\|!=\|\~=\|\~<\|\~>\|\.\.\|++\|--\|\~\~\|:>\|<:\|:=\|->\)"
syntax match cdsOperator "\%(\~>=\|\~<=\|=:=\|\~!=\|:=_\)"
highlight def link cdsOperator Operator

syntax match cdsConstant "\%(i\|pi\)"
highlight def link cdsConstant Constant

syntax match cdsBoolean "\%(true\|false\)"
highlight def link cdsBoolean Boolean

syntax region cdsString start=/"/ end=/"/
highlight def link cdsString String

syntax match cdsComment /\/\/.*/
highlight def link cdsComment Comment

let b:current_syntax="cindyscript"
