CREATE TABLE "users" (
"id" serial PRIMARY KEY,
"first_name" varchar NOT NULL,
"last_name" varchar NOT NULL,
"email" varchar NOT NULL,
"password" varchar NOT NULL,
"age" INT,
"nationality" varchar NOT NULL
"cart" varchar NOT NULL
);


CREATE TABLE "courses" (
"id" serial PRIMARY KEY,
"course_name" varchar NOT NULL,
"course_description" varchar NOT NULL,
"course_duration" INT NOT NULL,
"course_price" INT NOT NULL,
"course_level" varchar NOT NULL,
"course_teacher" varchar NOT NULL,
"course_image" varchar NOT NULL
);

CREATE TABLE "course_videos" (
"id" serial PRIMARY KEY,
"video_name" varchar NOT NULL
);

CREATE TABLE "categories" (
"id" serial PRIMARY KEY,
"category_name" varchar NOT NULL
);


table users {
id serial [PK]
first_name varchar [NOT NULL]
last_name varchar [NOT NULL]
email varchar [NOT NULL]
password varchar [NOT NULL]
age INT
nationality varchar [NOT NULL]
cart varchar [NOT NULL]
}

table courses {
id serial [PK]
course_name varchar [NOT NULL]
course_description varchar [NOT NULL]
course_duration INT [NOT NULL]
course_price INT [NOT NULL]
course_level varchar [NOT NULL]
course_teacher varchar [NOT NULL]
course_image varchar [NOT NULL]
}

table course_videos {
id serial [PK]
video_name varchar [NOT NULL]
}

table categories {
id serial [PK]
category_name varchar [NOT NULL]
}