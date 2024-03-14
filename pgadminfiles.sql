-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
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


