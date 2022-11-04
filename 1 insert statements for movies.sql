--Movie table has to be created with UI in pgAdmin4
--insert in movie table
insert into
    movies (movie_id, movie_name, movie_genre, imdb_rating)
values
    (101, 'Vertigo', 'Mystery,Romance', 8.3),
    (
        102,
        'The Shawshank Redemption',
        'Crime Fiction',
        9.3
    ),
    (103, '12 Angry Men', 'Drama', 9.0),
    (104, 'The Dark Knight', 'Action', 9.0),
    (105, 'The Matrix', 'Sci-Fi', 8.7),
    (106, 'Se7en', 'Crime', 8.6),
    (107, 'Interstellar', 'Adventure', 8.6),
    (108, 'The Lion King', 'Anumation,Adventure', 8.5);