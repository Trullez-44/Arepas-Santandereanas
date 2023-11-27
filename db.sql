CREATE TABLE `employee`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `position` VARCHAR(255) NOT NULL,
    `boss_id` INT UNSIGNED NOT NULL
);
ALTER TABLE
    `employee` ADD PRIMARY KEY `employee_id_primary`(`id`);
CREATE TABLE `storage_office`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `address` VARCHAR(255) NOT NULL,
    `manager_employee_id` INT UNSIGNED NULL
);
ALTER TABLE
    `storage_office` ADD PRIMARY KEY `storage_office_id_primary`(`id`);
CREATE TABLE `raw_materials_stock`(
    `id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
    `pounds_per_unit` INT NOT NULL,
    `quantity` INT NOT NULL,
    `storage_area_id` INT UNSIGNED NOT NULL,
    `lot_id` INT UNSIGNED NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `ingredient_id` INT UNSIGNED NOT NULL
);
ALTER TABLE
    `raw_materials_stock` ADD PRIMARY KEY `raw_materials_stock_id_primary`(`id`);
CREATE TABLE `ingredient`(
    `id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `ingredient` ADD PRIMARY KEY `ingredient_id_primary`(`id`);
ALTER TABLE
    `ingredient` ADD UNIQUE `ingredient_name_unique`(`name`);
CREATE TABLE `lot`(
    `id` INT NOT NULL,
    `lot_number` VARCHAR(255) NOT NULL,
    `expiration_date` DATE NOT NULL
);
ALTER TABLE
    `lot` ADD PRIMARY KEY `lot_id_primary`(`id`);
ALTER TABLE
    `lot` ADD UNIQUE `lot_lot_number_unique`(`lot_number`);
CREATE TABLE `invoice`(
    `id` INT NOT NULL,
    `employee_id` INT NOT NULL,
    `date` DATE NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `total_price` INT NOT NULL
);
ALTER TABLE
    `invoice` ADD PRIMARY KEY `invoice_id_primary`(`id`);
CREATE TABLE `supplier`(
    `id` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `supplier` ADD PRIMARY KEY `supplier_id_primary`(`id`);
CREATE TABLE `supplier_x_lot`(
    `id` INT NOT NULL,
    `supplier_id` INT NOT NULL,
    `lot_id` INT NOT NULL
);
ALTER TABLE
    `supplier_x_lot` ADD PRIMARY KEY `supplier_x_lot_id_primary`(`id`);
CREATE TABLE `storage_area`(
    `id` INT NOT NULL,
    `area` VARCHAR(255) NOT NULL,
    `storage_office_id` INT NOT NULL,
    `employee_in_charge_id` BIGINT NOT NULL
);
CREATE TABLE `emails`(
    `id` INT NOT NULL,
    `description` VARCHAR(255) NULL,
    `email` VARCHAR(255) NOT NULL,
    `owner_id` INT NOT NULL
);
ALTER TABLE
    `emails` ADD PRIMARY KEY `emails_id_primary`(`id`);
ALTER TABLE
    `emails` ADD UNIQUE `emails_email_unique`(`email`);
CREATE TABLE `phone_numbers`(
    `id` INT NOT NULL,
    `prefix` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `owner_id` INT NOT NULL
);
ALTER TABLE
    `phone_numbers` ADD PRIMARY KEY `phone_numbers_id_primary`(`id`);
CREATE TABLE `ingredients_in_invoice`(
    `id` INT NOT NULL,
    `invoice_id` INT NOT NULL,
    `ingredient_id` INT NOT NULL
);
ALTER TABLE
    `ingredients_in_invoice` ADD PRIMARY KEY `ingredients_in_invoice_id_primary`(`id`);
ALTER TABLE
    `lot` ADD CONSTRAINT `lot_id_foreign` FOREIGN KEY(`id`) REFERENCES `raw_materials_stock`(`lot_id`);
ALTER TABLE
    `phone_numbers` ADD CONSTRAINT `phone_numbers_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `storage_office`(`id`);
ALTER TABLE
    `ingredients_in_invoice` ADD CONSTRAINT `ingredients_in_invoice_ingredient_id_foreign` FOREIGN KEY(`ingredient_id`) REFERENCES `ingredient`(`id`);
ALTER TABLE
    `emails` ADD CONSTRAINT `emails_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `supplier`(`id`);
ALTER TABLE
    `ingredients_in_invoice` ADD CONSTRAINT `ingredients_in_invoice_invoice_id_foreign` FOREIGN KEY(`invoice_id`) REFERENCES `invoice`(`id`);
ALTER TABLE
    `raw_materials_stock` ADD CONSTRAINT `raw_materials_stock_ingredient_id_foreign` FOREIGN KEY(`ingredient_id`) REFERENCES `ingredient`(`id`);
ALTER TABLE
    `invoice` ADD CONSTRAINT `invoice_employee_id_foreign` FOREIGN KEY(`employee_id`) REFERENCES `employee`(`id`);
ALTER TABLE
    `emails` ADD CONSTRAINT `emails_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `storage_office`(`id`);
ALTER TABLE
    `supplier_x_lot` ADD CONSTRAINT `supplier_x_lot_supplier_id_foreign` FOREIGN KEY(`supplier_id`) REFERENCES `supplier`(`id`);
ALTER TABLE
    `phone_numbers` ADD CONSTRAINT `phone_numbers_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `employee`(`id`);
ALTER TABLE
    `employee` ADD CONSTRAINT `employee_boss_id_foreign` FOREIGN KEY(`boss_id`) REFERENCES `employee`(`id`);
ALTER TABLE
    `storage_area` ADD CONSTRAINT `storage_area_storage_office_id_foreign` FOREIGN KEY(`storage_office_id`) REFERENCES `storage_office`(`id`);
ALTER TABLE
    `phone_numbers` ADD CONSTRAINT `phone_numbers_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `supplier`(`id`);
ALTER TABLE
    `storage_office` ADD CONSTRAINT `storage_office_manager_employee_id_foreign` FOREIGN KEY(`manager_employee_id`) REFERENCES `employee`(`id`);
ALTER TABLE
    `emails` ADD CONSTRAINT `emails_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `employee`(`id`);
ALTER TABLE
    `supplier_x_lot` ADD CONSTRAINT `supplier_x_lot_lot_id_foreign` FOREIGN KEY(`lot_id`) REFERENCES `lot`(`id`);
ALTER TABLE
    `storage_area` ADD CONSTRAINT `storage_area_employee_in_charge_id_foreign` FOREIGN KEY(`employee_in_charge_id`) REFERENCES `employee`(`id`);
ALTER TABLE
    `raw_materials_stock` ADD CONSTRAINT `raw_materials_stock_storage_area_id_foreign` FOREIGN KEY(`storage_area_id`) REFERENCES `storage_area`(`storage_office_id`);