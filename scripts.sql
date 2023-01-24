insert into categories 
(name)

values 
('Web Development'),
('Programming Languages');

inser into levels 
(name)

values 
('Beginner'),
('Intermediate'),
('Advanced');

insert into teachers
(first_name, last_name, img_url)

values 
('Juan', 'Perez' 'juanperez@alancourses.com'),
('Maria', 'Gomez', 'mariagomez@alancourses.com'),
('Pedro', 'Gonzalez', 'pedrogonzalez@alancourses.com'),
('Jose', 'Martinez', 'josemartinedz@alancourses.com'),
('Luis', 'Rodriguez', 'luisrodriguez@alancourses.com'),
('Ana', 'Lopez', 'analopez@alancourses.com'),
('Sofia', 'Gutierrez', 'sofiagutierrez@alancourses.com'),
('Miguel', 'Hernandez', 'miguelhernandez@alancourses.com');

insert into courses
(teacher_id, level_id, title, description)

values
('1', '1', 'HTML5', 'HTML5 is the latest version of HTML, the markup language used to create web pages. HTML5 is a markup language used for structuring and presenting content on the World Wide Web. It is the fifth and current major version of the HTML standard, and subsumes XHTML.'),

('2', '1', 'CSS3', 'CSS3 is the latest evolution of the Cascading Style Sheets language and aims at extending CSS2.1. Many of these new features are already being implemented in many major browsers. The module defines new values for many of the properties defined in CSS2.1, and adds new properties.'),

('3', '1', 'JavaScript', 'JavaScript is a scripting or programming language that allows you to implement complex features on web pages — every time a web page does more than just sit there and display static information for you to look at — displaying timely content updates, interactive maps, animated 2D/3D graphics, scrolling video jukeboxes, etc. — you can bet that JavaScript is probably involved.'),

('4', '1', 'PHP', 'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages. PHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP.'),

('5', '1', 'Python', 'Python is a programming language that lets you work more quickly and integrate your systems more effectively. You can learn to use Python and see almost immediate gains in productivity and lower maintenance costs.'),

('6', '1', 'Java', 'Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers "write once, run anywhere" (WORA), meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.'),

('7', '1', 'C++', 'C++ is a general-purpose programming language. It has imperative, object-oriented and generic programming features, while also providing facilities for low-level memory manipulation. It was designed with a bias toward system programming and embedded, resource-constrained and large systems, with performance, efficiency and flexibility of use as its design highlights.'),

('8', '1', 'C#', 'C# is a general-purpose, multi-paradigm programming language encompassing strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines. It was developed around 2000 by Microsoft within its .NET initiative and later approved as a standard by Ecma (ECMA-334) and ISO (ISO/IEC 23270:2018). C# is one of the programming languages designed for the Common Language Infrastructure.');


insert into course_videos 
(id_course, title, duration, video_url, portada_url)

values 
('1', 'HTML5', '1:30', 'https://alancourses.com/watchmyvideo1', 'https://alancourses.com/image1'),
('2', 'CSS3', '1:30', 'https://alancourses.com/watchmyvideo2', 'https://alancourses.com/image2'),
('3', 'JavaScript', '1:30', 'https://alancourses.com/watchmyvideo3', 'https://alancourses.com/image3'),
('4', 'PHP', '1:30', 'https://alancourses.com/watchmyvideo4', 'https://alancourses.com/image4'),
('5', 'Python', '1:30', 'https://alancourses.com/watchmyvideo5', 'https://alancourses.com/image5'),
('6', 'Java', '1:30', 'https://alancourses.com/watchmyvideo6', 'https://alancourses.com/image6'),
('7', 'C++', '1:30', 'https://alancourses.com/watchmyvideo7', 'https://alancourses.com/image7'),
('8', 'C#', '1:30', 'https://alancourses.com/watchmyvideo8', 'https://alancourses.com/image8');


insert into categories_courses
(id_category, id_course)

values 
('1', '1'),
('1', '2'),
('1', '3'),
('1', '4'),
('1', '5'),
('1', '6'),
('1', '7'),
('1', '8'),

('2', '1'),
('2', '2'),
('2', '3'),
('2', '4'),
('2', '5'),
('2', '6'),
('2', '7'),
('2', '8');

insert into users
(first_name, last_name, email, password, img_url)

