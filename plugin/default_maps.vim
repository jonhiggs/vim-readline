" VIM MAP                 " VIM-READLINE FUNCTION
""""""""""          <C-O>:ReadlineKillWholeLine<CR>
inoremap <C-M-]>    <C-O>:ReadlineCharacterSearchBackward<CR>
inoremap <C-M-j>    <C-O>:ReadlineViEditingMode<CR>
inoremap <C-]>      <C-O>:ReadlineCharacterSearch<CR>
inoremap <C-a>      <C-O>:ReadlineBeginningOfLine<CR>
inoremap <C-b>      <C-O>:ReadlineBackwardChar<CR>
inoremap <C-d>      <C-O>:ReadlineDeleteChar<CR>
inoremap <C-e>      <C-O>:ReadlineEndOfLine<CR>
inoremap <C-f>      <C-O>:ReadlineForwardChar<CR>
inoremap <C-k>      <C-O>:ReadlineKillLine<CR>
inoremap <C-t>      <C-O>:ReadlineTransposeChars<CR>
inoremap <C-u>      <C-O>:ReadlineUnixLineDiscard<CR>
inoremap <C-w>      <C-O>:ReadlineUnixWordRubout<CR>
inoremap <C-x><BS>  <C-O>:ReadlineBackwardKillLine<CR>
inoremap <M-BS>     <C-O>:ReadlineBackwardKillWord<CR>
inoremap <M-b>      <C-O>:ReadlineBackwardWord<CR>
inoremap <M-c>      <C-O>:ReadlineCapitalizeWord<CR>
inoremap <M-d>      <C-O>:ReadlineKillWord<CR>
inoremap <M-f>      <C-O>:ReadlineForwardWord<CR>
inoremap <M-l>      <C-O>:ReadlineDowncaseWord<CR>
inoremap <M-r>      <C-O>:ReadlineRevertLine<CR>
inoremap <M-t>      <C-O>:ReadlineTransposeWords<CR>
inoremap <M-u>      <C-O>:ReadlineUpcaseWord<CR>
inoremap <M-#>      <C-O>:ReadlineInsertComment<CR>

cmap     <C-a>      <Home>
cmap     <C-e>      <End>
