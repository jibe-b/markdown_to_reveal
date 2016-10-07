# Forewords

Fork of #silentbicycle/markdown_to_reveal. See this repo for general use.

This repo is there to develop a flow from markdown to revealjs slides, used in the [galaxy Training Network tutorials](https://github.com/bgruening/training-material).

How-to commands are relative to the galaxy training material repo (for the moment).

# How-to

## Convert a markdown file to html slides (using revealjs)

> cd markdown\_to\_reveal

> tutorial-to-slides.sh \<filename without extension\>

This command will take the markdown soure and produce slides. Look at the source and destination directories in the bash script.


## Modify slides without modifying the markdown source

An intermediary markdown file is produces (slides-text.md) and can be modified.

Applying the command to this file will produce slides.

/!\ if you don't change the names of files, modifications will be lost at the next execution.

## Syntax

Markdown titles are used as slides titles (first level => new slide ; second level => subtitle in the slide).

Example:

> # Title of the slide

Highlighted content is kept in the slides, rest is removed.

Example:

> This part will not be in the slide. \*\*But this part will be\*\*.

Anything can be highligted such as references to images or links.

# Development

This is work in progress.

Please discuss on the galaxy training material issue

Anything can be highligted such as references to images or links.

# Development

This is work in progress.

Please discuss on the galaxy training material [issue](https://github.com/bgruening/training-material/issues/128). 






