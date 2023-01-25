CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar NOT NULL UNIQUE,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "teachers" (
  "id" serial PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "img_url" varchar NOT NULL
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "teacher_id" int NOT NULL,
  "category_id" int NOT NULL,
  "level_id" int NOT NULL,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL
);

CREATE TABLE "users_courses" (
  "id" serial PRIMARY KEY,
  "user_id" int NOT NULL,
  "course_id" int NOT NULL
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "course_id" int NOT NULL,
  "title" varchar NOT NULL,
  "duration" time NOT NULL,
  "video_url" varchar NOT NULL,
  "img_url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "levels" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "levels" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");