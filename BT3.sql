class DriverMatchingRequest(BaseModel):
    restaurant_lat: float
    restaurant_lng: float
    min_trust_score: float = 80.0        
    max_distance_km: Optional[float] = 5.0 
    limit: int = 10
    exclude_driver_ids: List[int] = []
