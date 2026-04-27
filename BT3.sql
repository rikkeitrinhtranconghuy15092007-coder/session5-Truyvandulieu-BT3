SELECT driver_id, driver_name, status, trust_score, distance_km
FROM Drivers
WHERE status = 'AVAILABLE'          -- Điều kiện 1: Đang rảnh
  AND trust_score >= 80             -- Điều kiện 2: Điểm tín nhiệm >= 80 (Hoặc >= :min_trust_score)
ORDER BY 
    distance_km ASC,                -- Ưu tiên 1: Khoảng cách gần nhất (Tăng dần)
    trust_score DESC;               -- Ưu tiên 2: Cùng khoảng cách thì ai điểm cao hơn xếp trước (Giảm dần)