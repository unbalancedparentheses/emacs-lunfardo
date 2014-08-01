lunfardo
========

![](https://raw.githubusercontent.com/unbalancedparentheses/lunfardo/master/images/buenosaires.jpg)

In the mid XIX century, Buenos Aires was pullulating with immigrants, mainly Spanish and Italian. Many of them were impoverished and blended in with 
the already-poor locals: the descendents of aborigins and african slaves.

From the amalgam of the newcomers' languages with Argentina's 'castilian', emerged ther slang known as Lunfardo.

It was created by criminals, mainly to avoid being understood by prison guards.

It was disseminated thanks to 'tango' lyrics, a music which was born as suburban, marginal and was swiftly forbidden by the Church and higher classes. Tango was played and danced in ports, brothels, bars and prisons.

Nowadays, Lunfardo has blended into the castilian language and is part of its idiosincrasy.

---

## ready, steady, go!

Assuming you're using an Unix-like OS (`*BSD`, `GNU/Linux`, `OS X`, `Solaris`,
etc), you already have Emacs 24 installed, as well as `git` & `curl` you
can skip the whole manual and just type in your favorite shell the
following command:

```bash
curl -L https://raw.githubusercontent.com/unbalancedparentheses/lunfardo/master/utils/installer.sh | sh
```


### got emacs?
![](https://raw2.github.com/unbalancedparentheses/lunfardo/master/images/text_editors.jpg)

## key bindings
M-SPC reduces the space between words to just one space. This is what I would've used if the point was between the words and I wanted to delete the extra space separating the words.

M-\ removes all horizontal space. This will join two words separated by space.

### Features

Here's a list of functionality provided by [Lunfardo](https://github.com/bbatsov/projectile):

Keybinding         | Description
-------------------|------------------------------------------------------------
<kbd>C-c p f</kbd> | Display a list of all files in the project. With a prefix argument it will clear the cache first.
<kbd>C-c p d</kbd> | Display a list of all directories in the project. With a prefix argument it will clear the cache first.
<kbd>C-c p T</kbd> | Display a list of all test files(specs, features, etc) in the project.
<kbd>C-c p g</kbd> | Run grep on the files in the project.
<kbd>C-c p b</kbd> | Display a list of all project buffers currently open.
<kbd>C-c p o</kbd> | Runs `multi-occur` on all project buffers currently open.
<kbd>C-c p r</kbd> | Runs interactive query-replace on all files in the projects.
<kbd>C-c p i</kbd> | Invalidates the project cache (if existing).
<kbd>C-c p R</kbd> | Regenerates the projects `TAGS` file.
<kbd>C-c p k</kbd> | Kills all project buffers.
<kbd>C-c p D</kbd> | Opens the root of the project in `dired`.
<kbd>C-c p e</kbd> | Shows a list of recently visited project files.
<kbd>C-c p a</kbd> | Runs `ack` on the project. Requires the presence of `ack-and-a-half`.
<kbd>C-c p c</kbd> | Runs a standard compilation command for your type of project.
<kbd>C-c p p</kbd> | Runs a standard test command for your type of project.
<kbd>C-c p z</kbd> | Adds the currently visited to the cache.
<kbd>C-c p s</kbd> | Display a list of known projects you can switch to.

Lunfardo adds some extra keybindings:

Keybinding         | Command
-------------------|------------------------------------------------------------
<kbd>Super-f</kbd> | Find file in project
<kbd>Super-d</kbd> | Find directory in project
<kbd>Super-g</kbd> | Run grep on project
<kbd>Super-p</kbd> | Switch projects
