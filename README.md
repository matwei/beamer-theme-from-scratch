# Beamer theme from scratch

This is the LaTeX Beamer theme from the question
[Design a custom Beamer theme from scratch](https://tex.stackexchange.com/questions/146529)
at tex.stackexchange.com.

The theme is taken nearly unchanged from Claudio Fiandrino's answer
and complemented with a Makefile and a bash script that you can use
get started developing your own theme for Beamer.

Supposed your new theme shall be named 'mynewtheme',
simply call

```
bash createnew.bash mynewtheme
```

Then change the line

```
\usetheme{texsx}
```

in *example.tex* to

```
\usetheme{mynewtheme}
```

and you can start by changing the files named *beamer\*thememynewtheme.sty*.
