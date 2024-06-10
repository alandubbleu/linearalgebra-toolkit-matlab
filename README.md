# linearalgebra-toolkit-matlab

# MATLAB Linear Algebra and Data Analysis Toolkit

## Introduction
This repository contains a collection of MATLAB functions designed to facilitate various operations in linear algebra and data analysis. These functions include tools for calculating spaces and subspaces, performing matrix operations, and analyzing data through polynomial fitting and principal component analysis.

## Function Descriptions

### Column Space (`columnSpace`)
Calculates the column space of a matrix, which represents all possible outputs (linear combinations) of the matrix when multiplying it by a vector.

### Divided Difference (`dividedDifference`)
Computes the divided differences for a given set of points, useful in numerical methods for polynomial interpolation.

### Fundamental Subspaces (`fundamentalSubspaces`)
Finds the four fundamental subspaces of a matrix: column space, row space, null space, and left null space.

### Left Inverse (`leftInverse`)
Calculates the left inverse of a matrix, if it exists. This is the inverse that can be multiplied on the left side of the original matrix to yield the identity matrix.

### Left Null Space (`leftNullSpace`)
Determines the left null space of a matrix, which consists of all vectors that, when post-multiplied by the matrix, result in the zero vector.

### Null Space (`nullSpace`)
Finds the null space of a matrix, encompassing all vectors that, when multiplied by the matrix, yield the zero vector.

### Orthonormal Subspaces (`orthonormalSubspaces`)
Returns all the fundamental subspaces of a matrix but in an orthonormal form, ensuring all vectors are orthogonal and of unit length.

### Polynomial Fit (`polynomialFit`)
Fits a polynomial of specified degree to a set of data points using least squares estimation, ideal for curve fitting and regression models.

### Principal Component Analysis (`principalca`)
Performs principal component analysis on a dataset to reduce dimensionality while preserving as much variance as possible. It returns the loadings, explained variance, and principal components.

### Pseudoinverse (`pseudoinverse`)
Computes the Moore-Penrose pseudoinverse of a matrix, used for solving linear least squares problems.

### Rank Normal Form (`rankNormalForm`)
Transforms a matrix into its rank normal form using specific row and column operations. This function outputs the transformation matrices along with the rank form matrix.

### Right Inverse (`rightInverse`)
Calculates the right inverse of a matrix, if it exists. This is the inverse that can be multiplied on the right side of the original matrix to produce the identity matrix.

### Row Space (`rowSpace`)
Determines the row space of a matrix, representing all possible linear combinations of its row vectors.

## Installation
To use these functions, clone this repository and add the directory to your MATLAB path:
```matlab
addpath('path_to_directory')
```

## Usage Example is in the sample_usage_livescript file
