def matrix_dot_vector(a: list[list[int|float]], b: list[int|float]) -> list[int|float]:
	# Return a list where each element is the dot product of a row of 'a' with 'b'.
	# If the number of columns in 'a' does not match the length of 'b', return -1.

	res = []

	# base case
	if len(a) != len(b): 
		return -1

	for row in a:
		row_sum = sum(a_ele * b_ele for a_ele, b_ele in zip(row, b))
		res.append(row_sum)
	
	return res