# Recommender Systems

## Per Item Features:

<img src="images/per_item_fet.png" width=750>

### Notation:
- $r(i,j)$ = 1 if user j has rate moveie i (0 otherwise)
- $y^{(i,j)}$ = rating fiven by user j on movie i (if defined)
- $w^{(j)}, b^{(j)}$ = parameters for user j
- $x^{(i)}$ = feature vector for movie i
- $m^{(j)}$ = # of movies rated by user j
- $n$ = # of features

<br>

### Cost function

### For user J:

### $$ \min\limits_{w^{(j)}b^{(j)}} J(w^{(j)}, b^{(j)}) = \frac{1}{2m^{(j)}} \sum\limits_{i:r(i,j)=1} (w^{(j)} \cdot x^{(i)} + b^{(j)} - y^{(i,j)} )^2 + \frac{\lambda}{2m^{(j)}} \sum\limits^{n}_{k=1}(w_k^{(j)})^2 $$

### For all users:

### $$ \frac{1}{2} \sum\limits^{n_u}_{j=1} \sum\limits_{i:r(i,j)=1} (w^{(j)} \cdot x^{(i)} + b^{(j)} - y^{(i,j)} )^2 + \frac{\lambda}{2} \sum\limits^{n_u}_{j=1} \sum\limits^{n}_{k=1}(w_k^{(j)})^2 $$

<br>

