" KILLING AND YANKING
" http://www.delorie.com/gnu/docs/readline/rlman_17.html

" kill-line (C-k)
" Kill the text from point to the end of the line.
function! ReadlineKillLine()
  call feedkeys("\<C-O>C")
endfunction
command! ReadlineKillLine call ReadlineKillLine()

" backward-kill-line (C-x Rubout)
" Kill backward to the beginning of the line.
command! ReadlineBackwardKillLine call ReadlineUnixLineDiscard()

" unix-line-discard (C-u)
" Kill backward from the cursor to the beginning of the current line.
function! ReadlineUnixLineDiscard()
  call feedkeys("\<Esc>d^xi")
endfunction
command! ReadlineUnixLineDiscard call ReadlineUnixLineDiscard()

" kill-whole-line ()
" Kill all characters on the current line, no matter where point is. By
" default, this is unbound.
function! ReadlineKillWholeLine()
  call feedkeys("\<Esc>ddO")
endfunction

" kill-word (M-d)
" Kill from point to the end of the current word, or if between words, to the
" end of the next word. Word boundaries are the same as forward-word.
function! ReadlineKillWord()
  if col(".") != col("$")-1           " When we are not at the end of the line
    call feedkeys("\<C-O>de")
  endif
endfunction
command! ReadlineKillWord call ReadlineKillWord()

" backward-kill-word (M-DEL)
" Kill the word behind point. Word boundaries are the same as backward-word.
function! ReadlineBackwardKillWord()
  if col(".") == col("$")-1           " When we are at the end of the line
    call feedkeys("\<Esc>dbxa")
  else
    call feedkeys("\<Esc>ldbi")
  endif
endfunction
command! ReadlineBackwardKillWord call ReadlineBackwardKillWord()

" unix-word-rubout (C-w)
" Kill the word behind point, using white space as a word boundary. The killed
" text is saved on the kill-ring.
function! ReadlineUnixWordRubout()
  if col(".") == col("$")-1           " When we are at the end of the line
    call feedkeys("\<C-O>dB\<C-O>x")
  else
    call feedkeys("\<C-O>dB")
  endif
endfunction
command! ReadlineUnixWordRubout call ReadlineUnixWordRubout()

" delete-horizontal-space ()
" Delete all spaces and tabs around point. By default, this is unbound.

" kill-region ()
" Kill the text in the current region. By default, this command is unbound.

" copy-region-as-kill ()
" Copy the text in the region to the kill buffer, so it can be yanked right
" away. By default, this command is unbound.

" copy-backward-word ()
" Copy the word before point to the kill buffer. The word boundaries are the
" same as backward-word. By default, this command is unbound.

" copy-forward-word ()
" Copy the word following point to the kill buffer. The word boundaries are
" the same as forward-word. By default, this command is unbound.

" yank (C-y)
" Yank the top of the kill ring into the buffer at point.
"imap <C-y> <C-O>u

" yank-pop (M-y)
" Rotate the kill-ring, and yank the new top. You can only do this if the
" prior command is yank or yank-pop.
