# Pandas Cheatsheet
[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)


## Basics

```python
# Load Data
df = pd.read_csv(my_csv.csv)

# Save Data
df.to_csv('data.csv')

# Accessing Data
reviews.iloc[0]     # Select first row
reviews.iloc[:, 0]  # Select first column

# Selecting data
df.head()           # View first lines
df[df['tip'] > 0]   # select values in column of certain value
reviews.loc[(reviews.country == 'Italy') & (reviews.points >= 90)] # And 
reviews.loc[(reviews.country == 'Italy') | (reviews.points >= 90)] # Or
reviews.loc[reviews.country.isin(['Italy', 'France'])]  # In list
reviews.loc[reviews.price.notnull()]   # Not null
reviews.loc[reviews.price.isnull()]     # null values

# Rows & Columns
df.shape

```

<br>

## Summary Functions and Maps
```python

# Summary
df.describe()   # shows common stats of data
df.mean()       
df.<column>.unique() # unique values
df.<column>.value_counts()  # unique values and frequency

# Maps
review_points_mean = reviews.points.mean()
reviews.points.map(lambda p: p - review_points_mean) # Set mean to 0

def remean_points(row):
    row.points = row.points - review_points_mean
    return row

reviews.apply(remean_points, axis='columns')

```


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