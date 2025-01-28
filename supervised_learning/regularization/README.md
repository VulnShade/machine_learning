# 📊 Regularization

[← Back to Main Page](../../README.md) | [← Back to Supervised Learning](../supervised_learning.md)

> Technique to prevent overfitting by penalizing large parameter values

## 🎯 Overview
<img src="images/regularization.png" alt="regularization visualization" width="750">

### 💡 Key Concepts
- Regularization term penalizes model for large values of $w_j$
- Hyperparameter $\lambda$ controls regularization strength:
  - $\lambda = 0$ → likely to overfit
  - $\lambda = 10^{10}$ → likely to underfit

## 📐 [Implementation](regularization.ipynb)

### Gradient Descent Update Rules

#### Weight Update
> Including regularization term

## $w_j = w_j - \alpha [\frac{1}{m} \sum\limits^{m}_{i=1}[(\mathcal{f}_{\vec{w},b}(\vec{x}^{(i)}) -y^{(i)}) \ x^{(i)}_{j}] + \frac{\lambda}{m} w_j]$

#### Bias Update
> Bias term is not regularized

## $b = b - \alpha \frac{1}{m} \sum\limits^{m}_{i=1}(\mathcal{f}_{\vec{w},b}(\vec{x}^{(i)}) -y^{(i)})$

### Model Functions

#### Linear Regression
> Base model for continuous values

## $\mathcal{f}_{\vec{w},b}(\vec{X}) = \vec{w} \cdot \vec{x} + b$

#### Logistic Regression
> Base model for binary classification

## $\mathcal{f}_{\vec{w},b}(\vec{X}) = \frac{1}{1 + e^{-(\vec{w} \cdot \vec{x} + b)}}$


### Neural Network implementation
```python
layer_1 = Dense(units=25, activation="relu", kernel_regularizer=tf.keras.regularizers.l2(0.01)))
```

---
💡 _Regularization helps achieve the right balance between model complexity and generalization_