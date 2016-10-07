#!/bin/sh

cat $1.md |\
sed   -e 's_\!\[[^]]*\]\ *([^)]*)_**&**_g' \
      -e 's_\*\*[^*]*\*\*_&\\\\\\\n_g' \
      -e 's_:grey\ question:_<i class="fa fa-question-circle" aria-hidden="true"></i>_g'\
      -e 's_:dart:_<i class="fa fa-bullseye" aria-hidden="true"></i>_g'\
      -e 's_:heavy\_check\_mark:_\[X\]_g'\
      -e 's_:[^:]*:__g'  |\
sed   -e 's_^[^*^#]*$__'                  \
      -e 's_\([^\*]*\)\*\*\([^\*]*\)\*\*\(\\\\\\\)_\2\3 _; ' \
      -e '/\([^*]*\)\*\([^*]\)/d ;' \
      -e '/\([^*]\)\*\([^*]*\)/d ;'|\
sed   -e '{:a;N;$!ba;s_\\\\\\__g;}'       \
> $1-slides-text.md

cat intro-slide.md $1-slides-text.md > $1-slides.md

make html FILE=$1-slides

mv $1-slides.html "$(echo $1 | sed 's_tutorials_slides_')".html

#rm -f $1-slides-text.md $1-slides.md 

