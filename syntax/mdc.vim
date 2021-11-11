if exists('b:current_syntax')
    finish
endif

syn keyword mdcConditional jump end
syn keyword mdcIO read write draw print
syn keyword mdcFlash drawflush printflush
syn keyword mdcKeyword getlink control radar sensor
syn keyword mdcStructure set
syn keyword mdcOperator op
syn match mdcNumber "\v\d*"
syn keyword mdcTodos TODO XXX FIXME NOTE contained
syn match mdcComment "\v#.*$" contains=mdcTodos
syn match masmAt "@[a-zA-Z0-9]*"

hi def link mdcConditional Conditional
hi def link mdcOperator Operator
hi def link mdcIO PreProc
hi def link mdcFlash Special
hi def link mdcKeyword keyword
hi def link mdcStructure Macro
hi def link mdcNumber String
hi def link mdcTodos Todo
hi def link masmAt Statement
hi def link mdcComment Comment

let b:current_syntax = 'mdc'
