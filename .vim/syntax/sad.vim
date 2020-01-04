"===============================================================================
" my sad syntax file
" Author: Qijian Zhang
" Date: 2020-01-04
"===============================================================================

syntax clear

syntax case ignore
syntax match sadIdentifier /\(_\|[a-z0-9-]\)\+/
syntax match sadOperator /\[/
syntax match sadOperator /\]/
syntax match sadOperator /{/
syntax match sadOperator /}/
syntax match sadEscapeSeq /\\./ contained
syntax region sadString start=/'/ skip=/\\'/ end=/'/ contains=sadEscapeSeq
syntax region sadString start=/"/ skip=/\\"/ end=/"/ contains=sadEscapeSeq

highlight link sadIdentifier Identifier
highlight link sadOperator Operator
highlight link sadString String
