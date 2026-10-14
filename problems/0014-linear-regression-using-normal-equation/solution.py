import numpy as np
def linear_regression_normal_equation(X: list[list[float]], y: list[float]) -> list[float]:
	
	X = np.array(X)
	y = np.array(y)

	thetha = (np.linalg.inv(X.T @ X)@ (X.T @ y))

	thetha = np.round(thetha, 4)

	return thetha.tolist()