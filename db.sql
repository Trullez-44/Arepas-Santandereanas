DROP DATABASE IF EXISTS Arepas_Santandereanas_Enterprise;
CREATE DATABASE IF NOT EXISTS Arepas_Santandereanas_Enterprise;
USE Arepas_Santandereanas_Enterprise;

CREATE TABLE IF NOT EXISTS employee(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    boss_id INT UNSIGNED
);
ALTER TABLE
    employee ADD CONSTRAINT employee_pk PRIMARY KEY (id);
CREATE TABLE IF NOT EXISTS storage_office(
    id INT UNSIGNED NOT NULL,
    address VARCHAR(255) NOT NULL,
    manager_employee_id INT UNSIGNED NOT NULL
);
CREATE TABLE IF NOT EXISTS raw_materials_stock(
    id INT UNSIGNED NOT NULL,
    pounds_per_unit INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL,
    storage_area_id INT UNSIGNED NOT NULL,
    lot_id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL,
    ingredient_id INT UNSIGNED NOT NULL
);
CREATE TABLE IF NOT EXISTS ingredient(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL
);
ALTER TABLE
    ingredient ADD UNIQUE ingredient_name_unique(name);
CREATE TABLE IF NOT EXISTS lot(
    id INT UNSIGNED NOT NULL,
    lot_number VARCHAR(255) NOT NULL,
    expiration_date DATE NOT NULL
);
ALTER TABLE
    lot ADD UNIQUE lot_lot_number_unique(lot_number);
    
CREATE TABLE IF NOT EXISTS invoice(
    id INT UNSIGNED NOT NULL,
    employee_id INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    description VARCHAR(255),
    total_price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL,
    supplier_id INT UNSIGNED NOT NULL
);
CREATE TABLE IF NOT EXISTS supplier(
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS supplier_x_lot(
    id INT UNSIGNED NOT NULL,
    supplier_id INT UNSIGNED NOT NULL,
    lot_id INT UNSIGNED NOT NULL
);
CREATE TABLE IF NOT EXISTS storage_area(
    id INT UNSIGNED NOT NULL,
    area VARCHAR(255) NOT NULL,
    storage_office_id INT UNSIGNED NOT NULL,
    employee_in_charge_id INT UNSIGNED NOT NULL
);
CREATE TABLE IF NOT EXISTS emails(
    id INT UNSIGNED NOT NULL,
    description VARCHAR(255) NULL,
    email VARCHAR(255) NOT NULL,
    owner_id INT UNSIGNED NOT NULL
);
ALTER TABLE
    emails ADD UNIQUE emails_email_unique(email);
CREATE TABLE IF NOT EXISTS phone_numbers(
    id INT UNSIGNED NOT NULL,
    prefix VARCHAR(255) NOT NULL,
    description VARCHAR(255) NULL,
    phone_number VARCHAR(255) NOT NULL,
    owner_id INT UNSIGNED NOT NULL
);
CREATE TABLE IF NOT EXISTS ingredients_in_invoice(
    id INT UNSIGNED NOT NULL,
    invoice_id INT UNSIGNED NOT NULL,
    ingredient_id INT UNSIGNED NOT NULL
);
ALTER TABLE
    emails ADD CONSTRAINT emails_pk PRIMARY KEY (id);
ALTER TABLE
    storage_office ADD CONSTRAINT storage_office_pk PRIMARY KEY (id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT phone_numbers_pk PRIMARY KEY (id);
ALTER TABLE
    supplier ADD CONSTRAINT supplier_pk PRIMARY KEY (id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_pk PRIMARY KEY (id);
ALTER TABLE
    lot ADD CONSTRAINT lot_pk PRIMARY KEY (id);
ALTER TABLE
    storage_area ADD CONSTRAINT storage_area_pk PRIMARY KEY (id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_pk PRIMARY KEY (id);
ALTER TABLE
    ingredient ADD CONSTRAINT ingredient_pk PRIMARY KEY (id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT lot_pk PRIMARY KEY (id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_pk PRIMARY KEY (id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT fk_phone_numbers_storageID_foreign FOREIGN KEY(owner_id) REFERENCES storage_office(id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT ingredients_in_invoice_ingredient_id_foreign FOREIGN KEY(ingredient_id) REFERENCES ingredient(id);
ALTER TABLE
    emails ADD CONSTRAINT fk_supplier_emails FOREIGN KEY(owner_id) REFERENCES supplier(id);
ALTER TABLE
    ingredients_in_invoice ADD CONSTRAINT ingredients_in_invoice_invoice_id_foreign FOREIGN KEY(invoice_id) REFERENCES invoice(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_ingredient_id_foreign FOREIGN KEY(ingredient_id) REFERENCES ingredient(id);
ALTER TABLE
    invoice ADD CONSTRAINT invoice_employee_id_foreign FOREIGN KEY(employee_id) REFERENCES employee(id);
    ALTER TABLE
    invoice ADD CONSTRAINT invoice_supplier_id_foreign FOREIGN KEY(supplier_id) REFERENCES supplier(id);
ALTER TABLE
    emails ADD CONSTRAINT fk_storageOffice_emails FOREIGN KEY(owner_id) REFERENCES storage_office(id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_supplier_id_foreign FOREIGN KEY(supplier_id) REFERENCES supplier(id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT fk_phone_numbers_employeeid_foreign FOREIGN KEY(owner_id) REFERENCES employee(id);
ALTER TABLE
    employee ADD CONSTRAINT employee_boss_id_foreign FOREIGN KEY(boss_id) REFERENCES employee(id);
ALTER TABLE
    storage_area ADD CONSTRAINT storage_area_storage_office_id_foreign FOREIGN KEY(storage_office_id) REFERENCES storage_office(id);
ALTER TABLE
    phone_numbers ADD CONSTRAINT fk_phone_numbers_supplierid_foreign FOREIGN KEY(owner_id) REFERENCES supplier(id);
ALTER TABLE
    storage_office ADD CONSTRAINT storage_office_manager_employee_id_foreign FOREIGN KEY(manager_employee_id) REFERENCES employee(id);
ALTER TABLE
    emails ADD CONSTRAINT fk_employee_emails FOREIGN KEY(owner_id) REFERENCES employee(id);
ALTER TABLE
    supplier_x_lot ADD CONSTRAINT supplier_x_lot_lot_id_foreign FOREIGN KEY(lot_id) REFERENCES lot(id);
ALTER TABLE
    storage_area ADD CONSTRAINT storage_area_employee_in_charge_id_foreign FOREIGN KEY(employee_in_charge_id) REFERENCES employee(id);
ALTER TABLE
    raw_materials_stock ADD CONSTRAINT raw_materials_stock_storage_area_id_foreign FOREIGN KEY(storage_area_id) REFERENCES storage_area(storage_office_id);