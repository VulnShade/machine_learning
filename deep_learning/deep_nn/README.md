# Deep Neural Networks
[← Back to Main Page](../../README.md) | [← Back to Deep Learning](../README.md)
<br>

<img src="../images/dimensions.png">

<br>
<hr>

## Table of Contents
- [Dimensions](#dimensions)
  - [Vectorized](#vectorized)
- [Forward Propagation](#forard-propagation)
- [Backward Propagation](#backward-propagation)
- [Implementation: Building Deep NN](build_deep_nn/Building_your_Deep_Neural_Network_Step_by_Step.ipynb)

<br>
<hr>

## Dimensions

### Vectorized

```math
{\Large Z^{[l]} = W^{[l]} \cdot A^{[l-1]} + b^{[l]} }\\[1em]

Z^{[l]}, A^{[l]}, dZ^{[l]}, dA^{[l]} = (n^{[l]},m) \\[1em]

W^{[l]} = (n^{[l]}, n^{[l-1]}) \\[1 em]

A^{[l]} = (n^{[l-1]}, m)  \\[1em]

b^{[l]} = (n^{[l]}, 1)

```
<br>
<hr>

## Forard Propagation
- Input $A^{[l-1]} $
- Ouput $ A^{[l]}$, cache ($Z^{[l]}, W^{[l]}, b^{[l]}$)

```math
\Large 
Z^{[l]} = W^{[l]} \cdot A^{[l-1]} + b^{[l]} \\[1 em]

A^{[l]} = g^{[l]}(Z^{[l]})


```
<br>
<hr>

## Backward Propagation
- Input $dA^{[l-1]} $
- Ouput $ dA^{[l]}, dW^{[l]}, db^{[l]} $

```math
\Large 
dZ^{[l]} = dA^{[l]} * g^{[l]}(Z^{[l]}) \\[1 em]

dW^{[l]} = \frac{1}{m} dZ^{[l]} \cdot A^{[l-1]T} \\[1 em]

db^{[l]} = \frac{1}{m} \text{np.sum(}dZ^{[l]}, \text{axis=1, keepdims=True)} \\[1 em]

dA^{[l-1]}  = W^{[l]T} \cdot dZ^{[l]} \\[1 em]

dZ^{[l-1]} = W^{[l]T} \cdot dZ^{[l]} * g^{\prime[l-1]}(Z^{[l-1]})


```
<br>
<hr>

