SELECT 
    d.id,
    d.driver_name,
    d.status,
    d.trust_score,
    d.distance_km,
    d.current_lat,
    d.current_lng,
    d.distance_km AS priority_distance,
    d.trust_score AS priority_trust
FROM drivers d
WHERE d.status = 'AVAILABLE'
  AND d.trust_score >= LEAST(GREATEST(:min_trust_score, 0), 100) 
ORDER BY 
    d.distance_km ASC,         
    d.trust_score DESC      
LIMIT 20;                       
