# Probability & Statistics
[← Back to Main Page](../../../README.md) | [← Back to Mathematics](../README.md)

## Intro to probability

<img src="images/prob_ex.png" width=750 >

### $ P(event) = \frac{event}{sample \ space} $

<br>

### Rules of Probability

|Rule| Formula| Notes|
|----|---------|-----|
|Complement | $ P(A^{\prime}) = 1 - P(A)$ | Probability of event not happening|
| Sum (Mutally exclusive)| $P(A \cup B) = P(A) + P(B) $ | Proability of A or B |
| Sum (Non exclusive)| $P(A \cup B) = P(A) + P(B) - P(A \cap B) $ | Proability of A or B - (A & B) |
| Product | $P(A \cap B) = P(A) \cdot P(B) $ | Independent events |
| Conditional | $P(A \cap B) = P(A) \cdot P(B \| A) $| Dependent events |
| Bayes Theorem | $ P(A \| B) = \frac{P(A \cap B)}{P(B)} = \frac{P(A) \cdot P(B \| A)}{P(B)}$   | 

<br>

## Distributions

### Binomial Distribution (Discrete Distributions)

<img src="images/binomial_dist.png" width=750>

$$\begin{pmatrix} 
n \\
k
\end{pmatrix}  \text{ex. all combinations for landing }k \text{ heads in } n \text { coin tosses}$$ 


#### Event: X = X: X heads in 6 tosses:
### $ \underbrace{\begin{pmatrix}5 \\x\end{pmatrix}}_{\text{All possible orders}}\cdot\overbrace{p^x}^{\text{Prob. of x heads}}\cdot\underbrace{(1-p)^{5-x}}_{\text{Prob. seeing 5-x tails}}$

<br>

$$\begin{pmatrix} 
n \\
k
\end{pmatrix} n \ choose \ k \ = \frac{n!}{(n-k)!K!}$$ 

$$ \text{Ordered sets of length }k \rightarrow \text{Unordered sets of length }k $$

<br>

### Continuous Distribution

<img src="images/continuous_dist.png" width=750>

<img src="images/pdf.png" width=750>

<img src="images/cdf.png" width=750>

<br>

### Normal (Gaussian) Distribution

<img src="images/normal_dist.png" width=750>



