function B = pseudoinverse(A)
    [m, n] = size(A);  % get the dimensions of A
    r = rank(A);       % calculate the rank of A
    
    if r == m && m <= n
        % A is full row rank and possibly wide or square
        B = A' / (A * A');  % compute the right inverse
    elseif r == n && n <= m
        % A is full column rank and possibly tall or square
        B = (A' * A) \ A';  % compute the left inverse
    else
        % A does not have a full rank matching either dimension criterion
        B = [];  % return an empty matrix if no proper pseudoinverse is applicable
    end
end
