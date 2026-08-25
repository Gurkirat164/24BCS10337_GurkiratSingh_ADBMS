WITH distinct_weeks AS (
  SELECT DISTINCT
    contact_id,
    DATE_TRUNC('week', event_date) AS touch_week
  FROM marketing_touches
),
streaks AS (
  SELECT
    contact_id,
    touch_week,
    LEAD(touch_week, 1) OVER (PARTITION BY contact_id ORDER BY touch_week) AS next_week_1,
    LEAD(touch_week, 2) OVER (PARTITION BY contact_id ORDER BY touch_week) AS next_week_2
  FROM distinct_weeks
)
SELECT DISTINCT c.email
FROM streaks s
JOIN marketing_touches m ON s.contact_id = m.contact_id
JOIN crm_contacts c ON s.contact_id = c.contact_id
WHERE m.event_type = 'trial_request'
  AND s.next_week_1 = s.touch_week + INTERVAL '1 week'
  AND s.next_week_2 = s.touch_week + INTERVAL '2 weeks';