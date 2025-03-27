# Improving Deep Neural Networks
[← Back to Main Page](../../README.md) | [← Back to Deep Learning](../README.md)

## Steps:

<img src="../images/nn_steps.png">

<br>
<hr>

## Regularization 
### Frobenius Norm or L2
$$ \Large J(W^{[1]}, b^{[1]},...,W^{[L]}, b^{[L]}) = \frac{1}{m} \sum\limits^{m}_{i=1}\mathcal{L}(\hat{y}^{(i)},y^{(i)}) + 
\frac{\lambda}{2m} \sum \limits^{L}_{l=1} \ \lVert W^{[l]}\rVert^2_F \\[1 em]
\lVert W^{[l]}\rVert^2_F = \sum \limits^{n^{[l]}}_{i=1}\sum \limits^{n^{[l-1]}}_{j=1}(W_{ij}^{[l]})^2 \\[1 em]
W:(n^{[l]},n^{[l-1]}) 
$$

#### Gradient Decent:
$$ \Large dW^{[l]} = \frac{1}{m} dZ^{[l]} \cdot A^{[l-1]T} + \frac{\lambda}{m}W^{[l]}  \\[1 em]
W^{[l]} = W^{[l]} - \alpha dW^{[l]} $$

### Drop-out Regularization
