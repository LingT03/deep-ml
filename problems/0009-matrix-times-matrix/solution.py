def matrixmul(a:list[list[int|float]],
              b:list[list[int|float]])-> list[list[int|float]]:
	
    a_row, a_col = len(a), len(a[0])
    b_row, b_col = len(b), len(b[0])

    if a_col != b_row:
        return -1 

    c = [[0 for _ in range(b_col)]for _ in range(a_row)]

    for i in range(a_row):
        for j in range(b_col):
            for k in range(a_col): 
                c[i][j] += a[i][k] * b[k][j]
    
    return c 

