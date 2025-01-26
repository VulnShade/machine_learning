# 🎯 Supervised Learning

[← Back to Main Page](../README.md) | [← Back to Overview](../machine_learning.md)

> Learning from labeled examples to make predictions

## 📝 Key Concepts

- Training uses labeled data with "right answers"
- Input features (x) map to output labels (y)
- Model learns to predict output (ŷ) for new inputs

## 🔍 Common Applications

<img src="images/sl_use_cases.png" alt="Supervised learning use cases" width="600"/>

---
## 📊 Types of Supervised Learning

### 1. Regression 📈
> Predicts continuous numerical values from infinite possibilities

<img src="images/reg_ex.png" alt="regression example" width="500"/>

#### Types
- [Linear Regression](regression/linear_regression/README.md)
  - Simple linear relationships
  - Continuous output values

- [Polynomial Regression](regression/polynomial_regression/README.md)
  - Use more complex function to better fit data

#### Use Cases:
- Housing price prediction
- Temperature forecasting
- Stock price estimation

### 2. Classification 🏷️
> Predicts discrete categories or classes

<img src="images/classification_ex.png" alt="classification example" width="500"/>

#### Types
- [Logistic Regression](classification/logistic_regression/README.md)

#### Use Cases:
- Email spam detection
- Image recognition
- Medical diagnosis

---

## Overfitting

<table>
  <tr>
    <img src="images/overfitting_regression.png" alt="classification example" width=50%/>
    <img src="images/overfitting_classification.png" alt="classification example" width=50%/>   
  </tr>
</table>

#### Terms:
- `high bias` - underfits the training data 
- `high variance` - overfits the training data
- `generalization` - does well on examples not in the training set

### Addressing Overfitting
1. Collect more training examples
2. Select fewer features
    - reduce total or polynomial features 
3. Regularization
  - reduces impact of features

<br>

### [Regularization](regularization/README.md) :
<img src="images/regularization.png" alt="classification example" width=500/>   

<br>

## [Neural Networks](neural_networks/README.md)
<img src="neural_networks/images/neural_net_ex.png">

<br>

## Evaluating a model
1. Split dataset into 2 portions:
    - 70% training set
    - 30% Test set 
  
2. Train model with training set

3. Evaluate model by computing training error and test error
    - Do not use regularization term for these calculations

### Regression Overfitting example:

<img src="images/reg_overfit_Ex.png" width=500>