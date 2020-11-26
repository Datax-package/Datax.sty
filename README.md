# The datax package <img src=datax-logo.png width=50x>
A LaTeX package to insert data from a script in a document. Interacting plugins available at [Github, Datax-package](https://github.com/Datax-package).

## Example usage
Julia script:
```julia
using LaTeXDatax, Unitful
a = 25u"m"
b = 13
c = "Literal string"
@datax a b c
```

LaTeX document
```tex
\documentclass{article}
\usepackage{datax}
\usepackage{siunitx}
\begin{document}
The calculated length was \(a=\datax{a}\).
\end{document}
```

## Supported languages

Language | Repo | Maintainer
----- | ----- | -----
Julia | [LaTeXDatax.jl](https://github.com/Datax-package/LaTeXDatax.jl) | David Gustavsson
MATLAB | [LaTeXDatax.m](https://github.com/Datax-package/Datax.m) | David Gustavsson
Python | [LaTeXDatax.py](https://github.com/Datax-package/LaTeXDatax.py) | David Gustavsson

If your language isn't listed above, check [the super-repo](https://github.com/Datax-package).
Extending it to your language of choice should be fairly simple, just make it so your script can write `\pgfkeyssetvalue{/datax/<tag>}{<value>}` to a file.
If you end up writing a plugin for a language, or if you want to request one, please make a feature request or send me an e-mail.

## Copyright and license
Copyright 2020 David Gustavsson (david.e.gustavsson@gmail.com)

This package may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3 of this license or (at your option) any later
version. The latest version of this license is in:

http://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of
LaTeX version 2005/12/01 or later.

