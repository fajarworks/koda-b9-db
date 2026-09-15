create table category (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(255)
);
create table bookshelf (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    capacity INT
);
create table book (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    category_id INT REFERENCES category(id),
    bookshelf_id INT REFERENCES bookshelf(id)
);

create table officer (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(255)
);
create table lending (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    start_time date,
    end_time date,
    lender VARCHAR(255),
    officer_id INT REFERENCES officer(id),
    book_id INT REFERENCES book(id)
);