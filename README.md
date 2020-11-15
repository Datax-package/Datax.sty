# The datax package
A LaTeX package to insert data from a script in a document. Interacting plugins available at [Github](https://github.com/Datax-package).

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

