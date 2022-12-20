-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "crowdfunding" (
    "cf_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "blurb" varchar(50)   NOT NULL,
    "goal" integer   NOT NULL,
    "pledged" integer   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_at" date   NOT NULL,
    "deadline" date   NOT NULL,
    "staff_pick" varchar   NOT NULL,
    "spotlight" varchar   NOT NULL,
    "category_sub-category" varchar   NOT NULL,
    CONSTRAINT "pk_crowdfunding" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "backers" (
    "backer_id" varchar   NOT NULL,
    "cf_id" int   NOT NULL,
    "email" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    CONSTRAINT "pk_backers" PRIMARY KEY (
        "backer_id"
     )
);

