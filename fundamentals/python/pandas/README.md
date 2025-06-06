# Pandas Cheatsheet
[← Back to Main Page](../../../README.md) | [← Back to Fundamentals](../../README.md)


## Basics

```python
# Load Data
df = pd.read_csv(my_csv.csv)

# Save Data
df.to_csv('data.csv')

# Copy Data
X_train_copy = X_train.copy()

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

# Reset index (good for multi-index like what happens in groupby())
df.reset_index()

# Set index
df.set_index('<column>')

# Data Types
df.dtypes                   # data types of all columns
df.<column>.dtype           # dtype of column
df.<column>.astype('str')   # cast to new type
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

## Grouping 
```python
reviews.groupby('points').points.count()    # value_counts() longhand 

reviews.groupby('points').price.min()       # Cheapest in each point category
reviews.groupby('winery').apply(lambda df: df.title.iloc[0])    # name of first wine for each winery

# Best wine by country and province
reviews.groupby(['country', 'province']).apply(lambda df: df.loc[df.points.idxmax()])

# agg()- run many funcs on DF simultaneously
reviews.groupby(['country']).price.agg([len, min, max])
```
<br>

## Sorting
```python
df.sort_values(by='len')    # Sort ascending
df.sort_values(by='len', ascending=False) # Descending
df.sort_index()    # sort by index
countries_reviewed.sort_values(by=['country', 'len']) # sort by multiple columns
```

<br>

## Missing Data
```python
reviews[pd.isnull(reviews.country)] # Select missing data

# Remove rows with missing target
X_full.dropna(axis=0, subset=['SalePrice'], inplace=True)

reviews.region_2.fillna("Unknown") # fill missing data

reviews.taster_twitter_handle.replace("@kerinokeefe", "@kerino") # replace data

# Imputation (replace missing with mean)
from sklearn.impute import SimpleImputer
my_imputer = SimpleImputer()
imputed_X_train = pd.DataFrame(my_imputer.fit_transform(X_train))

    # Make new columns indicating what will be imputed
    for col in cols_with_missing:
        X_train_plus[col + '_was_missing'] = X_train_plus[col].isnull()
        X_valid_plus[col + '_was_missing'] = X_valid_plus[col].isnull()

```

<br>

## Renaming and Combining
```python
# Rename
reviews.rename(columns={'points': 'score'})                 # rename column
reviews.rename(index={0: 'firstEntry', 1: 'secondEntry'})   # Rename index
reviews.rename_axis("wines", axis='rows').rename_axis("fields", axis='columns'  # rename row and col idx


# Combine
pd.concat([df1, df2])

# Combine and add suffix to each set
left = canadian_youtube.set_index(['title', 'trending_date'])
right = british_youtube.set_index(['title', 'trending_date'])

left.join(right, lsuffix='_CAN', rsuffix='_UK')

```

<br>

## Prob & Stats

```python
df.describe()   # shows common stats of data
df.corr()       # correlation matrix 

```

## Categorical Data
### List categorical columns
```python
# Get list of categorical cols
s = (X_train.dtypes == 'object')
object_cols = list(s[s].index)
```


### Ordinal Encoding
```python
# Categorical columns in the training data
object_cols = [col for col in X_train.columns if X_train[col].dtype == "object"]

# Columns that can be safely ordinal encoded
good_label_cols = [col for col in object_cols if 
                   set(X_valid[col]).issubset(set(X_train[col]))]
        
# Problematic columns that will be dropped from the dataset
bad_label_cols = list(set(object_cols)-set(good_label_cols))

# Drop categorical columns that will not be encoded
label_X_train = X_train.drop(bad_label_cols, axis=1)
label_X_valid = X_valid.drop(bad_label_cols, axis=1)


ordinal_encoder = OrdinalEncoder()

label_X_train[good_label_cols] = ordinal_encoder.fit_transform(X_train[good_label_cols])
label_X_valid[good_label_cols] = ordinal_encoder.transform(X_valid[good_label_cols])
```
see [scikit learn cheatsheet](../scikit_learn/scikit_learn_cheatsheet.md#ordinal-encoding)

### One hot encoding for categorical data
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