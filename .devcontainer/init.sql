CREATE TABLE chores (
    id              SERIAL PRIMARY KEY,
    title           text,
    person          text,
    due_date        date,
    done_at         datetime
);

INSERT INTO chores (title, due_date) VALUES
    (
        'Feed Pippin',
        NOW()
    ),
    (
        'Make your bed',
        NOW()
    ),
    (
        'Set the table',
        NOW()
    )
;
