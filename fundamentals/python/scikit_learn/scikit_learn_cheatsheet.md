# 🤖 Scikit-learn Cheatsheet

[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

## 📝 Quick Reference

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

---
💡 _Quick reference for common Scikit-learn operations in machine learning_

