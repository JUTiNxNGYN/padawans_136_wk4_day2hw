INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    customer_address
) VALUES(
    1,
    'Justin',
    'Nguyen',
    'justin@CT.com',
    12412,
    '1234 Main St.'
)

INSERT INTO movie(
    movie_id,
    title,
    movie_description,
    movie_length,
    rating,
    release_year
) VALUES(
    1,
    'Top Gun: Maverick',
    'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN..',
    130,
    'PG-13',
    '2022'
), (
    2,
    'Moana',
    'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana\s island, she answers the Ocean\s call to seek out the Demigod to set things right.',
    107,
    'PG',
    '2016'
), (
    3,
    'The Batman',
    'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana\s island, she answers the Ocean\s call to seek out the Demigod to set things right.',
    176,
    'PG-13',
    '2022'
)

INSERT INTO concession(
    concession_id,
    movie_id,
    showtime,
    seat_id
) VALUES(
    1,
    1,
    730,
    1
)

-- Could not add more 'duplicate key values violates unique constraint "concession_pkey"'
--, (
-- 2,
-- 2,    
-- 530,
-- 2
-- )

INSERT INTO ticket(
    ticket_id,
    customer_id,
    movie_id,
    concession_id,
    showtime,
    seat_id,
    title,
    price
) VALUES(
    1,
    1,
    1,
    1,
    730,
    1,
    'Top Gun: Maverick',
    799
-- COULDN'T ADD MORE VALUES 'ticket_pkey' error

-- ),
-- (
--     2,
--     2,
--     2,
--     2,
--     630,
--     2,
--     'Moana',
--     699
-- ), (
--     3,
--     3,
--     3,
--     3,
--     530,
--     3,
--     'The Batman',
--     599
-- )