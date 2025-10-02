CREATE TABLE website_interactions (
    session_id VARCHAR(50),
    user_id VARCHAR(50),
    page_name VARCHAR(100),
    component_clicked VARCHAR(100),
    interaction_type VARCHAR(50),
    content_type VARCHAR(50),
    timestamp TIMESTAMP
);

INSERT INTO website_interactions (
    session_id, user_id, page_name, component_clicked, interaction_type, content_type, timestamp
) VALUES
('S001', 'U1001', 'Homepage', 'Contact Us Button', 'click', 'CTA', '2025-09-01 10:15:00'),
('S002', 'U1002', 'Insights', 'Investment PDF', 'download', 'PDF', '2025-09-01 10:25:00'),
('S003', 'U1003', 'Videos', 'Retirement Strategy Video', 'play', 'Video', '2025-09-01 11:05:00'),
('S004', 'U1004', 'Article Hub', 'Market Outlook 2025', 'click', 'Article', '2025-09-01 12:00:00'),
('S005', 'U1005', 'Homepage', 'Contact Us Button', 'click', 'CTA', '2025-09-01 12:45:00'),
('S006', 'U1006', 'Videos', 'Tax Planning 101', 'play', 'Video', '2025-09-01 13:30:00'),
('S007', 'U1007', 'Insights', 'Estate Planning PDF', 'download', 'PDF', '2025-09-01 14:10:00'),
('S008', 'U1008', 'Homepage', 'Contact Us Button', 'click', 'CTA', '2025-09-01 15:00:00'),
('S009', 'U1009', 'Article Hub', 'Wealth Transfer Strategies', 'click', 'Article', '2025-09-01 15:30:00'),
('S010', 'U1010', 'Insights', 'AI and Wealth Management', 'click', 'Article', '2025-09-01 16:00:00');
SELECT * FROM website_interactions;
SELECT content_type, COUNT(*) AS total_interactions
FROM website_interactions
GROUP BY content_type
ORDER BY total_interactions DESC;
SELECT COUNT(*) AS contact_us_clicks
FROM website_interactions
WHERE component_clicked = 'Contact Us Button';
SELECT COUNT(*) AS contact_us_clicks
FROM website_interactions
WHERE component_clicked = 'Contact Us Button';