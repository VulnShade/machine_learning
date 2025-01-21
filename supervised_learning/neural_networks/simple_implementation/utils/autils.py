import numpy as np

def load_data():
    X = np.load("utils/data/X.npy")
    y = np.load("utils/data/y.npy")
    X = X[0:1000]
    y = y[0:1000]
    return X, y

def load_weights():
    w1 = np.load("utils/data/w1.npy")
    b1 = np.load("utils/data/b1.npy")
    w2 = np.load("utils/data/w2.npy")
    b2 = np.load("utils/data/b2.npy")
    return w1, b1, w2, b2

def sigmoid(x):
    return 1. / (1. + np.exp(-x))
