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

### 4. Reinforcement Learning

$$\text{state }s \longrightarrow \text{action }a  $$

$$ \text{position of helicopter } \longrightarrow \text{how to move control sticks } $$

$\text{reward function}: \\$
$\bullet \text{ positive reward: flying well } +1 \\$
$\bullet \text{ negative reward: crash } - 1000$

<img src="images/reinformcement_ex.png" width>


<br>

## Principal Component Analysis
> Reduces number of features for visualization (2 or 3 features)

<img src="images/pca_ex.png" width=500>

- Find new axis and coordinates
- Use fewer numbers (ex. capture size from length & height)

<br>

#### Algorithm:
1. Normalize to have zero mean (feature scaling)
2. Choose an axis (z axis)
3. Project onto z (find axis with highest variance)

#### Coordinate on new axis

<img src="images/pca_coord.png" width=500>


<br>

---
💡 _Unlike supervised learning, there's no "right answer" to check against_