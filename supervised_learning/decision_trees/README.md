[← Back to Main Page](../../README.md) | [← Back to Supervised Learning](../supervised_learning.md)

# Decision Trees

<img src="images/decision_tree.png" width=750>

## Measuring purity

### Entropy as measure of impurity

<img src="images/entropy.png">

<br>

- Highest when examples are 50/50 split
- Lowest when a feature selects either all or none

### Entropy function

- $p_1$ - Fraction of examples that are the classification (cats from the example)
- $p_0 = 1 - p_1$ - Fraction that are not the classification

### $H(p_1) = -p_1log_2(p_1) - p_0log_2(p_0)$
###  $\quad\quad\quad =  -p_1log_2(p_1) - (1 - p_1)log_2(1-p_1)$

<br>

## Information Gain
- Used for pick most useful features to split on

<img src="images/information_gain.png" width=750>

<br>

- $p_1^{left}$ - Fraction of examples in left subtree with positive label
- $w^{left}$ - Fraction of all examples in root node that went to the left
- $p_1^{right}$ - Fraction of examples in right subtree with positive label
- $w^{right}$ - Fraction of all examples in root node that went to the right
- $p_1^{root}$ - Fraction of positive examples in root node

### Choosing a feature to split on:
- Calculate for features as root node
- Pick one with highest information gain

<br>

## One-hot encoding of categorical features
- encode categorical feature as binary (1 or 0)

    <img src="images/one_hot_encoding.png">

<br>

## Continuous valued features
- Calculate information gain for different point
- Split on the one with highest gain

    <img src="images/continuous_value.png" width=500>


## Regression with Decision Trees: Predicting a number

 <img src="images/regression.png" width=750>

<br>

#### Model will assign average of values at leaf node

<img src="images/avg_reg.png" >

### Choosing a split
- Calculate variance at each node
- Choose largest reduction in variance from root

    <img src="images/reg_split.png" width=750>