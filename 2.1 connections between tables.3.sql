CREATE TABLE genre(
genre_id 	INT PRIMARY KEY AUTO_INCREMENT,
name_genre VARCHAR(30));
SELECT*FROM genre;
CREATE TABLE book21 (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50), 
    author_id INT NOT NULL, 
    price DECIMAL(8,2), 
    amount INT, 
    genre_id INT,
    FOREIGN KEY (author_id)  REFERENCES author (author_id),
    FOREIGN KEY (genre_id)  REFERENCES genre (genre_id));
SELECT*FROM book21;