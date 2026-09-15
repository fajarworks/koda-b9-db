INSERT INTO "category" ("name") VALUES 
('romansa'),
('horor'),
('komik'),
('ensiklopedia'),
('fantasi'),
('biografi'),
('sejarah'),
('misteri'),
('sastra'),
('pengembangan diri');

INSERT INTO "bookshelf" ("capacity") VALUES
(100),
(121),
(135),
(112),
(180),
(141),
(82),
(182),
(105),
(107),
(18);

INSERT INTO "officer" ("name") VALUES
('muftin'),
('sapri'),
('parto'),
('tukiyem'),
('bambang'),
('abdullah'),
('sumanto'),
('sutrisno'),
('charles'),
('habibie'),
('kabuto');

INSERT INTO book ("title","author","bookshelf_id","category_id") VALUES
('Laskar Pelangi', 'Andrea Hirata', 1, 1),
('Bumi', 'Tere Liye', 2, 2),
('Atomic Habits', 'James Clear', 3, 3),
('Clean Code', 'Robert C. Martin', 4, 4),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 5, 5),
('Negeri 5 Menara', 'Ahmad Fuadi', 6, 6),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 7, 7),
('The Pragmatic Programmer', 'Andrew Hunt', 8, 8),
('Dilan 1990', 'Pidi Baiq', 9, 9),
('Sapiens', 'Yuval Noah Harari', 10, 10);

INSERT INTO lending ("start_time", "end_time","lender", "book_id", "officer_id") VALUES
('2026-07-01', '2026-07-08','arif', 1, 1),
('2026-07-02', '2026-07-09','cahyo', 2, 2),
('2026-07-03', '2026-07-10','azis', 3, 3),
('2026-07-04', '2026-07-11','bayu', 4, 4),
('2026-07-05', '2026-07-12','akmal', 5, 5),
('2026-07-06', '2026-07-13','adinda', 6, 6),
('2026-07-07', '2026-07-14','nurma', 7, 7),
('2026-07-08', '2026-07-15','azizah', 8, 8),
('2026-07-09', '2026-07-16','fauziah', 9, 9),
('2026-07-10', '2026-07-17','nabila', 10, 10);
