# 🎯 Supervised Learning

[← Back to Main Page](../README.md) | [← Back to Overview](../machine_learning.md)

## Table of Contents
- [Key Concepts](#-key-concepts)
- [Common Applications](#-common-applications)
- [Types of Supervised Learning](#-types-of-supervised-learning)
  - [Regression](#1-regression-)
  - [Classification](#2-classification-️)
- [Overfitting](#overfitting)
  - [Addressing Overfitting](#addressing-overfitting)
  - [Regularization](#regularization)
- [Neural Networks](#neural-networks)
- [Evaluating a model](#evaluating-a-model)
- [Model Selection](#model-selection)

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

<br>

### Classification

$J_{test}(\vec{w},b)$ = fraction of test set that were misclassified <br>
$J_{train}(\vec{w},b)$ = fraction of training set that were misclassified

<br>

## [Model Selection](model_selection/model_selection.ipynb):
### 1. Split data

- 60% - Training set
- 20% - Cross Validation or Dev set 
- 20% - Test set

`Cross validation will check validity of different models`

<br>

### 2. Try different models

- #### Different degree polynomials
  <img src="images/model_selection.png" width=600>

- #### Different neural network architecture
  <img src="images/neural_net_sel.png" width=600>
<br>

### 3. Calculate error
<img src="images/model_sel_er.png" width=600>

### 4. Pick model with lowest Dev error

### 5. Use test set to estimate generalization error

<br>

## Bias & Variance

<img src="images/bias_variance.png" width=750>

<br>

#### Comparing error to degree of polynomial 

<img src="images/bias_var_deg_poly.png">

<br>

### Regularization

#### Effects on bias and variance:
<img src="images/bias_var_regularization.png" width=750>

<br>

#### Choosing regularization parameter $\lambda$ :

<img src="images/choosing_lambda.png" width=750>

- Check with cross-validation set