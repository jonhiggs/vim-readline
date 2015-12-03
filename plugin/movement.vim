" COMMANDS FOR MOVING
" http://www.delorie.com/gnu/docs/readline/rlman_14.html

"beginning-of-line (C-a)
"Move to the start of the current line.
imap <C-a> <C-O>^

"end-of-line (C-e)
"Move to the end of the line.
imap <C-e> <C-O>$

"forward-char (C-f)
"Move forward a character.

"backward-char (C-b)
"Move back a character.

"forward-word (M-f)
"Move forward to the end of the next word. Words are composed of letters and digits.
imap <M-f> <C-O>e

"backward-word (M-b)
"Move back to the start of the current or previous word. Words are composed of letters and digits.
imap <M-b> <C-O>b

"clear-screen (C-l)
"Clear the screen and redraw the current line, leaving the current line at the top of the screen.

"redraw-current-line ()
"Refresh the current line. By default, this is unbound.
"<Paste>
