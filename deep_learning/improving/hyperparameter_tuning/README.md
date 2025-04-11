# Hyperparameter Tuning
[← Back to Main Page](../../../README.md) | [← Back to Improving Deep NN](../README.md)

## Tuning Process
- Test using random values for hyperparater values
- Use coarse to fine sampling scheme
    - first use course sampling
    - select best section of that sampling and focus on smaller area

## Choose Appropriate Scales

#### Hidden Units in given layer l 
$$\Large n^{[\ell]} = 50, ..., 100 $$
- Pick random values between 50 and 100

#### # Layers
$$ \Large L: 2-4 $$
- 2, 3, 4

#### Learning Rate
> Logarithmic scale

$$\large \alpha = 0.001 - 0.1 $$

```python
r  = -4 * np.random.rand()
alpha = 10 ** r