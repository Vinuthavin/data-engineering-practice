WITH parsed_event AS(
    select
    event_id,
    user_id,
    event_time,
    value,
    window(event-time, '5 minutes') AS win --Group by event time, not arrival time
    from input_stream
    WATERMARK event_time AS event_time - INTERVAL '10' MINUTES --Allow late data for 10 minutes
)
select
win.start
win.end,
count(*) as events,
sum(value) as total_value
from parsed_events
group by win; --close window only after watermark passes



     

)