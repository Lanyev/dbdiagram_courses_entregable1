CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" INT,
  "nationality" varchar NOT NULL,
  "cart" varchar NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "category_id" uuid NOT NULL,
  "course_video_id" uuid NOT NULL,
  "course_name" varchar NOT NULL,
  "course_description" varchar NOT NULL,
  "course_duration" INT NOT NULL,
  "course_price" INT NOT NULL,
  "course_level" varchar NOT NULL,
  "course_teacher" varchar NOT NULL,
  "course_image" varchar NOT NULL
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "video_name" varchar NOT NULL,
  "img_url" varchar NOT NULL
);

CREATE TABLE "course_images" (
  "id" uuid PRIMARY KEY,
  "img_url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "category_name" varchar NOT NULL
);

CREATE TABLE "carts" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "cart_id" uuid NOT NULL,
  "total" money NOT NULL
);

CREATE TABLE "carts_courses" (
  "id" uuid PRIMARY KEY,
  "course_id" uuid NOT NULL,
  "cart_id" uuid NOT NULL,
  "quantity" INT NOT NULL
);

CREATE TABLE "users_courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "reviews" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL,
  "review" varchar NOT NULL
);

ALTER TABLE "carts_courses" ADD FOREIGN KEY ("cart_id") REFERENCES "carts" ("id");

ALTER TABLE "carts_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "carts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("course_video_id") REFERENCES "course_videos" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("course_id") REFERENCES "users" ("id");

ALTER TABLE "course_images" ADD FOREIGN KEY ("id") REFERENCES "courses" ("id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");
