if exists('b:current_syntax')
    finish
endif

syn keyword mlogConditional jump end
syn keyword mlogIO read write draw print
syn keyword mlogFlash drawflush printflush
syn keyword mlogKeyword getlink control radar sensor ubind ucontrol uradar ulocate noop
syn keyword mlogSubCommand ore building spawn damaged core storage generator turret factory repair rally battery resupply reactor idle stop move approach boost pathfind target targetp itemDrop itemTake payDrop payTake mine flag build getBlock within always add sub mul div idiv mod pow equal notEqual land lessThan lessThanEq greaterThan greaterThanEq strictEqual shl shr or and xor not max min angle len noise abs log log10 sin cos tan floor ceil sqrt rand distance health shield armor maxHealth any enemy ally player attacker flying boss ground enabled shoot shootp configure color clear color stroke line rect lineRect poly linePoly triangle image
syn keyword mlogStructure set
syn keyword mlogOperator op
syn match mlogNumber "\v<\d+>"
syn match mlogNumber "\v<\d+\.\d+>"
syn keyword mlogBool true false
syn keyword mlogTodos TODO XXX FIXME NOTE contained
syn match mlogComment "\v#.*$" contains=mdcTodos
syn match mlogAt "@[a-zA-Z0-9]*"

syntax region mlogString start=/"/ end=/"/ oneline contains=mlogInterpolatedWrapper
syntax region mlogInterpolatedWrapper start="\v\\\(\s*" end="\v\s*\)" contained containedin=mlogString contains=mlogInterpolatedString
syntax match mlogInterpolatedString "\v\w+(\(\))?" contained containedin=mlogInterpolatedWrapper


hi def link mlogConditional Conditional
hi def link mlogOperator Operator
hi def link mlogIO PreProc
hi def link mlogFlash Special
hi def link mlogKeyword keyword
hi def link mlogStructure Macro
hi def link mlogTodos Todo
hi def link mlogAt Statement
hi def link mlogComment Comment
hi def link mlogSubCommand Operator
hi def link mlogNumber Number
hi def link mlogString String
hi def link mlogBool Boolean
highlight default link mlogInterpolatedWrapper Delimiter

let b:current_syntax = 'mlog'
