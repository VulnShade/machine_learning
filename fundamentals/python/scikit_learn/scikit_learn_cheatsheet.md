# 🤖 Scikit-learn Cheatsheet

[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

## 📝 Linear Regression 

### Basic Operations
```python
# Import common modules
from sklearn.linear_model import SGDRegressor
from sklearn.preprocessing import StandardScaler
```

### 📊 Feature Scaling
```python
# Scale features to zero mean and unit variance
scaler = StandardScaler()
X_norm = scaler.fit_transform(X_train)
```

### 📈 Model Training
```python
# Initialize and fit regression model
sgdr = SGDRegressor(max_iter=1000)
sgdr.fit(X_norm, y_train)
```

### 🎯 Prediction
```python
# Make predictions using trained model
y_pred_sgd = sgdr.predict(X_norm)
```
<br>

## 📝 Logistic Regression 

### Basic Operations
```python
# Import common modules
from sklearn.linear_model import LogisticRegression
```

### 📈 Model Training
```python
# Initialize and fit regression model
lr_model = LogisticRegression()
lr_model.fit(X, y)
```

### 🎯 Prediction
```python
# Make predictions using trained model
y_pred = lr_model.predict(X)
```

### 🎯 Measure Accuracy
```python
# Calculate accuracy with score function
print("Accuracy on training set:", lr_model.score(X, y))
```
<br> 

## Split Training Data
```python
# Get 60% of the dataset as the training set. Put the remaining 40% in temporary variables: x_ and y_.
x_train, x_, y_train, y_ = train_test_split(x, y, test_size=0.40, random_state=1)

# Split the 40% subset above into two: one half for cross validation and the other for the test set
x_cv, x_test, y_cv, y_test = train_test_split(x_, y_, test_size=0.50, random_state=1)

# Delete temporary variables
del x_, y_
```

---
💡 _Quick reference for common Scikit-learn operations in machine learning_

