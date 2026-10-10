import numpy as np

def transform_matrix(A: list[list[int|float]], T: list[list[int|float]], S: list[list[int|float]]) -> list[list[int|float]]:
	
	# base case for T & S 
	det_T = np.linalg.det(T)
	det_S = np.linalg.det(S)

	if np.isclose(det_T, 0) or np.isclose(det_S, 0) :
		return -1
	
	inv_T = np.linalg.inv(T)

	transformed_matrix = inv_T @ A @ S

	return transformed_matrix