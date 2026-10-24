def min_max(x: list[float]) -> list[float]:
    """
    Perform Min-Max normalization to scale values to [0, 1].
    
    Args:
        x: A list of numerical values
    
    Returns:
        A new list with values normalized to [0, 1]
    """
    min_n = min(x)
    max_n = max(x)

    denom = max(x) - min(x)
    
    return [((i - min_n) / denom) for i in x]