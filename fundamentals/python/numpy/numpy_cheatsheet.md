# 📊 NumPy Cheatsheet

[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

## 📝 Quick Reference

### Basic Operations
```python
# Import numpy
import numpy as np

# Create arrays
a = np.array([1, 2, 3])                  # Basic array: [1 2 3]
empt_arr = np.empty(3)                   # Empty array: [0. 0. 0.]
two_dim_arr = np.array([[1,2,3],         # 2D array:
                        [4,5,6]])         # [[1 2 3]
                                         #  [4 5 6]]
lin_spaced_arr = np.linspace(0, 100, 5)  # Evenly spaced values

# Indexing
a[0]        # Access row 0 
a[:,0]      # Access column 0 

# Reshape
a.reshape(-1, 2)        # reshape to 2 columns
reshape(2, -1)          # reshape to 2 rows

# Min value of array 
np.argmin(distance)     # Return the index of min value in array

# Shuffle
np.random.permutation(X.shape[0])   # Randomly set indexes
```

### Array Operations
```python
# Copy arrays
A_system_res = A_system.copy()

# Array attributes
arr.ndim    # Number of dimensions
arr.shape   # Array shape (e.g., (3, 2))
arr.size    # Total number of elements

# Combining arrays
vert_stack = np.vstack((a1, a2))  # Vertical stacking
horz_stack = np.hstack((a1, a2))  # Horizontal stacking
```

### Linear Algebra Operations
```python
# Single vector operations
np.sum(a)                   # sum of vector elements
np.mean(a)                  # mean of vector
np.linalg.norm(v)           # norm of a vector (length)

# System solving and matrix operations
np.linalg.solve(A, b)         # Solve linear system Ax = b
np.linalg.det(A)             # Calculate determinant
np.linalg.matrix_rank(A)     # Calculate matrix rank
np.linalg.inv(A)             # Find inverse of matrix A
np.dot(w,x)                  # Dot product
np.matmul(A, B)              # Matrix multiplication
A @ B                        # Matrix multiplication/Dot Product shorthand
A_eig = np.linalg.eig(A)     # Find Eigenvalues and Eigenvectors

# Linear transformations
A @ v                       # Using matrix multiplication to calculate new vector

# Distance between two vectors (L2 norm)
np.linalg.norm(vec1 - vec2)

```

### Linear Regression
```python
f = np.dot(w,x) + b          # vectorize implementation of LR model prediction
```

### Logistic Regression
```python
np.exp(input_array)         # Caclulate exponential e^z (input array z)
```

### Calculus

Numpy
```python
# Values are not exact

x_array_2 = np.linspace(-5, 5, 100)
dfdx_numerical = np.gradient(f(x_array_2), x_array_2)       # Calculate derivatives
```

JAX
```python
from jax import grad, vmap
import jax.numpy as jnp

x_array_jnp = jnp.array([1., 2., 3.])       # create array
y_array_jnp = x_array_jnp.at[2].set(4.0)    # Change value of element

# Differentiation
dfdx_jax_vmap = vmap(grad(f))(x_array_jnp)  

```




---
💡 _This cheatsheet provides quick reference for common NumPy operations used in machine learning_