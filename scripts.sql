INSERT INTO "categories" ("name")
VALUES ('Programming'),
('Design'),
('Business'),
('Marketing'),
('Education');

INSERT INTO "levels" ("name")
VALUES ('Beginner'),
('Intermediate'),
('Advanced');

INSERT INTO "teachers" ("first_name", "last_name", "img_url")
VALUES ('Juan', 'Perez', 'https://alancourses.com/imagepf1'),
('Maria', 'Gomez', 'https://alancourses.com/imagepf2'),
('Pedro', 'Gonzalez', 'https://alancourses.com/imagepf3'),
('Ana', 'Lopez', 'https://alancourses.com/imagepf4'),
('Luis', 'Garcia', 'https://alancourses.com/imagepf5');

INSERT INTO "courses" ("teacher_id", "category_id", "level_id", "title", "description")
VALUES (1, 1, 1, 'Introduction to Programming', 'Learn the basics of programming in this beginner-friendly course'),
(2, 2, 2, 'Intermediate Graphic Design', 'Take your design skills to the next level with this intermediate course'),
(3, 3, 3, 'Advanced Business Strategy', 'Learn advanced business strategies to take your company to the next level'),
(4, 4, 2, 'Intermediate Digital Marketing', 'Learn the latest digital marketing techniques to promote your brand'),
(5, 5, 3, 'Advanced Education Theory', 'Explore advanced education theories and principles to improve your teaching skills');

INSERT INTO "users" ("first_name", "last_name", "email", "password", "age")
VALUES ('Pablo', 'Perez', 'pabloperez@correo.com', '123456', 22),
('Maria', 'Garcia', 'mariagarcia@correo.com', '123456', 25),
('Juan', 'Rodriguez', 'juanrodriguez@correo.com', '123456', 30),
('Ana', 'Martinez', 'anamartinez@correo.com', '123456', 35),
('Luis', 'Gonzalez', 'luisgonzalez@correo.com', '123456', 40),
('Carlos', 'Sanchez', 'carlossanchez@correo.com', '123456', 45),
('Rosa', 'Diaz', 'rosadiaz@correo.com', '123456', 50),
('Jorge', 'Lopez', 'jorgelopez@correo.com', '123456', 55),
('Carmen', 'Perez', 'carmenperez@correo.com', '123456', 60),
('Javier', 'Garcia', 'javiergarcia@correo.com', '123456', 65),
('Andres', 'Martinez', 'andresmartinez@correo.com', '123456', 70);

INSERT INTO "users_courses" ("user_id", "course_id")
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1);

INSERT INTO "course_videos" ("course_id", "title", "duration", "video_url", "img_url")
VALUES (1, 'Lesson 1: Introduction to Variables', '00:30:00', 'https://alancourses.com/video1', 'https://alancourses.com/image1'),
(1, 'Lesson 2: Conditional Statements', '00:40:00', 'https://alancourses.com/video2', 'https://alancourses.com/image2'),
(1, 'Lesson 3: Loops', '00:45:00', 'https://alancourses.com/video3', 'https://alancourses.com/image3'),
(2, 'Lesson 1: Color Theory', '00:35:00', 'https://alancourses.com/video4', 'https://alancourses.com/image4'),
(2, 'Lesson 2: Typography', '00:45:00', 'https://alancourses.com/video5', 'https://alancourses.com/image5');
