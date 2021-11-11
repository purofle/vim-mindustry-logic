" needed to comment out code
setlocal commentstring=#\ %s
" @-@ adds the literal @ to iskeyword
" with this, @ is not breaking words anymore so you can move over @unit with
" one word jump
setlocal iskeyword+=@-@
