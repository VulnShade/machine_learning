[← Back to Main Page](../../README.md) | [← Back to Overview](../supervised_learning.md)

# Neural Networks
<img src="images/neural_net_ex.png">

<br>

## [Forward prop in Python](simple_implementation/python_manual.ipynb)
<img src="images/fwd_prop_py.png">


## [Building a Neural Network Tensorflow](simple_implementation/tensorflow.ipynb)


```python
model = Sequential([                      # Combine to create neural network
    Dense(units=3, activation="sigmoid"), # Create layer with 3 nodes
    Dense(units=1, activation="sigmoid")  # Create layer with 1 node
])

#  defines a loss function and specifies a compile optimization
model.compile(
    loss = tf.keras.losses.BinaryCrossentropy(),
    optimizer = tf.keras.optimizers.Adam(learning_rate=0.01),
)

    # BinaryCrossentropy() = Logistic regression (-ylog(f(x)) - (1-y)log(1-f(x)))
    # MeanSquaredError() = Regression 

# runs gradient descent and fits the weights to the data
model.fit(
    Xt,Yt,            
    epochs=10,   # number of steps in gradient decent
)

# list weights and bias
W1, b1 = model.get_layer("layer1").get_weights()
W2, b2 = model.get_layer("layer2").get_weights()
print("W1:\n", W1, "\nb1:", b1)
print("W2:\n", W2, "\nb2:", b2)

# Predict
X_testn = norm_l(X_test)
predictions = model.predict(X_testn)
print("predictions = \n", predictions)
yhat = (predictions >= 0.5).astype(int)
print(f"decisions = \n{yhat}")
```
<br>

## Activation Functions

<img src="images/activation_funcs.png" width= 750>

### Choosing a function:
#### Output Layer:
- `Binary Classification` - sigmoid
- `Regression` - Linear activation
- `Regression` (if y can only be positive) - ReLU

#### Hidden Layers
- `ReLU` - In most cases
    - Faster for gradient decent

Example:
```python
model = Sequential([                     
    Dense(units=25, activation="relu"), # Layer 1
    Dense(units=15, activation="relu")  # Layer 2
    Dense(units=1, activation="sigmoid")   # Output layer
])
```