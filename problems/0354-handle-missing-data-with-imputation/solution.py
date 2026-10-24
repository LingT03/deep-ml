import numpy as np

def impute_missing_data(data: np.ndarray, strategy: str = 'mean') -> np.ndarray:
    data = data.copy()
    
    _, cols = data.shape
    
    for j in range(cols):
        col = data[:, j]
        mask = np.isnan(col)
        
        if mask.all():
            continue
            
        valid_data = col[~mask]
        
        if strategy == 'mean':
            fill_val = np.mean(valid_data)
        elif strategy == 'median':
            fill_val = np.median(valid_data)
        elif strategy == 'mode':
            vals, counts = np.unique(valid_data, return_counts=True)
            max_count = np.max(counts)
            fill_val = np.min(vals[counts == max_count])
                
        data[mask, j] = fill_val
        
    return data