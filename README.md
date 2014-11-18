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

Keybinding            | Command
----------------------|------------------------------------------------------------
<kbd>Super-f</kbd>    | Find file
<kbd>Super-p</kbd>    | Switch projects
<kbd>Super-P</kbd>    | Find file inside project
<kbd>Super-g</kbd>    | Run ag incrementally. You need to have [ag](https://github.com/ggreer/the_silver_searcher) installed. Execute <kbd>C-z</kbd> to see the file content temporarily
<kbd>Super-l</kbd>    | Go to line
<kbd>Super-d</kbd>    | Mark next like this
<kbd>Super-e</kbd>    | Expand selection
<kbd>Super-u</kbd>    | Undo tree
<kbd>Super-T</kbd>    | Git timemachine
<kbd>Super-B</kbd>    | Browse file in github
<kbd>Super-m</kbd>    | Magit status
<kbd>Ctrl-x space</kbd> | Region mark mode

#it's a kind of [magit](https://github.com/magit/magit)
- [Learn you some magit](http://www.masteringemacs.org/article/introduction-magit-emacs-mode-git)
- [Magit Cheatsheet](http://daemianmack.com/magit-cheatsheet.html)
- [Meet Magit](http://vimeo.com/2871241)
