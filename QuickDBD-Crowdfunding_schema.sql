<<<<<<< HEAD
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Hgp1xD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS campaign;
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR(255) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(255) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(255) NOT NULL,
    subcategory_id VARCHAR(255) NOT NULL
);
SELECT * FROM campaign

DROP TABLE IF EXISTS category;
CREATE TABLE category (
    category_id VARCHAR(255) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

SELECT * FROM category

DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name_ VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

SELECT * FROM contacts

DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory_name VARCHAR(50) NOT NULL
);

SELECT * FROM subcategory

ALTER TABLE campaign ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(category_id);
ALTER TABLE campaign ADD CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id);
ALTER TABLE campaign ADD CONSTRAINT fk_contacts FOREIGN KEY (contact_id) REFERENCES contacts(contact_id);


=======
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Hgp1xD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" INT(10,2)   NOT NULL,
    "pledged" INT(10,2)   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category_name" VARCHAR(50)   NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name_" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory_name" VARCHAR(50)   NOT NULL
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

>>>>>>> 9efb9497476af760e642e2560665eb2f70fb7b87
