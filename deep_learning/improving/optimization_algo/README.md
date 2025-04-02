# Optimization Algorithms

[← Back to Main Page](../../../README.md) | [← Back to Improving Deep Learning](../README.md)

## Mini-batch Gradient Decent
> Split training set into smaller batches

$$ \Large \underset{(n_x, m)}X = \underbrace{[x^{[1]}, x^{[2]}, ..., x^{[1000]}]}_{X^{[1]}}  \
\underbrace{[x^{[1001]}, ..., x^{[2000]}]}_{X^{[2]}}  \
\underbrace{[..., x^{[m]}]}_{X^{[5000]}} 
$$
- Split Y the same as you split X

$$ \text{Mini-batch t: } X^{[t]}, Y^{[t]} $$

### Mini-batch Size
- If mini-batch size = m : Batch gradient decent
    - Too long per iteration
- If mini-batch size = 1 : Stochastic gradient decent. 
    - Lose speed gained from vectorization
- In practice between 1 & m
    - Fastest learning
    - Make progress without waiting for entire training set

#### Choose Size:
- Small training set: Use batch gradient decent
- Typical mini-batch size: Powers of 2 (64, 128, 256, ... 1024)
- Ensure size fits in CPU/GPU memory

<br>
<hr>

## Exponentially Weighted Averages
> Average over values for noisy data

$$ {\Large V_t = \beta V_{t-1} + (1-\beta)\theta_t }\\[1.5 em]

\large
\beta = \text{weight} \\[.5 em]
V_{t-1} = \text{previous value} \\[.5 em]
\theta = \text{current value} \\[.5 em]
V_t \approx \text{average over } \frac{1}{1 - \beta} \text{ values}
$$

