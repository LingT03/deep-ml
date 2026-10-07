def calculate_covariance_matrix(vectors: list[list[float]]) -> list[list[float]]:
	n_features = len(vectors) # n col
	n_samples = len(vectors[0]) # n rows
	
	means = [sum(feature) / n_samples for feature in vectors]

	cov_matrix = [[0.0] * n_features for _ in range(n_features)]

	for i in range(n_features):
		for j in range(n_features):
			covariance = sum(
				(vectors[i][k] - means[i]) * (vectors[j][k] - means[j])
			 for k in range(n_samples)
			 ) / (n_samples - 1)
			cov_matrix[i][j] = covariance

	return cov_matrix