def calculate_matrix_mean(matrix: list[list[float]], mode: str) -> list[float]:

	means = []
	
	if mode == 'column':
		for i in range(len(matrix[0])):
			col_mean = [row[i] for row in matrix]
			means.append(sum(col_mean) / len(col_mean))

	elif mode == 'row':
		for row in matrix:
			means.append(sum(row) / len(row))
	else :
		return []
	
	return means