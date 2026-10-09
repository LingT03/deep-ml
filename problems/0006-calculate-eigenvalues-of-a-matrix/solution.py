def calculate_eigenvalues(matrix: list[list[float|int]]) -> list[float]:
	
	a, b = matrix[0]
	c, d = matrix[1]

	det = (a * d) - (c * b)
	
	trace = a + d 
	
	desc = trace * trace - 4 * det
	sqrt = desc ** 0.5
	
	e1 = (trace + sqrt ) / 2

	e2 = (trace - sqrt ) / 2

	return [e1, e2]