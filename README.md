# The datax package
A LaTeX package to insert data from a script in a document. Interacting plugins available at [Github, Datax-package](https://github.com/Datax-package).

## Example usage
Julia script:
```julia
using Datax
# ... later ...
@datax a b c
```

LaTeX document
```tex
\usepackage{datax}
% ... later ...
The calculated length was \(a=\datax{a}\).
```

## Copyright and license
Copyright 2020 David Gustavsson (david.e.gustavsson@gmail.com)

This package may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3 of this license or (at your option) any later
version. The latest version of this license is in:

http://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of
LaTeX version 2005/12/01 or later.
