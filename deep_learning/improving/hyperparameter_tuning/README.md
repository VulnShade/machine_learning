# Hyperparameter Tuning
[← Back to Main Page](../../../README.md) | [← Back to Improving Deep NN](../README.md)

## Tuning Process
- Test using random values for hyperparater values
- Use coarse to fine sampling scheme
    - first use course sampling
    - select best section of that sampling and focus on smaller area

## Choose Appropriate Scales

### Hidden Units in given layer l: 
$$\Large n^{[\ell]} = 50, ..., 100 $$
- Pick random values between 50 and 100

<br>

### # Layers:
$$ \Large L: 2-4 $$
- 2, 3, 4

<br>

### Learning Rate:
> Logarithmic scale

$$\large \alpha = 0.0001 - 0.1 $$

```python
r  = -4 * np.random.rand()  # r = [-4,0]
alpha = 10 ** r             # 10^(-4) ... 10^(0)
```
$$\large 10^a ... 10^b \\[.25 em]
a = log_{10}0.0001 \\[.25 em]
b = log_{10}0.1 \\[.25 em]
r\in\ [a,b] \\[.25 em]
\alpha = 10^r
$$

<br>

### Exponentially Weighted Averages

$$\large \beta = 0.9 ... 0.999 \rightarrow 0.9 \text{ - avg last 10}, \ 0.999 \text{ - avg last 1000}$$  

- To set $\beta$:

$$\Large r\in\ [-3,-1] \\[.25 em]
1-\beta = 10^r \\[.25 em]
\beta = 1 - 10^r
$$
