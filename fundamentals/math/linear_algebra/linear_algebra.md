# 📐 Linear Algebra

[← Back to Main Page](../../../README.md) | [← Back to Mathematics](../README.md)

> Quick reference for essential linear algebra concepts

## 📊 Determinants

### 2x2 Matrix
$det(A) = \begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc$

### 3x3 Matrix
$det(A) = \begin{vmatrix} 
a & b & c \\
d & e & f \\
g & h & i
\end{vmatrix} = a\begin{vmatrix}e & f \\ h & i\end{vmatrix} - 
b\begin{vmatrix}d & f \\ g & i\end{vmatrix} + 
c\begin{vmatrix}d & e \\ g & h\end{vmatrix}$

### Properties
- det = 0 → Matrix is singular (no inverse)
- det ≠ 0 → System has unique solution
- |AB| = |A| × |B|

## 🔄 Solving Systems of Equations

### Example: 3x3 System
$\begin{cases}
2x + y + z = 8 \\
x - 3y + z = 2 \\
4x + y - 2z = 4
\end{cases}$

#### Step 1: Write augmented matrix
$\begin{bmatrix}
2 & 1 & 1 & | & 8 \\
1 & -3 & 1 & | & 2 \\
4 & 1 & -2 & | & 4
\end{bmatrix}$

#### Step 2: Convert to row echelon form
1. Divide R1 by 2:
$\begin{bmatrix}
1 & \frac{1}{2} & \frac{1}{2} & | & 4 \\
1 & -3 & 1 & | & 2 \\
4 & 1 & -2 & | & 4
\end{bmatrix}$

2. Eliminate x from other rows:
$\begin{bmatrix}
1 & \frac{1}{2} & \frac{1}{2} & | & 4 \\
0 & -\frac{7}{2} & \frac{1}{2} & | & -2 \\
0 & -1 & -4 & | & -12
\end{bmatrix}$

Continue until solved...

## 📏 Matrix Rank

### Row Echelon Form
```
[1 * * *]
[0 1 * *]
[0 0 1 *]
[0 0 0 0]
```
- Rank = number of non-zero rows
- Full rank = min(rows, cols)
- Rank < min(rows, cols) → dependent system

## 🎯 Vectors

### Basic Operations
- Addition: $\vec{a} + \vec{b} = (a_1+b_1, a_2+b_2)$
- Scalar multiplication: $c\vec{a} = (ca_1, ca_2)$

### Dot Product
$\vec{a} \cdot \vec{b} = a_1b_1 + a_2b_2$

#### Properties
- $\vec{a} \cdot \vec{b} = 0$ → vectors are orthogonal
- $\vec{a} \cdot \vec{a} = \|\vec{a}\|^2$
- Used in projections and ML algorithms

---
💡 _Understanding these concepts is crucial for machine learning algorithms_
