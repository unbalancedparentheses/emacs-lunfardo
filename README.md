lunfardo
========
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/unbalancedparentheses/lunfardo?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![](https://raw.githubusercontent.com/unbalancedparentheses/lunfardo/master/images/buenosaires.jpg)

In the mid XIX century, Buenos Aires was pullulating with immigrants, mainly Spanish and Italian. Many of them were impoverished and blended in with 
the already-poor locals: the descendents of aborigins and african slaves.

From the amalgam of the newcomers' languages with Argentina's 'castilian', emerged ther slang known as Lunfardo.

It was created by criminals, mainly to avoid being understood by prison guards.

It was disseminated thanks to 'tango' lyrics, a music which was born as suburban, marginal and was swiftly forbidden by the Church and higher classes. Tango was played and danced in ports, brothels, bars and prisons.

Nowadays, Lunfardo has blended into the castilian language and is part of its idiosincrasy.
![](https://raw.githubusercontent.com/unbalancedparentheses/lunfardo/master/images/lunfardo.png)

---

## ready, steady, go!

Assuming you're using an Unix-like OS (`*BSD`, `GNU/Linux`, `OS X`, `Solaris`,
etc), you already have Emacs 24 installed, as well as `git` & `curl` you
can skip the whole manual and just type in your favorite shell the
following command:

```bash
curl -L http://git.io/Rr3kZw | sh
```

### haven't you used emacs before?
![](http://sachachua.com/blog/wp-content/uploads/2013/05/How-to-Learn-Emacs-v2-Large.png)

- Being productive with emacs [part I](http://web.psung.name/emacs/2009/part1.html) and [part II](http://web.psung.name/emacs/2009/part2.html)
- [Emacs Mini Manual](https://tuhdo.github.io/emacs-tutor.html)
- [emacs4developers](https://github.com/pierre-lecocq/emacs4developers)
- [awesome emacs](https://github.com/emacs-tw/awesome-emacs)
- [Why Atom Can’t Replace Vim](https://medium.com/@mkozlows/why-atom-cant-replace-vim-433852f4b4d1)

### basic elisp
- [elisp guide](https://github.com/chrisdone/elisp-guide)
- [When to use 'quote in Lisp](https://stackoverflow.com/questions/134887/when-to-use-quote-in-lisp)

### if you come from the best modal editor
- [Emacs as My <Leader>: Vim Survival Guide](https://bling.github.io/blog/2013/10/27/emacs-as-my-leader-vim-survival-guide/)
- [Vim in Emacs Bootstrap](https://bling.github.io/blog/2013/10/27/emacs-as-my-leader-vim-survival-guide/)
- [Evil Mode: How I Switched From VIM to Emacs](http://blog.jakubarnold.cz/2014/06/23/evil-mode-how-to-switch-from-vim-to-emacs.html)

###it's a kind of [magit](https://github.com/magit/magit)
- [Learn you some magit](http://www.masteringemacs.org/article/introduction-magit-emacs-mode-git)
- [Magit Cheatsheet](http://daemianmack.com/magit-cheatsheet.html)
- [Meet Magit](http://vimeo.com/2871241)

### emacs package growth
![](http://tracker.endlessparentheses.com/newPackagePlotEver.png)

That is all you need!

### got emacs?
![](https://raw.githubusercontent.com/unbalancedparentheses/lunfardo/master/images/text_editors.jpg)

## key bindings
M-SPC reduces the space between words to just one space. This is what I would've used if the point was between the words and I wanted to delete the extra space separating the words.

M-\ removes all horizontal space. This will join two words separated by space.

### Features

Here's a list of key bindings

Keybinding              | Command
------------------------|------------------------------------------------------------
<kbd>Ctrl-g</kbd>       | Cancel partially typed or accidental command
<kbd>fd</kbd>           | Press fd quickly to escape from insert state and everything else thanks to [evil escape](https://github.com/syl20bnr/evil-escape)
<kbd>Super-O</kbd>      | Open file. <kbd>C-z</kbd> or <kbd>TAB</kbd> or will  performs the default action, which is different depending on the context. When you are on a file it will show only this file-name in the helm buffer. On a directory it will step down into this directory to continue searching in it. <kbd>C-.</kbd>will navigate to the root of current dir or to precedent level of dir.
<kbd>Super-f</kbd>      | Find in file
<kbd>Super-F</kbd>      | Run ag incrementally. You need to have [ag](https://github.com/ggreer/the_silver_searcher) installed. Execute <kbd>C-z</kbd> to see the file content temporarily
<kbd>Super-z</kbd>      | Undo
<kbd>Super-r</kbd>      | Redo
<kbd>Super-u</kbd>      | Undo tree
<kbd>Super-I</kbd>      | Opens init file
<kbd>Super-Y</kbd>      | Copy region to private gist
<kbd>Super-p</kbd>      | Find file inside project
<kbd>Super-P</kbd>      | Find file inside project or switch projects
<kbd>Super-l</kbd>      | Go to line
<kbd>Super-e</kbd>      | Expand selection
<kbd>Super-d</kbd>      | Mark next like this
<kbd>Super-u</kbd>      | Undo tree
<kbd>Super-T</kbd>      | Git timemachine
<kbd>Super-B</kbd>      | Browse file in github
<kbd>Super-t</kbd>      | Interface to both Semantic and Imenu at the same time 
<kbd>Super-m</kbd>      | Magit status
<kbd>Super-G</kbd>      | Google suggest
<kbd>Super-H</kbd>      | Describe bindings
<kbd>Ctrl-x space</kbd> | Region mark mode

#### Window and buffer management
Keybinding            | Command
----------------------|------------------------------------------------------------
<kbd>Ctrl-x 0</kbd>     | Delete window
<kbd>Ctrl-x 1</kbd>     | Delete all other windows
<kbd>Ctrl-x 2</kbd>     | Split window vertically
<kbd>Ctrl-x 3</kbd>     | Split window horizontally
<kbd>Ctrl-x +</kbd>     | Balance windows
<kbd>Ctrl-Tab</kbd>     | Switch to previous buffer
<kbd>Super-up</kbd>     | Move buffer up
<kbd>Super-down</kbd>   | Move buffer down
<kbd>Super-left</kbd>   | Move buffer left
<kbd>Super-right</kbd>  | Move buffer right
