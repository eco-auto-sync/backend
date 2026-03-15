-- EcoSync Database Initial Data
-- Sample data for local development and testing

-- =====================================================
-- Sample Countries
-- =====================================================
INSERT INTO countries (code, name) VALUES
('KR', '대한민국'),
('US', '미국'),
('JP', '일본'),
('CN', '중국'),
('IN', '인도'),
('GB', '영국'),
('DE', '독일'),
('FR', '프랑스');

-- =====================================================
-- Sample Indicators
-- =====================================================
INSERT INTO indicators (name, description) VALUES
('CO2_EMISSIONS', '이산화탄소 배출량 (백만 톤)'),
('GDP', '국내총생산 (10억 달러)'),
('POPULATION', '인구 (백만명)'),
('RENEWABLE_ENERGY', '재생에너지 비율 (%)'),
('FOREST_AREA', '산림면적 (천 헥타르)'),
('PM25', '미세먼지 (µg/m³)'),
('TEMPERATURE', '평균 기온 (°C)'),
('PRECIPITATION', '연강수량 (mm)');

-- =====================================================
-- Sample Stock Data (2024년 기준)
-- =====================================================
-- Korea Data
INSERT INTO stocks (country_id, indicator_id, value, stock_date) VALUES
(1, 1, 651.3, '2024-01-01'),  -- KR, CO2_EMISSIONS
(1, 2, 1784.5, '2024-01-01'), -- KR, GDP
(1, 3, 51.6, '2024-01-01'),   -- KR, POPULATION
(1, 4, 9.7, '2024-01-01'),    -- KR, RENEWABLE_ENERGY
(1, 5, 6294, '2024-01-01'),   -- KR, FOREST_AREA
(1, 6, 26.5, '2024-01-01'),   -- KR, PM25
(1, 7, 12.5, '2024-01-01'),   -- KR, TEMPERATURE
(1, 8, 1577, '2024-01-01');   -- KR, PRECIPITATION

-- USA Data
INSERT INTO stocks (country_id, indicator_id, value, stock_date) VALUES
(2, 1, 5066.8, '2024-01-01'),  -- US, CO2_EMISSIONS
(2, 2, 27359.4, '2024-01-01'), -- US, GDP
(2, 3, 339.9, '2024-01-01'),   -- US, POPULATION
(2, 4, 14.2, '2024-01-01'),    -- US, RENEWABLE_ENERGY
(2, 5, 309461, '2024-01-01'),  -- US, FOREST_AREA
(2, 6, 9.8, '2024-01-01'),     -- US, PM25
(2, 7, 11.9, '2024-01-01'),    -- US, TEMPERATURE
(2, 8, 713, '2024-01-01');     -- US, PRECIPITATION

-- Japan Data
INSERT INTO stocks (country_id, indicator_id, value, stock_date) VALUES
(3, 1, 1050.2, '2024-01-01'),  -- JP, CO2_EMISSIONS
(3, 2, 4101.9, '2024-01-01'),  -- JP, GDP
(3, 3, 123.3, '2024-01-01'),   -- JP, POPULATION
(3, 4, 3.6, '2024-01-01'),     -- JP, RENEWABLE_ENERGY
(3, 5, 24878, '2024-01-01'),   -- JP, FOREST_AREA
(3, 6, 16.2, '2024-01-01'),    -- JP, PM25
(3, 7, 17.3, '2024-01-01'),    -- JP, TEMPERATURE
(3, 8, 1668, '2024-01-01');    -- JP, PRECIPITATION

-- =====================================================
-- Sample Subscriptions
-- =====================================================
INSERT INTO subscriptions (user_id, country_id) VALUES
(1, 1),  -- User 1 subscribes to Korea
(1, 2),  -- User 1 subscribes to USA
(2, 1),  -- User 2 subscribes to Korea
(2, 3),  -- User 2 subscribes to Japan
(3, 2),  -- User 3 subscribes to USA
(3, 4);  -- User 3 subscribes to China
