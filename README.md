sml.vim
=============

A vim script syntax highlighting definition for the Sparqlification Mapping Language (SML).
See http://sml.aksw.org  for more details.

How to Use
----------

If you're using vim (on Unix-like systems), there should be a `.vim/` directory in your home directory. To use the SML syntax highlighting script you have to copy the `sml.vim` file (or clone this repository) to `~/.vim/syntax/`. Maybe you have to create the `syntax` directory first. To connect this syntax highlighting definitions with SML files, you have to add the following lines to your `~/.vimrc` file:

```
au BufNewFile,BufRead *.sparqlify setfiletype sml
au BufNewFile,BufRead *.sml setfiletype sml
```

Now, if you open SML files (having the recommended filename suffixes *.sml or *.sparqlify) they should be syntax highlighted.
