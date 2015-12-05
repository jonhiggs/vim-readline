<img align="right" src="./images/vimman.png">

# Vim + Readline = \<THIS!!!\>

I love [Vim](http://www.vim.org/).
I love [Readline](http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html).

Why am I always exiting from insert mode? Because I don't know the [insert modes special keys](http://vimdoc.sourceforge.net/htmldoc/insert.html).

Why are those special keys so different from Readline?

Some might say that I should be using Emacs; but I'm a Vim Man. I say, READLINE IN INSERT MODE!

Together, lets make it happen!


**UPDATE 04/12/15:** A lot of the movement, killing, yanking and changing is done. This should be complete enough for most people but it can still be better.


## Installation

1. Use whatever plugin manager you like (I like [Vundle](https://github.com/VundleVim/Vundle.vim)).

2. Configure the maps you'd like to use. You can use the default readline maps from [default.vim](./default.vim).



## Call To Action

I've scraped together all the commands that Readline supports and put together the framework to fill in. Some of the commands will not be relevant for Vim but I've left them in for the sake of completeness.

- [Changing Text](./plugin/changing_text.vim)
- [Killing & Yanking](./plugin/killing_yanking.vim)
- [Macros](./plugin/macros.vim)
- [Miscellaneous](./plugin/misc.vim)
- [Movement](./plugin/movement.vim)
- [Typing For You](./plugin/type_for_you.vim)



---

If you are interested, here are the [Readline Man Pages](http://www.delorie.com/gnu/docs/readline/rlman_13.html).

If you're a Readline feen like me, perhaps you'll find my [config](https://github.com/jonhiggs/dotfiles/blob/master/Karabiner/private.xm://github.com/jonhiggs/dotfiles/blob/master/Karabiner/private.xml) for [Karabiner](https://pqrs.org/osx/karabiner/) interesting.
