[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

# TensorFlow Cheatsheet

## Basic Operations:

```python
import tensorflow as tf                         # import tensorflow
from tensorflow.keras.models import Sequential  # import sequential
from tensorflow.keras.layers import Dense       # import layers
```

## Normalize Data

```python
norm_l = tf.keras.layers.Normalization(axis=-1)
norm_l.adapt(X)  # learns mean, variance
Xn = norm_l(X)
```


## Create Model
```python
tf.random.set_seed(1234)  # applied to achieve consistent results
model = Sequential(
    [
        tf.keras.Input(shape=(2,)),                         # set shape of input for weights and bias
        Dense(3, activation='sigmoid', name = 'layer1'),
        Dense(1, activation='sigmoid', name = 'layer2')
     ]
)


model.summary()     # model information

W1, b1 = model.get_layer("layer1").get_weights()        # list weights and bias for each layer
W2, b2 = model.get_layer("layer2").get_weights()
```

## Regularization
```python

# With regularization and optimizer
tf.random.set_seed(1234)
model_r = Sequential(
    [
        Dense(120, activation="relu", kernel_regularizer=tf.keras.regularizers.l2(0.1)),
        Dense(40, activation="relu", kernel_regularizer=tf.keras.regularizers.l2(0.1)),
        Dense(6, activation="linear")   # No regularizer in final layer        
    ], name= None
)
model_r.compile(
    loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
    optimizer=tf.keras.optimizers.Adam(0.01),
)

```

## Define custom cost function
```python
def training_step():
    with tf.GradientTape() as tape:
        cost = w ** 2 - 10 * w + 25
    trainable_variables = [w]
    grads = tape.gradient(cost, trainable_variables)
    optimizer.apply_gradients(zip(grads, tain))

## Simpler
optimizer.tf.keras.optimizers.Adam(0.1)
def training(x, w, optimizer)
    def cost_fn():
        return x[0] * w ** 2 + x[1] * w + x[2]
    for i in range(1000):
        optimizer.minimize(cost_fn, [w])
    return w

w = training(x, w, optimizer)