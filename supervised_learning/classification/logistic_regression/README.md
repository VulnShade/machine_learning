# 📊 Logistic Regression

[← Back to Main Page](../../../README.md) | [← Back to Supervised Learning](../../supervised_learning.md)

> A classification algorithm that predicts discrete categories using probability

## 🔄 Overview
<img src="images/classification_example.png" width="750" alt="classification example">

## 📈 Sigmoid Function
<img src="images/lr_function.png" width="750" alt="logistic regression function">

> Converts any input into a probability between 0 and 1

### 💡 Key Concepts
- Output represents probability that class is 1
- Function shape ensures output between [0,1]
- Decision boundary at 0.5 probability

## 🎯 Example Application
### Medical Diagnosis
- Input ($x$): tumor size
- Output ($y$):
  - 0: not malignant
  - 1: malignant

#### Probability Interpretation
If $\mathcal{f}_{\vec{w}, b}(\vec{X}) = 0.7$
- 70% chance that $y = 1$ (malignant)
- 30% chance that $y = 0$ (not malignant)

## 📐 Mathematical Framework
$\mathcal{f}_{\vec{w}, b}(\vec{X}) = P(y=1|\vec{X};\vec{w},b)$

> **Interpretation:**
> - Probability that $y$ is 1
> - Given input $\vec{x}$
> - With parameters $\vec{w},b$
> - $P(y = 0) + P(y = 1) = 1$

---
💡 _Logistic regression is fundamental for binary classification problems_