# Probability & Statistics
[← Back to Main Page](../../../README.md) | [← Back to Mathematics](../README.md)

## Table of Contents
- [Intro to Probability](#intro-to-probability)
  - [Rules of Probability](#rules-of-probability)
- [Distributions](#distributions)
  - [Binomial Distribution](#binomial-distribution-discrete-distributions)
  - [Continuous Distribution](#continuous-distribution)
  - [Normal (Gaussian) Distribution](#normal-gaussian-distribution)
- [Population and Samples](#population-and-samples)
  - [Proportion](#proportion)
  - [Variance](#variance)
  - [MLE (Maximum Likelihood Estimation)](#mle-maximum-likelihood-estimation)
- [Bayesian Statistics](#bayesian-statistics)
- [Confidence Intervals](#confidence-intervals)
  - [Calculating Confidence Interval](#calculating-confidence-interval)
  - [Calculate Sample Size](#calculate-sample-size)
  - [Unknown Population Standard Deviation](#unkown-population-standard-deviation)
  - [Confidence Interval for Proportions](#confidence-interval-for-proportions)
- [Hypothesis Testing](#hypothesis-testing)
  - [Type Errors](#type-errors)
  - [Significance Level](#significance-level)
  - [Test Types](#test-types)
  - [P-value](#p-value)
  - [Critical Values](#critical-values)
  - [t-Tests](#t-tests)
    - [Two sample t-test](#two-sample-t-test)
- [Visualizations](visualizations.md)

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
| Bayes Theorem | $ P(A \| B) = \frac{P(A \cap B)}{P(B)} = \frac{P(A) \cdot P(B \ A)}{P(B)}$   |$P(B) = P(B\|A)P(A) + P(B\|A^{\prime})P(A^{\prime}) $  |

<br>



## [Distributions](distributions.md)

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

<br>
<hr>

## Population and Samples

### Proportion

#### Population Proportion:

### $$ p = \frac{\text{number items with characteristic }(x)}{\text{population }(N)}$$

#### Sample Proportion:

### $$ \hat{p} = \frac{\text{number items with characteristic }(x)}{\text{sample population }(n)}$$

<br>

### Variance
Population:

### $$ Var(X) = \sigma^2 =  \frac{1}{N}\sum(x - \mu)^2$$ 

Sample: 
### $$ \widehat{Var(X)} = s^2 =  \frac{1}{n - 1}\sum \limits_{i=1}^{n}(x - \bar{x})^2$$ 
> Take average of all sample variances for estimated Var(x)

<br>

### MLE (Maximum Likelihood Estimation)

<img src="images/mle.png" >

#### Maximize P(Data | Model)

#### Bernoulli:
### $$ \hat{p} = \frac{\sum \limits_{i=1}^{n}x_i}{n} = \bar{x}$$

<br>
<hr>

## Bayesian Statistics

| Frequentist | Bayesian |
|-------------|----------|
| Prob represent long term frequency <br> of events| Probs represent degree of certainty | 
|Concept of likelihood | Concept of prior
| Goal: Find model that most likely <br> generated the data | Goal: Update prior belief base on <br> observation |

<br>

### $$ P(A|B) = \frac{P(B|A)P(A)}{P(B)}  $$

#### Terms:
- $P(A|B) $ = Posterior: Belief A will happen after considering evidence B
- $P(A)$ = Prior: Belief A will happen (before considering evidence B)
- $P(B|A)$ = Likelihood of evidence B appearing, given A happened
- $P(B)$ - Probability of evidence B in any circumstance

<br>

<img src="images/bayesian_stats.png" width=750>

<img src="images/bay_stats_result.png" width=500>

<br>

#### Formulas:
<img src="images/bays_formulas.png" width=750>

<br>
<hr>

## Confidence Intervals

<img src="images/confidence_interval.png" width=750>>
> Confidence interval of 95% = 95% of confidence intervals with contain $\mu$ (Population mean)

### Summary:
- Confidence intervals are a sample mean with a margin of error on each side
- Confidence level: Probability a confidence interval contains $\mu$
- Ideal is high confidence and narrow interval
- Larger samples (more data) will give narrower interval
- Decreasing confidence level will also shrink interval

### Calculating Confidence Interval
1. Calculate the sampel mean ($\bar{x}$)
2. Calculate confidence interval
  <img src="images/calc_interval.png" width=750>

### Calculate Sample Size
> Calculate the minimum sample size needed to obtain desired margin of error

<img src="images/calc_sample_size.png" >

### Unkown Population Standard Deviation
> Use sample standard deviation $s$ and $t$ score

<img src="images/t-score.png" >

### Confidence Interval for Proportions

<img src="images/ci_proportion.png" width=750>

<img src="images/ci_proportion2.png">

<br>
<hr>

## Hypothesis Testing
<img src="images/hypothesis.png" width=750>

### Steps:

<img src="images/hypothesis_testing_steps.png" width=750>
    
### Type Errors
<img src="images/type_errors.png" >

### Significance Level
> Greatest probability of type 1 error you are willing to tolerate

### $$ a = maxP(\text{Type 1 error}) $$
### $$ = maxP(\text{Reject }H_0|H_0) $$

- $a$ will determine a threshold to decide to reject $H_0$ or not based on your sample

### Test Types

<img src="images/test_types.png" width=750>

### P-value
<img src="images/p-value.png" width=750>

### Critical Values
<img src="images/critical_values.png" width=750>

### t-Tests
> If you do not have population standard deviation

### $$ T = \frac{\bar{X} - \mu}{S/\sqrt{n}} \quad ddof = n-1$$
- $\mu$ is the proposed population mean you are testing for

#### Two sample t-test
<img src="images/2_sample_t.png" width=500>