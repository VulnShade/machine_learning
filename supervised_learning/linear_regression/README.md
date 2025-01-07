# 📈 Linear Regression

[← Back to Main Page](../../README.md) | [← Back to Supervised Learning](../supervised_learning.md)

> Predicting continuous values using linear relationships

## 📝 Key Concepts
- Model trained on labeled input/output pairs
- Fits a straight line through training data
- Uses fitted line to predict future outcomes

## 🔍 Visual Example

<img src="images/lin_reg_ex.png" alt="linear regression example" width="500"/>

## 💡 Applications
- Housing price prediction
- Sales forecasting
- Consumer behavior analysis

## 📘 Implementation Steps
### Single Variable Linear Regression:

#### 1. [Model Representation](single_variate\1_model_representation.ipynb)
#### Representing 𝑓:

f<sub>w,b</sub>(x) = wx + b
- Determines output `ŷ`
- `w` - Slope of line
- `b` - y-intercept

#### 2. [Cost Function](single_variate\2_cost_function.ipynb)
- <b>Squared Error Cost function</b>: Measures accuracy of predictions
```math
J(w,b) = \frac{1}{2m} \sum_{i=1}^{m} (ŷ⁽ⁱ⁾- y⁽ⁱ⁾)²
```
  - `m` = number of training examples
  - `ŷ⁽ⁱ⁾` = predicted value
  - `y⁽ⁱ⁾` = actual value
- Goal: Minimize J(w,b)

#### 3. [Gradient Decent](single_variate\3_gradient_decent.ipynb)
- Have some cost function <b>J(w,b)</b>, want <b>$\min\limits_{w, b}$ J(w,b)</b>
- Takes down path of steepest decent to local minima

<br>

Formula:
```math
w = w -\alpha\;\;\frac{d}{dw}J(w,b)
```

- `α` = learning rate
- <span style="background-color:rgb(51, 49, 49); padding: 2px; border-radius: 3px; font-family: monospace;">$\frac{d}{dw}J(w,b)$</span> = derivative of cost function


<br>

---

_Learning the relationships between variables to make predictions_