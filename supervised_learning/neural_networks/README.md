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

# runs gradient descent and fits the weights to the data
model.fit(
    Xt,Yt,            
    epochs=10,
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