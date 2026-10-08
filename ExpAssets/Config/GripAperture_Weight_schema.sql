CREATE TABLE participants (
    id integer primary key autoincrement not null,
    userhash text not null,
    sex text not null,
    age integer not null,
    handedness text not null,
    created text not null
);

CREATE TABLE trials (
    id integer primary key autoincrement not null,
    participant_id integer not null references participants(id),
    block_num integer not null,
    trial_num integer not null,
    practicing text not null,
    task_type text not null,
    target_loc text not null,
    target_weight text not null,
    distractor_weight text not null,
    go_signal_onset text not null,
    distance_threshold text not null,
    target_onset text not null,
    response_time text not null,
    movement_time text not null,
    object_grasped text not null
);

