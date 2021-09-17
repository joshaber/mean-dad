CREATE TABLE chores (
    id              SERIAL PRIMARY KEY,
    title           text,
    person          text,
    due_date        date,
    done_at         timestamp
);

INSERT INTO chores (title, due_date) VALUES
    (
        'Make your bed',
        NOW()
    ),
    (
        'Feed Pippin',
        NOW()
    ),
    (
        'Set the table',
        NOW()
    )
;
