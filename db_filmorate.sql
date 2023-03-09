CREATE TABLE "film" (
  "film_id" bigint PRIMARY KEY NOT NULL,
  "rating_id" bigint NOT NULL,
  "name" varchar(200) NOT NULL,
  "discription" varchar(200) NOT NULL,
  "release_date" varchar(200) NOT NULL,
  "length" int NOT NULL
);

CREATE TABLE "rating_mvp" (
  "rating_id" bigint PRIMARY KEY NOT NULL,
  "name" varchar(200) UNIQUE NOT NULL
);

CREATE TABLE "category" (
  "category_id" bigint PRIMARY KEY NOT NULL,
  "name" varchar(200) UNIQUE NOT NULL
);

CREATE TABLE "film_category" (
  "film_category_id" bigint PRIMARY KEY NOT NULL,
  "film_id" bigint NOT NULL,
  "category_id" bigint NOT NULL
);

CREATE TABLE "user" (
  "user_id" bigint PRIMARY KEY NOT NULL,
  "email" varchar(200) NOT NULL,
  "login" varchar(200) NOT NULL,
  "name" varchar(200) NOT NULL,
  "birthday" varchar(200) NOT NULL
);

CREATE TABLE "friendship" (
  "user_1" bigint NOT NULL,
  "user_2" bigint NOT NULL,
  "status" boolean NOT NULL,
  PRIMARY KEY ("user_1", "user_2")
);

CREATE TABLE "like" (
  "like_id" bigint PRIMARY KEY NOT NULL,
  "film_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "date" varchar NOT NULL
);

ALTER TABLE "film" ADD CONSTRAINT "fk_film_rating_id" FOREIGN KEY ("rating_id") REFERENCES "rating_mvp" ("rating_id");

ALTER TABLE "film_category" ADD CONSTRAINT "fk_film_category_film_id" FOREIGN KEY ("film_id") REFERENCES "film" ("film_id");

ALTER TABLE "film_category" ADD CONSTRAINT "fk_film_category_category_id" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");

ALTER TABLE "friendship" ADD CONSTRAINT "fk_friendship_user_1" FOREIGN KEY ("user_1") REFERENCES "user" ("user_id");

ALTER TABLE "friendship" ADD CONSTRAINT "fk_friendship_user_2" FOREIGN KEY ("user_2") REFERENCES "user" ("user_id");

ALTER TABLE "like" ADD CONSTRAINT "fk_like_film_id" FOREIGN KEY ("film_id") REFERENCES "film" ("film_id");

ALTER TABLE "like" ADD CONSTRAINT "fk_like_user_id" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id");
