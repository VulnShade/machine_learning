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
# System solving and matrix operations
np.linalg.solve(A, b)         # Solve linear system Ax = b
np.linalg.det(A)             # Calculate determinant
np.linalg.matrix_rank(A)     # Calculate matrix rank
```

---
💡 _This cheatsheet provides quick reference for common NumPy operations used in machine learning_