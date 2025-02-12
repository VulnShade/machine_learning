# Reinforcement Learning
[← Back to Main Page](../../README.md) | [← Back to Unsupervised Learning](../unsupervised_learning.md)

<br>

## Basics
$\text{state }s \longrightarrow \text{action }a  $

$ \text{position of helicopter } \longrightarrow \text{how to move control sticks } $

$\text{reward function}: \\$
$\bullet \text{ positive reward: flying well } +1 \\$
$\bullet \text{ negative reward: crash } - 1000$

<br>

## The Return

<img src="images/return.png" width=750>

### Return $ = R_1 + \gamma R_2 + \gamma^2 R_3 + ...$ terminal state 
#### Discount Factor $\gamma = 0.9$ (commonly a number close to 1)