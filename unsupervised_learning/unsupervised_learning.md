#  🧩 Unsupervised Learning

[← Back to Main Page](../README.md) | [← Back to Overview](../machine_learning.md)

> Find something interesting in unlabeled data

## 📝 Key Concepts

### Data Structure
- No labeled outputs
- Finds patterns in raw data
- Uses input features only

## 🔍 Types of Unsupervised Learning

### 1. [Clustering](clustering/README.MD) 📊
> Groups similar data points together automatically

<img src="images/cluster_ex.png" alt="cluster example" width="500"/>

#### Use Cases
- Google news grouping
- DNA microarray analysis
- Customer segmentation

<br>

### 2. [Anomaly Detection](anomaly_detection/README.md)
> Identifies rare items, events, or observations which raise suspicions by differing significantly from the majority of the data

#### Use Cases
- Fraud detection in banking
- Network security threat detection
- Fault detection in manufacturing

<br>

### 3. [Recommender Systems](recommender_systems/README.md)

<img src="images/recommender_sys.png" width=750>

#### Use case, recommend:
- Movies
- Merchandise
- Restaurants


<br>

### 4. Principal Component Analysis
> Reduces number of features for visualization

<img src="images/pca_ex.png" width=500>

- Find new axis and coordinates
- Use fewer numbers (ex. capture size from length & height)

<br>

#### Algorithm:
1. Normalize to have zero mean
2. Apply feature scaling
3. Choose an axis (z axis)
4. Project onto z (find axis with highest variance)


<br>

---
💡 _Unlike supervised learning, there's no "right answer" to check against_