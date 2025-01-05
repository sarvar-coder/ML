#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Jan  5 12:31:51 2025

@author: sarvarboltaboyev
"""

import numpy as np

x = np.array([[1,2,3], [4,5,6]])

print("x:\n{}".format(x))

from scipy import sparse

eye = np.eye(4)

print("NumPy array:\n{}".format(eye))

# Convert the NumPy array to a SciPy sparse matrix in CSR format 
# Only the nonzero entries are stored

sparse_matrix = sparse.csr_matrix(eye)
print("\nSciPy sparse CSR matrix:\n{}".format(sparse_matrix))

data = np.ones(4)
row_indices = np.arange(4)
col_indices = np.arange(4)
eye_coo = sparse.coo_matrix((data, (row_indices, col_indices)))

print("COO representation: \n{}".format(eye_coo))

#%matplotlib inline
import matplotlib.pyplot as plt

# Generate a sequence of numbers from -10 to 10 with 100 steps in between

x = np.linspace(-10, 10, 100)

# Create a second array using sine

y = np.sin(x)

# The plot function makes a line chart of one array against another

plt.plot(x, y, marker = "x")
plt.show()

import pandas as pd

# create a simple dataset of people
data1 = {
        'Name': ["John", "Anna", "Peter", "Linda"], 
        'Location' : ["New York", "Paris", "Berlin", "London"], 
        'Age' : [24, 13, 53, 33] 
        }
    
data_pandas = pd.DataFrame(data1)

print(data_pandas[data_pandas.Age > 30])



