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