values 
('Pablo', 'Perez', 'pabloperez@correo.com', '123456', 'https://alancourses.com/image1'),
('Juan', 'Garcia', 'juangarcia@correo.com', '654321', 'https://alancourses.com/image2'),
('Maria', 'Rodriguez', 'mariarodriguez@correo.com', '789012', 'https://alancourses.com/image3'),
('Carlos', 'Sanchez', 'carlossanchez@correo.com', '345678', 'https://alancourses.com/image4'),
('Ana', 'Martinez', 'anamartinez@correo.com', '901234', 'https://alancourses.com/image5'),
('Luis', 'Gonzalez', 'luisgonzalez@correo.com', '567890', 'https://alancourses.com/image6'),
('Pedro', 'Jimenez', 'pedrojimenez@correo.com', '012345', 'https://alancourses.com/image7'),
('Isabel', 'Lopez', 'isabellopez@correo.com', '678901', 'https://alancourses.com/image8'),
('Sofia', 'Perez', 'sofiaperez@correo.com', '234567', 'https://alancourses.com/image9'),
('Alejandro', 'Garcia', 'alejandrogarcia@correo.com', '890123', 'https://alancourses.com/image10'),
('Jorge', 'Rodriguez', 'jorgerodriguez@correo.com', '456789', 'https://alancourses.com/image11');

insert into users_courses
(id_user, id_course)

values 
('1', '1'),
('1', '2'),
('1', '3'),

('2', '1'),
('2', '2'),
('2', '3'),

('3', '1'),
('3', '2'),
('3', '3'),

('4', '1'),
('4', '2'),
('4', '3'),

('5', '1'),
('5', '2'),
('5', '3'),

('6', '1'),
('6', '2'),
('6', '3'),

('7', '1'),
('7', '2'),
('7', '3'),

('8', '1'),
('8', '2'),
('8', '3'),

('9', '1'),
('9', '2'),
('9', '3'),

('10', '1'),
('10', '2'),
('10', '3'),

('11', '1'),
('11', '2'),
('11', '3');

insert into reviews 
(id_user, id_course, review, rating)

values 
//add 1 review per user depending on the course they have taken

('1', '1', 'Excelente curso, muy recomendado', '5'),
('1', '2', 'Excelente curso, muy recomendado', '5'),
('1', '3', 'Excelente curso, muy recomendado', '5'),

('2', '1', 'Excelente curso, muy recomendado', '5'),
('2', '2', 'Excelente curso, muy recomendado', '5'),
('2', '3', 'Excelente curso, muy recomendado', '5'),

('3', '1', 'Excelente curso, muy recomendado', '5'),
('3', '2', 'Excelente curso, muy recomendado', '5'),
('3', '3', 'Excelente curso, muy recomendado', '5'),

('4', '1', 'Excelente curso, muy recomendado', '5'),
('4', '2', 'Excelente curso, muy recomendado', '5'),
('4', '3', 'Excelente curso, muy recomendado', '5'),

('5', '1', 'Excelente curso, muy recomendado', '5'),
('5', '2', 'Excelente curso, muy recomendado', '5'),
('5', '3', 'Excelente curso, muy recomendado', '5'),

('6', '1', 'Excelente curso, muy recomendado', '5'),
('6', '2', 'Excelente curso, muy recomendado', '5'),
('6', '3', 'Excelente curso, muy recomendado', '5'),

('7', '1', 'Excelente curso, muy recomendado', '5'),
('7', '2', 'Excelente curso, muy recomendado', '5'),
('7', '3', 'Excelente curso, muy recomendado', '5'),

('8', '1', 'Excelente curso, muy recomendado', '5'),
('8', '2', 'Excelente curso, muy recomendado', '5'),
('8', '3', 'Excelente curso, muy recomendado', '5'),

('9', '1', 'Excelente curso, muy recomendado', '5'),
('9', '2', 'Excelente curso, muy recomendado', '5'),
('9', '3', 'Excelente curso, muy recomendado', '5'),

('10', '1', 'Excelente curso, muy recomendado', '5'),
('10', '2', 'Excelente curso, muy recomendado', '5'),
('10', '3', 'Excelente curso, muy recomendado', '5'),

('11', '1', 'Excelente curso, muy recomendado', '5'),
('11', '2', 'Excelente curso, muy recomendado', '5'),
('11', '3', 'Excelente curso, muy recomendado', '5');












