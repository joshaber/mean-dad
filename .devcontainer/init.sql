CREATE TABLE chores (
    id              SERIAL PRIMARY KEY,
    title           text,
    person          text,
    due_date        date,
    done_at         timestamp
);

INSERT INTO chores (title, person, due_date) VALUES
    (
        'Make your bed',
        'Lily',
        NOW()
    ),
    (
        'Make your bed',
        'Larry',
        NOW()
    ),
    (
        'Feed Pippin',
        'Lily',
        NOW()
    ),
    (
        'Set the table',
        'Larry',
        NOW()
    )
;
