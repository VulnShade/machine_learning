# sympy cheatsheet

[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

## Symbolic Notatoin
```python
from sympy import *


sqrt(18)                                    # Output exact notation using sqrt
N(sqrt(18,8))                               # Numerical eval with specified decimal places

x, y = symbols('x y')                       # List of symbols.
expr = 2 * x**2 - x * y                     # Definition of the expression.
expr_manip = x * (expr + x * y + x**3)      # Manipulate the expression
expand(expr_manip)                          # Expand expression
factor(expr_manip)                          # Factorise expression
expr.evalf(subs={x:-1, y:2})                # Substitute values for variables


# Convert to numpy compatible
from sympy.utilities.lambdify import lambdify

f_symb = x ** 2
f_symb_numpy = lambdify(x, f_symb, 'numpy')
```

<br>

## Symbolic Differentiation

```python
diff(x**3,x)                                # Find derivative

```