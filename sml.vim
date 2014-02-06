" Vim syntax file 
" Language: Sparqlify Mapping Language
" Maintainer: Patrick Westphal

" For version 5.x: Clear all syntax items
" For versions greater than 6.x: Quit when a syntax file was already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
    endif

" prefix definitions and usage
syntax match nsPrefixExtension '\(:\)\@<=[a-zA-Z0-9_-]*'
syntax match nsPrefix '\([a-zA-Z_][a-zA-Z0-9_-]*\)\(:\)\@=' nextgroup=nsPrefixExtension
" basic keywords
syntax case ignore
syntax match viewname '\(view\_s\+\)\@<=\([A-Za-z0-9_-]\+\)\(\_s\+as\)\@=' skipwhite
syntax keyword l1Keyword PREFIX nextgroup=nsPrefix skipwhite
syntax keyword l1Keyword CONSTRUCT WITH CONSTRAIN FROM CREATE VIEW AS
syntax match var '?[A-Za-z_][A-Za-z0-9_-]*' skipwhite
syntax case match

" strings
syntax region string start='"' end='"'
syntax region string start="'" end="'"

" logical table definitions
syntax case ignore
syntax match logTblDef '\(from\_s\+\)\@<=\([A-Za-z0-9_-]\+\)' skipwhite
syntax case match
syntax region logTblDef start='\[\[' end='\]\]' fold

" comments
syntax match comment '#.*$' skipwhite
syntax match comment '//.*$' skipwhite
syntax region comment start='/\*' end='\*/' fold

" URIs
syntax match nsURL '<.*>' skipwhite

"functions
syntax keyword function uri plainLiteral typedLiteral concat bNode
syntax keyword constraint prefix


highlight def link nsURL Constant
highlight def link nsPrefix Define
highlight def link nsPrefixExtension Special
highlight def link l1Keyword Statement
highlight def link string String
highlight def link var PreProc
highlight def link function Function
highlight def link constraint Conditional
highlight def link viewname SpecialChar
highlight def link logTblDef Structure

let b:current_syntax = "sml"

