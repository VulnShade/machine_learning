# Distributions
[← Back to Main Page](../../../README.md) | [← Back to Probability & Statistics](README.md)

## Table of Contents
- [Measures](#measures)
  - [Mean](#mean--expected-value)
  - [Median](#median)
  - [Mode](#mode)
  - [Variance](#variance)
  - [Standard Deviation](#standard-deviation-)
  - [Moments of a Distribution](#moments-of-a-distribution)
    - [Skewness](#skewness)
    - [Kurtosis](#kurtosis)
- [Standardizing Distribution](#standardizing-distribution)

## Measures

### Mean ($\mu$) ( Expected value)

### $$ \mu = \frac{\text{sum of data points}}{\text{Num of data points}}$$

<img src="images/mean.png" width=750>

- Mean or balancing point
- weighted average of either PMF or PDF

<br>

### Median 
> Middle number or average of middle numbers (if even number of values)

```python
def median(data_set):
    n = len(data_set)
    if n % 2 == 1:
        return data_set[n // 2]
    else:
        return (data_set[n // 2 - 1] + data_set[n // 2]) / 2
```

<br>

### Mode
> Value(s) with highest probability or frequency

<br>

### Variance
> Measuring spread

<img src="images/variance.png" />

<br>

### $$Var(X) = \Epsilon[(X - \Epsilon[X])^2] $$

### $$= \Epsilon[(X - \mu)^2] $$

### $$= \Epsilon[X^2] - \Epsilon[X]^2$$

$$Var(aX + b) = a^2Var(X)$$

1. Find X's mean
2. Find deviation from that mean for every value of X
3. Square those deviations
4. Average those squared deviations

<br>

### Standard Deviation ($\sigma$)

<img src="images/std_dev.png">

### $$ std(x) = \sqrt{Var(x)}$$

#### 68-95-99.7 rule:
- 68% within 1 $\sigma$ of mean
- 95% within 2 $\sigma$
- 99.7% within 3 $\sigma$

<br>

### Moments of a Distribution
> Take value to the power of moment # in expectation calculation

<img src="images/moments.png" width=750>

<br>

#### Skewness
> 3rd moment. Shows postive/negative skew

### $$ \text{Skewness }= \Epsilon[(\frac{X-\mu}{\sigma})^3] $$

- Expected value of center and standardized distribution (to 3rd power)

<img src="images/skewness.png" width=750>

<br>

#### Kurtosis
> The 4th momemt

### $$ \text{Kurtosis }= \Epsilon[(\frac{X-\mu}{\sigma})^4] $$

<img src="images/kurtosis.png" width=750>

<br>

### Covariance 

### $$ Cov(X,Y) = \frac{\sum(x_i - \mu_x)(y_i - \mu_y)}{n} $$

<img src="images/covariance.png">

### Covariance of Probability Distributions:

### $$ Cov(X,Y) = \sum P_{XY}(x_i, y_i)(x_i - \mu_x)(y_i - \mu_y) $$

$$ = \Epsilon[XY] -\Epsilon[X]\Epsilon[Y] $$

<br>

### Correlation Coefficient
> [-1,1]

<img src="images/correlation_coefficient.png">

- -1 - completely negatively correlated
- 0 - completely independent
- 1 - completely positively correlated

### $$ \text{correlation coefficiaent } = \frac{Cov(X,Y)}{\sigma_x \cdot \sigma_y} $$


<br>
<hr>

## Standardizing Distribution
### 1. Center mean 

### $$ X \rightarrow X - \mu$$

### 2. Set standard deviation to 1

### $$ X \rightarrow \frac{X}{\sigma}$$

<br>

<hr>

## Joint Distributions

### $$ P_{XY} = P(X=x, Y=y) = P(x) \cdot P(y) $$


X = num of first die, Y = num second die

<img src="images/discrete_joint_dist.png">
