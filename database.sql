DROP DATABASE IF EXISTS Arepas_Santandereanas_Enterprise;
CREATE DATABASE IF NOT EXISTS Arepas_Santandereanas_Enterprise;
USE Arepas_Santandereanas_Enterprise;
/* DONE, BUT I NEED EMPLOYEE IN BGA*/
CREATE TABLE employee(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    boss_id INT UNSIGNED NULL,
    email VARCHAR(255),
    phone_number VARCHAR(255)
);
/* DONE */
CREATE TABLE office(
    id INT UNSIGNED NOT NULL,
    address VARCHAR(255) NOT NULL,
    manager_id INT UNSIGNED NOT NULL,
    email VARCHAR(255), 
    phone_number VARCHAR(255)
);
/* DONE */
CREATE TABLE raw_materials_stock(
    id INT UNSIGNED NOT NULL,
    pounds_per_unit INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL,
    area_id INT UNSIGNED NOT NULL,
    lot_id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL,
    ingredient_id INT UNSIGNED NOT NULL
);
/* DONE */
CREATE TABLE ingredient(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL
);
/* DONE, Make sure these records are already on the invoices.  */
CREATE TABLE lot(
    id INT UNSIGNED NOT NULL,
    lot_number VARCHAR(255) NOT NULL,
    expiration_date DATE NOT NULL
);
/*DONE */
CREATE TABLE invoice(
    id INT UNSIGNED NOT NULL,
    employee_id INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    supplier_id INT UNSIGNED NOT NULL,
    lot VARCHAR(255) NOT NULL
);
/* DONE */
CREATE TABLE employee_place(
    id INT UNSIGNED NOT NULL,
    employee_id INT UNSIGNED NOT NULL,
    area_id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL
);
/* DONE */
CREATE TABLE supplier(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(255)
);
/* DONE */
CREATE TABLE supplier_x_lot(
    id INT UNSIGNED NOT NULL,
    supplier_id INT UNSIGNED NOT NULL,
    lot_id INT UNSIGNED NOT NULL
);
/* DONE */
CREATE TABLE area(
    id INT UNSIGNED NOT NULL,
    area_name VARCHAR(255) NOT NULL,
    office_id INT UNSIGNED NOT NULL,
    description VARCHAR(255)
);

/* DONE */
CREATE TABLE ingredients_in_invoice(
    id INT UNSIGNED NOT NULL,
    invoice_id INT UNSIGNED NOT NULL,
    ingredient_id INT UNSIGNED NOT NULL,
    quantity INT NOT NULL,
    description VARCHAR(255),
    price INT UNSIGNED NOT NULL
);
--
ALTER TABLE
    ingredient ADD UNIQUE ingredient_name_unique(name);
ALTER TABLE
    lot ADD UNIQUE lot_lot_number_unique(lot_number);
--
ALTER TABLE
    employee ADD CONSTRAINT employee_pk PRIMARY KEY (id);
    ALTER TABLE
    employee_place ADD CONSTRAINT employeePlace_pk PRIMARY KEY (id);
ALTER TABLE
    office ADD CONSTRAINT office_pk PRIMARY KEY (id);
ALTER TABLE
    supplier ADD CONSTRAINT supplier_pk PRIMARY KEY (id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_pk PRIMARY KEY (id);
ALTER TABLE
    lot ADD CONSTRAINT lot_pk PRIMARY KEY (id);
ALTER TABLE
    area ADD CONSTRAINT area_pk PRIMARY KEY (id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_pk PRIMARY KEY (id);
ALTER TABLE
    ingredient ADD CONSTRAINT ingredient_pk PRIMARY KEY (id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT lot_pk PRIMARY KEY (id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_pk PRIMARY KEY (id);
--
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT fk_office_manager_id FOREIGN KEY(manager_id) REFERENCES employee(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT ingredients_in_invoice_ingredient_id_foreign FOREIGN KEY(ingredient_id) REFERENCES ingredient(id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT ingredients_in_invoice_invoice_id_foreign FOREIGN KEY(invoice_id) REFERENCES invoice(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_ingredient_id_foreign FOREIGN KEY(ingredient_id) REFERENCES ingredient(id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_employee_id_foreign FOREIGN KEY(employee_id) REFERENCES employee(id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_supplier_id_foreign FOREIGN KEY(supplier_id) REFERENCES supplier(id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_supplier_id_foreign FOREIGN KEY(supplier_id) REFERENCES supplier(id);

ALTER TABLE
    employee ADD CONSTRAINT employee_boss_id_foreign FOREIGN KEY(boss_id) REFERENCES employee(id);
ALTER TABLE
    area ADD CONSTRAINT area_office_id_foreign FOREIGN KEY(office_id) REFERENCES office(id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    employee_place ADD CONSTRAINT employee_place_employee_id_foreign FOREIGN KEY(employee_id) REFERENCES employee(id);
ALTER TABLE
    employee_place ADD CONSTRAINT employee_place_area_id_foreign FOREIGN KEY(area_id) REFERENCES area(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_area_id_foreign FOREIGN KEY(area_id) REFERENCES area(id);