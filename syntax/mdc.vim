if exists('b:current_syntax')
    finish
endif

syn keyword mdcConditional jump end
syn keyword mdcIO read write draw print
syn keyword mdcFlash drawflush printflush
syn keyword mdcKeyword getlink control radar sensor ubind ucontrol uradar ulocate noop
syn keyword mdcSubCommand ore building spawn damaged core storage generator turret factory repair rally battery resupply reactor idle stop move approach boost pathfind target targetp itemDrop itemTake payDrop payTake mine flag build getBlock within always add sub mul div idiv mod pow equal notEqual land lessThan lessThanEq greaterThan greaterThanEq strictEqual shl shr or and xor not max min angle len noise abs log log10 sin cos tan floor ceil sqrt rand distance health shield armor maxHealth any enemy ally player attacker flying boss ground enabled shoot shootp configure color clear color stroke line rect lineRect poly linePoly triangle image
syn keyword mdcStructure set
syn keyword mdcOperator op
syn match mdcNumber "\v<\d+>"
syn match mdcNumber "\v<\d+\.\d+>"
syn keyword mdcBool true false
syn keyword mdcTodos TODO XXX FIXME NOTE contained
syn match mdcComment "\v#.*$" contains=mdcTodos
syn match masmAt "@[a-zA-Z0-9]*"

syntax region mdcString start=/"/ end=/"/ oneline contains=mdcInterpolatedWrapper
syntax region mdcInterpolatedWrapper start="\v\\\(\s*" end="\v\s*\)" contained containedin=mdcString contains=mdcInterpolatedString
syntax match mdcInterpolatedString "\v\w+(\(\))?" contained containedin=mdcInterpolatedWrapper


hi def link mdcConditional Conditional
hi def link mdcOperator Operator
hi def link mdcIO PreProc
hi def link mdcFlash Special
hi def link mdcKeyword keyword
hi def link mdcStructure Macro
hi def link mdcTodos Todo
hi def link masmAt Statement
hi def link mdcComment Comment
hi def link amndSubcommands vimSynType
hi def link mdcNumber Number
hi def link mdcString String
hi def link mdcBool Boolean
highlight default link mdcInterpolatedWrapper Delimiter

let b:current_syntax = 'mdc'
