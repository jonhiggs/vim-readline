" COMMANDS FOR MOVING
" http://www.delorie.com/gnu/docs/readline/rlman_14.html

"beginning-of-line (C-a)
"Move to the start of the current line.
function! ReadlineBeginningOfLine()
  call feedkeys("\<C-O>^")
endfunction
command! ReadlineBeginningOfLine call ReadlineBeginningOfLine()

"end-of-line (C-e)
"Move to the end of the line.
imap <C-e> <C-O>$

function! ReadlineEndOfLine()
  call feedkeys("\<C-O>$")
endfunction
command! ReadlineEndOfLine call ReadlineEndOfLine()

"forward-char (C-f)
"Move forward a character.
function! ReadlineForwardChar()
  call feedkeys("\<Right>")
endfunction
command! ReadlineForwardChar call ReadlineForwardChar()

"backward-char (C-b)
"Move back a character.
function! ReadlineBackwardChar()
  call feedkeys("\<Left>")
endfunction
command! ReadlineBackwardChar call ReadlineBackwardChar()

"forward-word (M-f)
"Move forward to the end of the next word. Words are composed of letters and
"digits.
function! ReadlineForwardWord()
  call feedkeys("\<Esc>ea")
endfunction
command! ReadlineForwardWord call ReadlineForwardWord()

"backward-word (M-b)
"Move back to the start of the current or previous word. Words are composed of
"letters and digits.
function! ReadlineBackwardWord()
  if getline(".")[col(".")-2] =~ '[^a-zA-Z0-9]'  " if we stopped at punctuation
    call feedkeys("\<Left>")
  endif
  call feedkeys("\<C-O>b")
endfunction
command! ReadlineBackwardWord call ReadlineBackwardWord()

"clear-screen (C-l)
"Clear the screen and redraw the current line, leaving the current line at the
"top of the screen.
"<NOT NEEDED>

"redraw-current-line ()
"Refresh the current line. By default, this is unbound.
"<Paste>
"<NOT NEEDED>
