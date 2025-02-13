# Reinforcement Learning
[← Back to Main Page](../../README.md) | [← Back to Unsupervised Learning](../unsupervised_learning.md)

<br>

## Basics (Markov Decision Process)
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

<br>

## Policy

<img src="images/policy.png" width=750>

>### Goal: <span style="font-weight: normal;"> Find policy </span>$\pi$ <span style="font-weight: normal;">that tells action</span> $(a = \pi(s))$ <span style="font-weight: normal;">to take in ever state (s) to maximize the return </span>

<br>

## State action value function (Q-function)

>Gives the return

$Q^{*}$ = Optimal $Q$ function

$Q(s,a) = $ Return if you:

- Start in state $s$
- Take action $a$ once
- Behave optimally after that

<br>

<img src="images/sav_func.png" width=750>



>#### Best possible return from state $s$ is $\max\limits_{a}Q(s,a)$ 

>#### Best possible action from state $s$ is the action $a$ that gives $\max\limits_{a}Q(s,a)$ 

<img src="images/q_func.png" width=500>

<br>

## Bellman Equation

#### Notation:
- $s$ : current state
- $a$ : current action
- $R(s)$ : reward of urrent state
- $s\prime$ : state you get to after action $a$
- $a\prime$ : action you take in state $s\prime$

### $$Q(s,a) = \underbrace{R(s)}_{\text{immediate reward}} + \underbrace{\gamma \max\limits_{a\prime}Q(s\prime, a\prime)}_{\text{return from behaving optimally from state } s\prime} $$ 

### $$Q(s,a) = R(s) \text{ - if in terminal state}$$

<br>

<img src="images/bellman_eq.png" width=500>