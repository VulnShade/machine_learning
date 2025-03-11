# Pandas Cheatsheet
[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)

<br>

## Prob & Stats

```python
df.describe()   # shows common stats of data
df.corr()       # correlation matrix 

```


## One hot encoding for categorical data
```python 
cat_variables = ['column1_name', 
'col2_name',
'col3_name'
]

# This will replace the columns with the one-hot encoded ones and keep the columns outside 'columns' argument as it is.
df = pd.get_dummies(data = df,
                         prefix = cat_variables,
                         columns = cat_variables)
```