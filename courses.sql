CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "course_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "duration" time NOT NULL,
  "video_url" varchar NOT NULL,
  "img_url" varchar NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "teacher_id" uuid NOT NULL,
  "level_id" uuid NOT NULL,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "categories_courses" (
  "id" uuid PRIMARY KEY,
  "category_id" uuid NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "users_courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "teachers" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "img_url" varchar NOT NULL
);

CREATE TABLE "levels" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "reviews" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL,
  "rating" int NOT NULL,
  "comment" varchar NOT NULL
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "categories_courses" ADD FOREIGN KEY ("category_id") REFERENCES "courses" ("id");

ALTER TABLE "categories_courses" ADD FOREIGN KEY ("course_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");

ALTER TABLE "categories_courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "levels" ("id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "categories_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");


