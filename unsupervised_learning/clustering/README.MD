# Clustering

[← Back to Main Page](../../README.md) | [← Back to Unsupervised Learning](../unsupervised_learning.md)

## K-means Inuition
1. Picks centroid (cluster center)
2. Assign each point closest centroid
3. Recompute centroid (by taking average(mean) of all assigned points)
4. Repeat until no more changes

    <img src="images/inuition.png" width=500>

<br>

## K-mean Algorithm
1. Randomly initialize K cluster centroids
    
    $u_1, u_2, ... , u_k $

2. Assign points to cluster centroids

    for $ i = 1 \text{ to } K$

    $ c^(i) := $ index (from 1 to K) of cluster centroid closest to $x^(i)$

3. Move cluster centroids

    for $k = 1 \text{ to } K$

    $u_k := $ acerage (mean) of points assigned to cluster k 

4. Repeat