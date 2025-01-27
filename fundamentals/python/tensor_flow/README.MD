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
model = Sequential(
    [
        tf.keras.Input(shape=(2,)),                         # set shape of input for weights and bias
        Dense(3, activation='relu', name = 'layer1', kernel_regularizer=L2(0.01)),  # 0.01 is value of lambda
        Dense(1, activation='sigmoid', name = 'layer2', kernel_regularizer=L2(0.01))
     ]
)
```