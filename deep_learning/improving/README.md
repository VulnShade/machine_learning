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

<br>

### Drop-out Regularization
> Randomly eliminates nodes each training example \
> \* Do not use at test time


#### Drop out vector (Inverted dropout)
$$\large d\ell = \text{np.random.rand(}a\ell \text{.shape[0], }a\ell\text{.shape[1] < keep\_prob } \\[.5 em]
a\ell = \text{np.multiply(}a\ell, d\ell) \quad\quad \# \ a\ell \ *= d\ell \\[.5 em]
a\ell \ /= \text{ keep\_prob} \\[.5 em]
Z^{[\ell]} = W^{[\ell]} \cdot a^{[\ell]} + b^{[\ell]}
$$

<br>

$$ \text{Notation:} $$
$$\begin{aligned} 
\ell \quad \text{ = }& \quad \text{layer} \\
\text{keep\_prob}\quad \text{ = }& \quad \text{\% of nodes to keep (ex. 0.8, keep 80\%0} \end{aligned}$$

#### Intuition: Can't rely on any one feature. 
- Have to spread weights