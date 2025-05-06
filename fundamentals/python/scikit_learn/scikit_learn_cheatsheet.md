# 🤖 Scikit-learn Cheatsheet

[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

## Trees

### Decision Tree

```python
from sklearn.tree import DecisionTreeRegressor 

# Define model
melbourne_model = DecisionTreeRegressor()
# Fit model
melbourne_model.fit(X, y)
```

#### Find best # max leafs
```python
from sklearn.metrics import mean_absolute_error
from sklearn.tree import DecisionTreeRegressor

def get_mae(max_leaf_nodes, train_X, val_X, train_y, val_y):
    model = DecisionTreeRegressor(max_leaf_nodes=max_leaf_nodes, random_state=0)
    model.fit(train_X, train_y)
    preds_val = model.predict(val_X)
    mae = mean_absolute_error(val_y, preds_val)
    return(mae)

# compare MAE with differing values of max_leaf_nodes
for max_leaf_nodes in [5, 50, 500, 5000]:
    my_mae = get_mae(max_leaf_nodes, train_X, val_X, train_y, val_y)
    print("Max leaf nodes: %d  \t\t Mean Absolute Error:  %d" %(max_leaf_nodes, my_mae))
```

### Random Forests
```python
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error

forest_model = RandomForestRegressor(random_state=1)
forest_model.fit(train_X, train_y)
melb_preds = forest_model.predict(val_X)
print(mean_absolute_error(val_y, melb_preds))
```

<br>

## 📝 Linear Regression 


### 📊 Feature Scaling
```python
from sklearn.preprocessing import StandardScaler
# Scale features to zero mean and unit variance
scaler = StandardScaler()
X_norm = scaler.fit_transform(X_train)
```

### 📈 Model Training
```python
from sklearn.linear_model import SGDRegressor
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


### 📈 Model Training
```python
# Initialize and fit regression model
from sklearn.linear_model import LogisticRegression
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
from sklearn.model_selection import train_test_split

# Get 60% of the dataset as the training set. Put the remaining 40% in temporary variables: x_ and y_.
x_train, x_, y_train, y_ = train_test_split(x, y, test_size=0.40, random_state=1)

# Split the 40% subset above into two: one half for cross validation and the other for the test set
x_cv, x_test, y_cv, y_test = train_test_split(x_, y_, test_size=0.50, random_state=1)

# Delete temporary variables
del x_, y_
```

## Model Validation

### Errors
```python
from sklearn.metrics import mean_absolute_error

# Mean absolute error
mean_absolute_error(val_y, val_predictions)
```

---
💡 _Quick reference for common Scikit-learn operations in machine learning_

