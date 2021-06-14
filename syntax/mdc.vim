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
syn match mdcComment "\v//.*$"

hi def link mdcConditional Conditional
hi def link mdcOperator Operator
hi def link mdcIO PreProc
hi def link mdcFlash Special
hi def link mdcKeyword keyword
hi def link mdcStructure Macro
hi def link mdcNumber String
hi def link mdcComment Comment

let b:current_syntax = 'mdc'
