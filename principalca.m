function [loadings, explainedVariance, cumulativeVariance] = principalca(X, varianceThreshold)
    %This function performs a principal component analysis, and returns the
    %loadings of each component
    % Step 1: Normalize the data (Z-score normalization)
    X_normalized = (X - mean(X)) ./ std(X);

    % Step 2: Compute the covariance matrix
    CovMatrix = cov(X_normalized);

    % Step 3: Perform eigen decomposition
    [eigenvectors, eigenvalues] = eig(CovMatrix);

    % Step 4: Extract the diagonal of eigenvalues matrix to sort them
    eigenvalues = diag(eigenvalues);

    % Sort eigenvalues and corresponding eigenvectors
    [sortedEigenvalues, sortOrder] = sort(eigenvalues, 'descend');
    sortedEigenvectors = eigenvectors(:, sortOrder);

    % Calculate explained variance
    explainedVariance = sortedEigenvalues / sum(sortedEigenvalues);
    cumulativeVariance = cumsum(explainedVariance);

    % Determine the number of components to keep based on the variance threshold
    numComponents = find(cumulativeVariance >= varianceThreshold, 1, 'first');

    if isempty(numComponents)
        numComponents = length(explainedVariance); % In case threshold is not met, use all components
    end

    % Reduce the eigenvectors to the number of components
    loadings = sortedEigenvectors(:, 1:numComponents);
    explainedVariance = explainedVariance(1:numComponents);
    cumulativeVariance = cumulativeVariance(numComponents);

    % Display loadings with column mapping
    disp(['Loadings (Principal Component weights) mapped to original columns:']);
    for i = 1:numComponents
        disp(['Component ', num2str(i), ':']);
        disp(loadings(:, i));
    end
    disp('Explained Variance by each Principal Component:');
    disp(explainedVariance);
    disp('Cumulative Variance explained by selected components:');
    disp(cumulativeVariance);
end
