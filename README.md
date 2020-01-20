# Vim & Readline

Why am I always exiting from insert mode? Because I don't know the [insert modes special keys](http://vimdoc.sourceforge.net/htmldoc/insert.html).

Why are those special keys so different from Readline? I don't know.

Some might say that I should be using Emacs, or Spacemacs or something. But, nah. I like Vim.


## Installation

Install with your favourite plugin manager (I use [Vundle](https://github.com/VundleVim/Vundle.vim)).


## Usage

On start-up, the [default key bindings](./plugin/default_maps.vim) will be loaded. I will endeavour to keep these defaults sane and avoid clashing with Vim's native key bindings.

You may of course extend or modify the defaults within your own personal configuration. Perhaps you'll append it to `~/.vimrc` or `~/.vim/plugins/vim-readline.vim`. How you go about it is up to you.

A complete list of functionality can be seen within [./plugin/default_maps.vim](./plugin/default_maps.vim).


## Development

The functions are spread across the files in `./plugins` with each file corresponding to a chapter of the [Readline manual](http://www.delorie.com/gnu/docs/readline/rlman_13.html).

- [Movement](./plugin/movement.vim)
- [Killing & Yanking](./plugin/killing_yanking.vim)
- [Changing Text](./plugin/changing_text.vim)
- [Miscellaneous](./plugin/misc.vim)

Not all of the functions have been written yet, but the intention is to make Vim functions with 100% identical behaviour as each of the Readline functions. The user may then use the default bindings offered, or customise the bindings to their own liking.

The Vim functions are namespaced as `Readline<Readline function to CamelCase>` and each of the functions is available as [user defined commands](http://vimdoc.sourceforge.net/htmldoc/map.html#:command).

For example for the Readline function of `end-of-line`, it can be ran with `:ReadlineEndOfLine` and bound with `imap <C-e> <C-O>:ReadlineEndOfLine<CR>`.

Described is a universal pattern for all functionality, regardless of how trivial the problem. The example of `end-of-line` could have been simply solved with `imap <C-e> <C-O>$` but being consistent is beneficial to the user. If they understand one function, they understand them all. There are no exceptions and the burden of complexity is shifted from the user to the developer where it belongs.
