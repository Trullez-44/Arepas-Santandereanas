DROP DATABASE IF EXISTS Arepas_Santandereanas_Enterprise;
CREATE DATABASE IF NOT EXISTS Arepas_Santandereanas_Enterprise;
USE Arepas_Santandereanas_Enterprise;

CREATE TABLE employee(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    boss_id INT UNSIGNED NULL
);

CREATE TABLE office(
    id INT UNSIGNED NOT NULL,
    address VARCHAR(255) NOT NULL
);
CREATE TABLE raw_materials_stock(
    id INT UNSIGNED NOT NULL,
    pounds_per_unit INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL,
    storage_area_id INT UNSIGNED NOT NULL,
    lot_id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL,
    ingredient_id INT UNSIGNED NOT NULL
);
CREATE TABLE ingredient(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE lot(
    id INT UNSIGNED NOT NULL,
    lot_number VARCHAR(255) NOT NULL,
    expiration_date DATE NOT NULL
);

CREATE TABLE invoice(
    id INT UNSIGNED NOT NULL,
    employee_id INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    description VARCHAR(255) NULL,
    total_price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL,
    supplier_id INT UNSIGNED NOT NULL
);
CREATE TABLE employee_place(
    id INT UNSIGNED NOT NULL,
    employee_id INT UNSIGNED NOT NULL,
    area_id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL
);
CREATE TABLE supplier(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);
CREATE TABLE supplier_x_lot(
    id INT UNSIGNED NOT NULL,
    supplier_id INT UNSIGNED NOT NULL,
    lot_id INT UNSIGNED NOT NULL
);
CREATE TABLE area(
    id INT UNSIGNED NOT NULL,
    area_name VARCHAR(255) NOT NULL,
    office_id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NOT NULL
);
CREATE TABLE emails(
    id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL,
    email VARCHAR(255) NOT NULL,
    owner_id INT UNSIGNED NOT NULL
);

CREATE TABLE phone_numbers(
    id INT UNSIGNED NOT NULL,
    prefix VARCHAR(255) NOT NULL,
    description VARCHAR(255) NULL,
    phone_number VARCHAR(255) NOT NULL,
    owner_id INT UNSIGNED NOT NULL
);
CREATE TABLE ingredients_in_invoice(
    id INT UNSIGNED NOT NULL,
    invoice_id INT UNSIGNED NOT NULL,
    ingredient_id INT UNSIGNED NOT NULL
);
--
ALTER TABLE
    ingredient ADD UNIQUE ingredient_name_unique(name);
ALTER TABLE
    lot ADD UNIQUE lot_lot_number_unique(lot_number);
ALTER TABLE
    emails ADD UNIQUE emails_email_unique(email);
--
ALTER TABLE
    employee ADD CONSTRAINT employee_pk PRIMARY KEY (id);

--
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT phone_numbers_owner_id_foreign FOREIGN KEY(owner_id) REFERENCES office(id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT ingredients_in_invoice_ingredient_id_foreign FOREIGN KEY(ingredient_id) REFERENCES ingredient(id);
ALTER TABLE
    emails ADD CONSTRAINT emails_owner_id_foreign FOREIGN KEY(owner_id) REFERENCES supplier(id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT ingredients_in_invoice_invoice_id_foreign FOREIGN KEY(invoice_id) REFERENCES invoice(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_ingredient_id_foreign FOREIGN KEY(ingredient_id) REFERENCES ingredient(id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_employee_id_foreign FOREIGN KEY(employee_id) REFERENCES employee(id);
ALTER TABLE
    emails ADD CONSTRAINT emails_owner_id_foreign FOREIGN KEY(owner_id) REFERENCES office(id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_supplier_id_foreign FOREIGN KEY(supplier_id) REFERENCES supplier(id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT phone_numbers_owner_id_foreign FOREIGN KEY(owner_id) REFERENCES employee(id);
ALTER TABLE
    employee ADD CONSTRAINT employee_boss_id_foreign FOREIGN KEY(boss_id) REFERENCES employee(id);
ALTER TABLE
    area ADD CONSTRAINT area_office_id_foreign FOREIGN KEY(office_id) REFERENCES office(id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT phone_numbers_owner_id_foreign FOREIGN KEY(owner_id) REFERENCES supplier(id);
ALTER TABLE
    emails ADD CONSTRAINT emails_owner_id_foreign FOREIGN KEY(owner_id) REFERENCES employee(id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    employee_place ADD CONSTRAINT employee_place_employee_id_foreign FOREIGN KEY(employee_id) REFERENCES employee(id);
ALTER TABLE
    employee_place ADD CONSTRAINT employee_place_area_id_foreign FOREIGN KEY(area_id) REFERENCES area(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_storage_area_id_foreign FOREIGN KEY(storage_area_id) REFERENCES area(office_id);