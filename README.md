# Management System for Arepas Santandereanas

Arepas Santandereanas, a renowned factory specializing in authentic Colombian arepas, aims to modernize its operations through the implementation of a comprehensive Management System. This integrated system primarily focuses on optimizing internal processes, efficiently managing resources, and providing key tools for employee and supplier administration.

The fundamental purpose of this implementation is to address the specific needs of Arepas Santandereanas, offering effective solutions to the operational challenges faced by the factory. Below are key areas of focus for the system:

## Efficient Resource Management

- Development of an inventory management module to ensure a constant supply of necessary ingredients for production.
- Detailed tracking of input flow, from the reception of raw materials to internal distribution.

## Supplier Administration

- Implementation of a centralized system for registering and monitoring key ingredient suppliers, ensuring quality and continuity of supplies.
- Facilitation of negotiation processes and assessment of commercial agreements with strategic suppliers.

## Employee Records System

- Development of an employee management module covering role assignments in production and individual performance evaluation.

- Detailed recording and tracking of personal and work-related information for effective human resource management.

This initiative aims not only to modernize Arepas Santandereanas' operational processes but also to provide a robust platform for addressing the challenges of business growth while maintaining the high quality of its distinctive products. The successful implementation of this system will enable Arepas Santandereanas to stay at the forefront of the arepa manufacturing industry, offering efficiency and exceptional attention to its customers.

---

# Introduction to Internal Abstraction Level

The internal abstraction level provides a detailed and technical view of the internal structure of the enterprise Arepas Santandereanas' database, focusing on the technical implementation of tables and the relationships between them. The following is an introductory description of the key components that make up this level, highlighting the tables, their attributes, and the keys that define data integrity.

## Main Tables

1. **employee:**
   - Attributes: id (PK), name, last_name, address, position, boss_id (FK).
   - Relationships: Supervises (FK - employee).

2. **office:**
   - Attributes: id (PK), address, manager_employee_id (FK).
   - Relationships: Has (FK - employee).

3. **raw_materials_stock:**
   - Attributes: id (PK), pounds_per_unit, quantity, storage_area_id (FK), lot_id (FK), description, ingredient_id (FK).
   - Relationships: Stored in (FK - storage_area), Belongs to (FK - lot), Composed of (FK - ingredient).

4. **ingredient:**
   - Attributes: id (PK), name.

5. **lot:**
   - Attributes: id (PK), lot_number, expiration_date.
   - Relationships: Supplied by (FK - supplier).

6. **invoice:**
   - Attributes: id (PK), employee_id (FK), date, description, total_price, quantity, supplier_id (FK).
   - Relationships: Generates (FK - employee), Includes Ingredients (FK - ingredients_in_invoice).

7. **supplier:**
   - Attributes: id (PK), name, address.
   - Relationships: Supplies (FK - lot).

8. **area:**
   - Attributes: id (PK), area, storage_office_id (FK), employee_in_charge_id (FK).
   - Relationships: Located in (FK - storage_office), Supervised by (FK - employee).

9. **ingredients_in_invoice:**
    - Attributes: id (PK), invoice_id (FK), ingredient_id (FK).
    - Relationships: Includes (FK - invoice, ingredient).

10. **supplier_x_lot:**
    - Attributes: id (PK), supplier_id (FK), lot_id (FK).
    - Relationships: Supplies (FK - supplier, lot).

 The Entity-Relationship Model (ERM) image will more accurately reflect the technical structure and links between these entities.

!['DIAGRAMA ERM'](/ERM.png)

---

# Conceptual Abstraction Level

The conceptual abstraction level provides a more general and understandable view of the database, highlighting key entities and their relationships. In this perspective, the main entities and relationships that form the core of the enterprise Arepas Santandereanas database are presented.

## Main Entities

1. **Employee:**
   - Attributes: ID, Name, Last Name, Address, Position, Boss ID.
   - Relationships: Supervises (with Employee - Boss).

2. **office:**
   - Attributes: ID, Address, Manager Employee ID.
   - Relationships: Has (with Employee - Manager Employee).

3. **Raw_materials_stock:**
   - Attributes: ID, Pounds per Unit, Quantity, Storage Area ID, Lot ID, Description, Ingredient ID.
   - Relationships: Stored in (with Storage Area), Belongs to (with Lot), Composed of (with Ingredient).

4. **Ingredient:**
   - Attributes: ID, Name.

5. **Lot:**
   - Attributes: ID, Lot Number, Expiration Date, Supplier ID.
   - Relationships: Supplied by (with Supplier).

6. **Invoice:**
   - Attributes: ID, Employee ID, Date, Description, Total Price, Quantity, Supplier ID.
   - Relationships: Generates (with Employee), Includes Ingredients (with Ingredients).

7. **Supplier:**
   - Attributes: ID, Name, Address.
   - Relationships: Supplies (with Lot).

8. **area:**
   - Attributes: ID, Area, Storage Office ID, Employee in Charge ID.
   - Relationships: Located in (with Storage Office), Supervised by (with Employee).

## Major Relationships

- **Supervises (Employee - Boss):** Relationship between employees and their respective bosses.
- **Has (Storage_office - Manager Employee):** Relationship between storage offices and employees in charge.
- **Stored in (Raw_materials_stock - Storage Area):** Relationship between raw materials inventory and storage areas.
- **Belongs to (Raw_materials_stock - Lot):** Relationship between raw materials inventory and lots.
- **Composed of (Raw_materials_stock - Ingredient):** Relationship between raw materials inventory and ingredients.
- **Supplied by (Lot - Supplier):** Relationship between lots and suppliers.
- **Generates (Invoice - Employee):** Relationship between invoices and employees.
- **Bought to (Invoice - Supplier):** Relationship
between invoices and suppliers.
- **Includes Ingredients (Invoice - Ingredients):** Relationship between invoices and ingredients.
- **Supplies (Supplier_x_lot - Supplier and Lot):** Relationship between suppliers and lots.
- **Located in (Storage_area - Storage Office):** Relationship between storage areas and offices.
- **Supervised by (Storage_area - Employee):** Relationship between storage areas and employees in charge.

---

# External Abstraction Level

The external abstraction level provides a simplified and specific view for end-users and applications interacting with the database. In this case, three key external perspectives are presented: Suppliers and Employees but focused in Storaged Management.

### Inventory Management Perspective

The external abstraction level tailored to the Inventory Management Perspective emphasizes the functionality and user interface related to stock management.

- **Functionality:**
  - **Stock Overview:** View a comprehensive overview of raw material stock, including quantities, ingredients, and expiration dates.
  - **Location Tracking:** Monitor the locations of raw materials in various storage areas.
  - **Transaction History:** Access a detailed history of stock transactions, including additions, withdrawals, and transfers.
  - **Alerts and Notifications:** Receive alerts for low stock levels, upcoming expiration dates, and other critical events.

- **Main Entities:**
  - Raw_materials_stock
  - Ingredient
  - Lot
  - Storage_area

### 2. Suppliers Perspective

- **Functionality:**
  - Visualization of detailed information about suppliers.
  - Access to the list of lots provided by each supplier.
  - Querying invoices associated with transactions with suppliers.

- **Main Entities:**
  - Supplier
  - Lot
  - Invoice

### 3. Employees Perspective

- **Functionality:**
  - Access to personal and contact details of employees.
  - Management of invoices generated by each employee.
  - Monitoring of storage areas and raw materials under the employee's supervision.

- **Main Entities:**
  - Employee
  - Invoice
  - Storage_office
  - Raw_materials_stock
  - Storage_area

## User Interfaces

- ### Inventory Platform
    - **Dashboard:**
        - **Overview Tiles:** Visual representations of current stock levels, critical alerts, and transaction summaries.
        - **Quick Actions:** One-click access to common stock management tasks, such as adding new stock or initiating transfers.
    
    - **Stock Overview:**
        - **Detailed Listings:** Comprehensive tables displaying stock details, including ingredient names, quantities, and expiration dates.
        - **Filter and Search:** Easily locate specific items by applying filters or using the search functionality.
    - **Transaction History:**
        - **Timeline View:** Interactive timeline displaying stock transactions over time.
        - **Transaction Details:** Access detailed information for each transaction, including timestamps and user details.
    - **Alerts and Notifications:**
        - **Customizable Alerts:** Set personalized alerts for low stock, upcoming expirations, or other user-defined criteria.
        - **Notification Center:** Centralized area for reviewing and managing alerts and notifications.

- ### Supplier Management System:

     - Interface for managing suppliers, lots, and invoices.

- ### Employee Portal

  - Access for employees to personal and work-related information.
  - Tools for invoice management and storage areas.

## Benefits - Stock Management Focus

- **Real-time Visibility:** Instant access to current stock levels and transaction history for proactive decision-making.
- **Efficient Tracking:** Streamlined tracking of stock locations, aiding in quick retrieval and minimizing handling time.
- **Custom Alerts:** Personalized alerts ensure timely response to critical stock-related events, reducing the risk of stockouts or expired inventory.
- **User-friendly Interface:** Intuitive design and quick navigation enhance user experience, facilitating efficient stock management.
- **Data-driven Insights:** Detailed stock data empowers users with insights into consumption patterns, aiding in demand forecasting and resource optimization.

This customized external abstraction level caters specifically to the Inventory Management Perspective, focusing on functionality and user interface elements related to stock management within the Inventory Platform.
## Benefits of the External Abstraction Level
- **Simplicity:** Users interact with intuitive interfaces focused on their specific needs.
- **Efficiency:** Quick access to key information without overwhelming users with unnecessary details.
- **Relevance:** Each external perspective adapts to the tasks and responsibilities of end-users.

This external abstraction level offers a simplified and task-oriented view of the database, allowing users to interact effectively with the information they need without being burdened by the underlying complexity of the physical data model.

# QUERIES

## OFFICE TABLE

#### 1. OFFICE COMUNICATION

This query shows you the address, email and telephone number of the offices, along with your manager's information:
The office and manager details are extracted from subqueries each one.
```SQL
DELIMITER //
CREATE PROCEDURE GetOfficeAndManagerInfo()
BEGIN
    SELECT
        o.address AS `OFFICE ADDRESS`, o.email AS `OFFICE EMAIL`,o.phone_number AS `OFFICE NUMBER`,
        m.manager_name AS `MANAGER`, m.email AS `MANAGER EMAIL`, m.phone_number AS  `MANAGER NUMBER`, m.position AS `POSITION`
    FROM
     (SELECT email, address, phone_number, manager_id FROM office) AS o
    JOIN
        (SELECT e.id, CONCAT(e.name, ' ', e.last_name) AS manager_name, e.position, e.phone_number, e.email
         FROM employee e
         JOIN office o
         WHERE e.id = o.manager_id) AS m
    ON
        o.manager_id = m.id;
END //
DELIMITER ;

CALL GetOfficeAndManagerInfo();

```

#### 2. AREAS PER OFFICE

This query shows you the id and address of every office, their manager id and full name in one single column.
Extracted the area details and number of areas with a subquery.

```SQL
DELIMITER //
CREATE PROCEDURE GetOfficeManagerAndAreasInfo()
BEGIN
    SELECT
        o.id AS `OFFICE ID`, o.address AS `OFFICE ADDRESS`,CONCAT(e.id, ' - ', e.name, ' ', e.last_name) AS `MANAGER DETAILS`, a_concatenated.concat_areas AS `AREAS`, a_concatenated.number_of AS `NUMBER OF AREAS`
    FROM office o
    JOIN employee e ON o.manager_id = e.id
    JOIN
        (SELECT
             o.id AS office_id, GROUP_CONCAT(CONCAT(a.area_name, ' (ID: ', a.id, ')') SEPARATOR ', ') AS concat_areas, COUNT(a.id) AS number_of
        FROM office o
        JOIN area a ON o.id = a.office_id
        GROUP BY o.id
        ) AS a_concatenated ON o.id = a_concatenated.office_id;
END //
DELIMITER ;

CALL GetOfficeManagerAndAreasInfo();

```
#### 3. EMPLOYEES PER OFFICE

This query shows you some details about the offices and their contact, but mainly gives the number of employees per office, the "difficult" thing is to include the managers because they are managed differently.
I use left joins with the same name to grouped in the same COUNT function.
```SQL

DELIMITER //
CREATE PROCEDURE GetEmployeeCountByOffice()
BEGIN
    SELECT
        o.id AS `OFFICE ID`,o.address AS `OFFICE ADDRESS`, o.phone_number AS `OFFICE NUMBER`, employee_count.number_of + IF(manager_count.number_of IS NULL, 0, manager_count.number_of) AS `NUMBER OF EMPLOYEES`
    FROM office o
    LEFT JOIN
        (
            SELECT
                a.office_id,
                COUNT(*) AS number_of
            FROM employee e
            JOIN employee_place ep ON e.id = ep.employee_id
            JOIN area a ON ep.area_id = a.id
            GROUP BY a.office_id
        ) AS employee_count ON o.id = employee_count.office_id
    LEFT JOIN
        (
            SELECT id,COUNT(*) AS number_of
            FROM office
            GROUP BY id
        ) AS manager_count ON o.id = manager_count.id;
END //
DELIMITER ;

CALL GetEmployeeCountByOffice();
```
#### 4. LOTS PER OFFICE
This query shows you some details about the offices, but mainly shows the lots per office.
I did this query using subqueries to get the lot codes in single record.
```SQL
DELIMITER //
CREATE PROCEDURE GetLotNumbersByOffice()
BEGIN
    SELECT  o.id AS `OFFICE ID`, o.address AS `OFFICE ADDRESS`, 
        (
            SELECT  GROUP_CONCAT(l.lot_number SEPARATOR ', ')
            FROM  area a
            JOIN   raw_materials_stock rms ON a.id = rms.area_id
            JOIN lot l ON rms.lot_id = l.id
            WHERE  a.office_id = o.id
        ) AS `LOT NUMBERS`
    FROM  office o;
END //
DELIMITER ;
 
CALL GetLotNumbersByOffice(); 
```
#### 5. INVOICES PER OFFICE

This query shows you some office details, the manager responsible of the invoices and the invoices per office.
The last two columns are given by subqueries.
```SQL
DELIMITER //
CREATE PROCEDURE GetInvoicesByOffice()
BEGIN
    SELECT  o.id AS `OFFICE ID`,  o.address AS `OFFICE ADDRESS`, 
        (
            SELECT CONCAT('Responsible: ', e.name, ' ', e.last_name)
            FROM employee e 
            WHERE o.manager_id = e.id
        ) AS `MANAGER NAME`,
        (
            SELECT GROUP_CONCAT('(ID: ',i.id, ' - DATE:', i.date,')' SEPARATOR ', ')
            FROM invoice i 
            WHERE o.manager_id = i.employee_id
        ) AS `INVOICE IDS + DATES`
    FROM  office o;
END //
DELIMITER ;

CALL GetInvoicesByOffice();

```
## CRUD PROCEDURES FOR OFFICE
#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateOffice(IN id INT UNSIGNED,
                                address VARCHAR(255),
                                manager_id INT UNSIGNED,
                                email VARCHAR(255),
                                phone_number VARCHAR(255))
BEGIN
    INSERT INTO office value (id,address,manager_id,email,phone_number);
END //
DELIMITER ;

CALL CreateOffice(1006,'Calle 44 #9-14',4,'CRUDTEST@arepas-santandereanas.com','3112192040');
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindOfficeById(IN findId INT)
BEGIN
    SELECT * FROM office
    WHERE id = findId;
END //
DELIMITER ;

CALL FindOfficeById(1006);
 
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditOffice(IN findId INT UNSIGNED,
                            changeId INT UNSIGNED,
                            address VARCHAR(255),
                            manager_id INT UNSIGNED,
                            email VARCHAR(255),
                            phone_number VARCHAR(255))
BEGIN
    Update office
    SET id = changeId, address = address, manager_id = manager_id, email = email, phone_number = phone_number
    WHERE id = findId;
END //
DELIMITER ;

CALL EditOffice(1006,1008,'Calle 44 #9-17',4,'CRUDTEST@arepas-santandereanas.com','3163181559');

```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteOffice(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM office
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteOffice(1008);
```
## ADDITIONAL PROCEDURES FOR OFFICE

This query would return all areas for a given office. It would take an office ID as a parameter and return all areas in that office.

```SQL

DELIMITER //
CREATE PROCEDURE GetOfficeAreas(IN officeId INT)
BEGIN
    SELECT * FROM area
    WHERE office_id = officeId;
END //
DELIMITER ;
CALL GetOfficeAreas(1004);
 
```
This query would return the manager of a given office. It would take an office ID as a parameter and return the manager of that office.
```SQL
DELIMITER //
CREATE PROCEDURE GetOfficeManager(IN office_id INT)
BEGIN
    SELECT e.* FROM employee e
    JOIN office o ON e.id = o.manager_id
    WHERE o.id = office_id;
END //
DELIMITER ;

CALL GetOfficeManager(1004);
 
```
This query would return all invoices created by the manager of a given office. It would take an office ID as a parameter and return all invoices created by the manager of that office.
```SQL
DELIMITER //
CREATE PROCEDURE GetOfficeInvoices(IN office_id INT)
BEGIN
    SELECT i.*, O.* FROM invoice i
    JOIN office o ON i.employee_id = o.manager_id
    WHERE o.id = office_id;
END //
DELIMITER ;
CALL GetOfficeInvoices(1004);
```

## SUPPLIER TABLE

#### 1. SUPPLIER, ITS INGREDIENT AND STORAGE LOCATION

This precious query gives you some details about the supplier, the ingredient that provides, and its exactly location.

```SQL

DELIMITER //
CREATE PROCEDURE IngredientBelongTo()
BEGIN
SELECT 
    s.id AS `SUPPLIER ID`, 
    s.name AS `SUPPLIER NAME`, 
    (
        SELECT GROUP_CONCAT(DISTINCT ' - INGREDIENT: ',  i.name SEPARATOR ', ')
        FROM supplier_x_lot sl
        JOIN lot l ON sl.lot_id = l.id
        JOIN raw_materials_stock rms ON l.id = rms.lot_id
        JOIN ingredient i ON rms.ingredient_id = i.id
        WHERE sl.supplier_id = s.id
    ) AS `INGREDIENTS`,
    (
        SELECT GROUP_CONCAT(DISTINCT ' - STORAGE: ',  a.area_name, ' (OFFICE: ', o.address, ')' SEPARATOR ', ')
        FROM supplier_x_lot sl
        JOIN lot l ON sl.lot_id = l.id
        JOIN raw_materials_stock rms ON l.id = rms.lot_id
        JOIN area a ON rms.area_id = a.id
        JOIN office o ON a.office_id = o.id
        WHERE sl.supplier_id = s.id
    ) AS `STORAGE LOCATIONS`
FROM 
    supplier s
HAVING 
    `INGREDIENTS` IS NOT NULL AND `STORAGE LOCATIONS` IS NOT NULL;
END //
DELIMITER ;

CALL IngredientBelongTo();
 
```

#### 2. UNUSED SUPPLIERS 

This query shows you some details about the suppliers that DON'T appear on the invoices in recent months (depending on the procedure parameter).

```SQL

DELIMITER //
CREATE PROCEDURE GetNotActiveSuppliers(IN monthNumber INT)
BEGIN
    IF monthNumber >= 1 AND monthNumber <= 12 THEN
        SELECT  s.id AS `SUPPLIER ID`,  s.name AS `SUPPLIER NAME`,  s.address AS `SUPPLIER ADDRESS`
        FROM supplier s
        WHERE s.id NOT IN (
                SELECT DISTINCT i.supplier_id
                FROM  invoice i
                WHERE i.date >= DATE_SUB(CURDATE(), INTERVAL monthNumber MONTH)
            );
    ELSE
     SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Error: monthNumber must between 1 and 12';
    END IF;
END //
DELIMITER ;
CALL GetNotActiveSuppliers(12);
```

#### 3. LOT BELONG TO SUPPLIER

This query shows some details about the supplier but mainly, it shows the lot that has been purchased to that supplier and still in stock.

```SQL

DELIMITER //
CREATE PROCEDURE GetLotsInStockBySupplier()
BEGIN
    SELECT s.id AS `SUPPLIER ID`, s.name AS `SUPPLIER NAME`, GROUP_CONCAT(l.lot_number SEPARATOR ', ') AS `LOT NUMBERS`
FROM supplier s
JOIN supplier_x_lot sl ON s.id = sl.supplier_id
JOIN lot l ON sl.lot_id = l.id
JOIN raw_materials_stock rms ON l.id = rms.lot_id
GROUP BY s.id;
END //
DELIMITER ;

CALL GetLotsInStockBySupplier();
 
```

#### 4. PURCHASES TO SUPPLIERS

This query shows you some details about the suppliers that appear on the invoices in recent months (depending on the procedure parameter).

```SQL

DELIMITER //
CREATE PROCEDURE GetActiveSuppliers(IN monthNumber INT)
BEGIN
    IF monthNumber >= 1 AND monthNumber <= 12 THEN
        SELECT  s.id AS `SUPPLIER ID`,  s.name AS `SUPPLIER NAME`,  s.address AS `SUPPLIER ADDRESS`
        FROM supplier s
        WHERE s.id IN (
                SELECT DISTINCT i.supplier_id
                FROM  invoice i
                WHERE i.date >= DATE_SUB(CURDATE(), INTERVAL monthNumber MONTH)
            );
    ELSE
     SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Error: monthNumber must between 1 and 12';
    END IF;
END //
DELIMITER ;
CALL GetActiveSuppliers(9);

```

#### 5. SUPPLIERS WITHOUT SALES

This query shows suppliers that have never appeared on a invoice.

```SQL

SELECT 
    s.id AS `SUPPLIER ID`, 
    s.name AS `SUPPLIER NAME`
FROM 
    supplier s
WHERE 
    NOT EXISTS (
        SELECT 
            1
        FROM 
            invoice i
        WHERE 
            i.supplier_id = s.id
    );
```
## CRUD PROCEDURES FOR SUPPLIER

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateSupplier(IN id INT UNSIGNED,
                                name VARCHAR(255),
                                address VARCHAR(255),
                                description VARCHAR(255),
                                email VARCHAR(255),
                                phone_number VARCHAR(255))
BEGIN
    INSERT INTO supplier VALUES (id, name, address, description, email, phone_number);
END //
DELIMITER ;

CALL CreateSupplier(145, 'SUPPLIER TESTEOOO AAAAAAH', '123 Main St', 'Description', 'supplier@example.com', '123-456-7890');
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindSupplierById(IN findId INT)
BEGIN
    SELECT * FROM supplier
    WHERE id = findId;
END //
DELIMITER ;

CALL FindSupplierById(145);
 
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditSupplier(IN findId INT UNSIGNED, changeName VARCHAR(255))
BEGIN
    UPDATE supplier
    SET name = changeName
    WHERE id = findId;
END //
DELIMITER ;

CALL EditSupplier(145, 'NUEVO SUPPLIER AAAAAH');
```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteSupplier(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM supplier
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteSupplier(145);


```
## ADDITIONAL PROCEDURES OR QUERIES FOR SUPPLIER

Search an invoice by supplier ID
```SQL
DELIMITER //
CREATE PROCEDURE GetSupplierInvoices(IN supplier_id INT)
BEGIN
    SELECT * FROM invoice
    WHERE supplier_id = supplier_id;
END //
DELIMITER ;

CALL GetSupplierInvoices(104);

```

## EMPLOYEE TABLE

#### 1. EMPLOYEE AND THEIR INGREDIENTS

 This query would return all raw materials handled by a given employee. It would take an employee ID as a parameter.

```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeRawMaterials(IN employee_id INT)
BEGIN
    SELECT e.id AS EMPLOYEE_ID, e.name AS EMPLOYEE_NAME, 
    COALESCE(
        (
            SELECT GROUP_CONCAT(i.name SEPARATOR ', ')
            FROM raw_materials_stock rms
            JOIN ingredient i ON rms.ingredient_id = i.id
            JOIN area a ON rms.area_id = a.id
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE ep.employee_id = e.id
        ), 'No ingredients'
    ) AS RAW_MATERIALS
FROM employee e
WHERE e.id = employee_id;
END //
DELIMITER ;

CALL GetEmployeeRawMaterials(40);
 
```

#### 2. INVOICES PER MANAGER

 This query would return all invoices created by a given employee and the suppliers for those invoices. It would take an employee ID as a parameter.

```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeInvoicesAndSuppliers(IN employee_id INT)
BEGIN
    SELECT i.id AS `INVOICE ID`, i.date AS `INVOICE DATE`, 
        (
            SELECT s.name
            FROM supplier s
            WHERE s.id = i.supplier_id
        ) AS `SUPPLIER NAME`
    FROM invoice i
    WHERE i.employee_id = employee_id;
END //
DELIMITER ;

CALL GetEmployeeInvoicesAndSuppliers(4);
 
```

#### 3. EMPLOYEE OFFICE AND AREA

This query would return the office and area for a given employee. It would take an employee ID as a parameter.

```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeOfficeAndArea(IN employee_id INT)
BEGIN
    SELECT e.id AS `EMPLOYEE ID`, e.name AS `EMPLOYEE NAME`, 
        (
            SELECT o.address
            FROM  office o
            JOIN  area a ON o.id = a.office_id
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE ep.employee_id = e.id
        ) AS `OFFICE ADDRESS`,
        (
            SELECT a.area_name
            FROM area a
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE ep.employee_id = e.id
        ) AS `AREA NAME`
    FROM employee e
    WHERE e.id = employee_id;
END //
DELIMITER ;

CALL GetEmployeeOfficeAndArea(10);
 
```

#### 4. THE EMPLOYEE MANAGER

This query would return the manager of a given employee. It would take an employee ID as a parameter.

```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeManager(IN employee_id INT)
BEGIN
    SELECT e.id AS `EMPLOYEE ID`, e.name AS `EMPLOYEE NAME`, 
        (
            SELECT  CONCAT(m.name, ' ', m.last_name)
            FROM employee m
            WHERE m.id = e.boss_id
        ) AS `MANAGER NAME`
    FROM employee e
    WHERE e.id = employee_id;
END //
DELIMITER ;

CALL GetEmployeeManager(10);
 
```
#### 5. AREAS OF THE EMPLOYEES

This query shows you the office and area of every employee.

```SQL
DELIMITER //
CREATE PROCEDURE GetEmployeeOfficeArea()
BEGIN
    SELECT e.id AS `EMPLOYEE ID`, e.name AS `EMPLOYEE NAME`, 
        (
            SELECT o.address
            FROM office o
            JOIN area a ON o.id = a.office_id
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE 
            p.employee_id = e.id
        ) AS `OFFICE ADDRESS`,
        (
            SELECT a.area_name
            FROM area a
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE ep.employee_id = e.id
        ) AS `AREA NAME`
    FROM employee e
    HAVING `OFFICE ADDRESS` IS NOT NULL;
END //
DELIMITER ;


```

#### 6. SUPPLIERS PER INVOICE PER EMPLOYEE

This query would return all suppliers for the invoices created by a given employee. It would take an employee ID as a parameter.

```sql
DELIMITER //
CREATE PROCEDURE GetEmployeeSuppliers(IN employee_id INT)
BEGIN
    IF employee_id >= 2 AND employee_id <= 6 THEN
        SELECT e.id AS EMPLOYEE_ID, e.name AS EMPLOYEE_NAME, 
    COALESCE(
        (
            SELECT GROUP_CONCAT(s.name SEPARATOR ', ')
            FROM invoice i
            JOIN supplier s ON i.supplier_id = s.id
            WHERE i.employee_id = e.id
        ), 'No invoices'
    ) AS SUPPLIER_NAME
FROM employee e
WHERE e.id = employee_id;
        ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: employee_id must between 2 and 6';
        END IF;

END //
DELIMITER ;

CALL GetEmployeeSuppliers(4);
 
```
## CRUD PROCEDURES FOR EMPLOYEE

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateEmployee(IN id INT UNSIGNED,
                                name VARCHAR(255),
                                last_name VARCHAR(255),
                                address VARCHAR(255),
                                position VARCHAR(255),
                                boss_id INT UNSIGNED,
                                email VARCHAR(255),
                                phone_number VARCHAR(255))
BEGIN
    INSERT INTO employee value (id, name, last_name, address, position, boss_id, email, phone_number);
END //
DELIMITER ;

CALL CreateEmployee(43, 'TORRA', 'JEREZ', 'Torre ZENITH', 'Manager', NULL, 'TESTING@example.com', '123-456-7890');
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindEmployeeById(IN findId INT)
BEGIN
    SELECT * FROM employee
    WHERE id = findId;
END //
DELIMITER ;

CALL FindEmployeeById(43);
 
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditEmployee(IN findId INT UNSIGNED, changeName VARCHAR(255))
BEGIN
    UPDATE employee
    SET name = changeName
    WHERE id = findId;
END //
DELIMITER ;

CALL EditEmployee(1, 'Jane');
 
```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteEmployee(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM employee
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteEmployee(1);
```

## RAW_MATERIALS_STOCK TABLE

#### 1. EMPLOYEE MANAGING THEIR INGREDIENTS

This query shows you some details of a Ingredient Mover Employee, their ingredients and how many he manage.

```SQL

  DELIMITER //
CREATE PROCEDURE GetEmployeeMaterials(IN employee_id INT UNSIGNED)
BEGIN
    SELECT e.id AS EMPLOYEE_ID, e.name AS EMPLOYEE_NAME, e.last_name AS EMPLOYEE_LAST_NAME, e.position AS POSITION,
        (
            SELECT name
            FROM employee
            WHERE id = e.boss_id
        ) AS BOSS_NAME,
        (
            SELECT GROUP_CONCAT(CONCAT(subquery.name, ' (', total_quantity, ' units)') SEPARATOR ', ')
            FROM (
                SELECT i.name, SUM(rms.quantity) as total_quantity
                FROM raw_materials_stock rms
                JOIN ingredient i ON rms.ingredient_id = i.id
                JOIN area a ON rms.area_id = a.id
                JOIN employee_place ep ON a.id = ep.area_id
                WHERE ep.employee_id = e.id
                GROUP BY i.name
            ) AS subquery
        ) AS RAW_MATERIALS
    FROM employee e
    WHERE e.id = employee_id;
END //
DELIMITER ;
CALL GetEmployeeMaterials(20);
 
```

#### 2. SPECIFICS INGREDIENT SEARCH

THis query shows you some details about the employee, but mainly search the office that he is located and search the quantity of an specific ingredient.

```SQL

DELIMITER //
CREATE PROCEDURE GetEmployeeAmountMaterials(IN employee_id INT UNSIGNED, IN ingredient_name VARCHAR(255))
BEGIN
    SELECT e.id AS EMPLOYEE_ID, e.name AS EMPLOYEE_NAME, e.last_name AS EMPLOYEE_LAST_NAME, e.position AS POSITION,
        (
            SELECT name
            FROM employee
            WHERE id = e.boss_id
        ) AS BOSS_NAME,
        (
            SELECT o.address
            FROM office o
            JOIN area a ON o.id = a.office_id
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE ep.employee_id = e.id
        ) AS OFFICE_ADDRESS,
        (
            SELECT SUM(rms.quantity)
            FROM raw_materials_stock rms
            JOIN ingredient i ON rms.ingredient_id = i.id
            JOIN area a ON rms.area_id = a.id
            JOIN employee_place ep ON a.id = ep.area_id
            WHERE ep.employee_id = e.id AND i.name = ingredient_name
        ) AS INGREDIENT_QUANTITY
    FROM employee e
    WHERE e.id = employee_id;
END //
DELIMITER ;

CALL GetEmployeeAmountMaterials(20, 'Flour');
 

```

#### 3.

THis query shows you some details about the employee, but mainly search the office that he is located and search the quantity of an specific ingredient.

```SQL

CREATE PROCEDURE GetTopIngredientInArea(IN nameArea VARCHAR(255))
BEGIN
    SELECT i.name AS INGREDIENT_NAME, a.area_name AS AREA_NAME, o.address AS OFFICE_ADDRESS
    FROM ingredient i
    JOIN raw_materials_stock rms ON i.id = rms.ingredient_id
    JOIN area a ON rms.area_id = a.id
    JOIN office o ON a.office_id = o.id
    WHERE i.id = (
        SELECT rms.ingredient_id
        FROM raw_materials_stock rms
        WHERE rms.area_id = (
            SELECT id
            FROM area
            WHERE area_name = 'Dry Storage'
        )
        GROUP BY rms.ingredient_id
        ORDER BY SUM(rms.quantity) DESC
        LIMIT 1
    );
END //
DELIMITER ;

```

#### 4. Searchirg the ingredient with more stock per AREA

THis query shows you some details about the location of a ingredient

```SQL
DELIMITER //
CREATE PROCEDURE GetTopIngredientInArea(IN area_name VARCHAR(255))
BEGIN
    SELECT i.name AS INGREDIENT_NAME, a.area_name AS AREA_NAME, o.address AS OFFICE_ADDRESS
    FROM ingredient i
    JOIN raw_materials_stock rms ON i.id = rms.ingredient_id
    JOIN area a ON rms.area_id = a.id
    JOIN office o ON a.office_id = o.id
    WHERE i.id IN (
        SELECT rms.ingredient_id
        FROM raw_materials_stock rms
        WHERE rms.area_id = (
            SELECT id,
            FROM area
            WHERE area_name = area_name
        )
        GROUP BY rms.ingredient_id
        ORDER BY SUM(rms.quantity) DESC
        LIMIT 1
    );
END //
DELIMITER ;

CALL GetTopIngredientInArea('Dry Storage');
 
```

#### 5. SEARCH STOCK LEFT BY LOT CODE 

THis query shows you some details about the stock left filtering by lot code.

```SQL
DELIMITER //
CREATE PROCEDURE GetIngredientsInLot(IN lot_number VARCHAR(255))
BEGIN
    SELECT l.lot_number, i.name AS INGREDIENT_NAME, SUM(rms.quantity) AS QUANTITY_LEFT
    FROM lot l
    JOIN raw_materials_stock rms ON l.id = rms.lot_id
    JOIN ingredient i ON rms.ingredient_id = i.id
    WHERE l.lot_number = lot_number
    GROUP BY l.lot_number, i.name;
END //
DELIMITER ;

CALL GetIngredientsInLot('QC05223');
```

## CRUD PROCEDURES FOR RAW_MATERIALS_STOCK

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateRawMaterialsStock(IN id INT UNSIGNED,
                                         pounds_per_unit INT UNSIGNED,
                                         quantity INT UNSIGNED,
                                         area_id INT UNSIGNED,
                                         lot_id INT UNSIGNED,
                                         description VARCHAR(255),
                                         ingredient_id INT UNSIGNED)
BEGIN
    INSERT INTO raw_materials_stock VALUES (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id);
END //
DELIMITER ;

CALL CreateRawMaterialsStock(42, 2, 100, 1, 1, 'Description', 1);
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindRawMaterialsStockById(IN findId INT)
BEGIN
    SELECT * FROM raw_materials_stock
    WHERE id = findId;
END //
DELIMITER ;

CALL FindRawMaterialsStockById(42);
  
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditRawMaterialsStock(IN findId INT UNSIGNED, changeQuantity INT UNSIGNED)
BEGIN
    UPDATE raw_materials_stock
    SET quantity = changeQuantity
    WHERE id = findId;
END //
DELIMITER ;

CALL EditRawMaterialsStock(42, 200);
 
```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteInvoice(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM invoice
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteInvoice(43);
```

## INVOICE TABLE
#### 1. 



```SQL

 
```
## CRUD PROCEDURES FOR INVOICE

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateInvoice(IN id INT UNSIGNED,
                                employee_id INT UNSIGNED,
                                date DATE,
                                supplier_id INT UNSIGNED)
BEGIN
    INSERT INTO invoice value (id,employee_id,date,supplier_id);
END //
DELIMITER ;

CALL CreateInvoice(41,4,'2023-11-30',104);
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindInvoiceById(IN findId INT)
BEGIN
    SELECT * FROM invoice
    WHERE id = findId;
END //
DELIMITER ;

CALL FindInvoiceById(41);
 
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditInvoices(IN findId INT UNSIGNED, changeId INT UNSIGNED)
BEGIN
    Update invoice
    SET id = changeId
    WHERE id = findId;
END //
DELIMITER ;

CALL EditInvoices(41,42);
```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteInvoice(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM invoice
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteInvoice(42);
```

## AREA TABLE
#### 1. 



```SQL

 
```
## CRUD PROCEDURES FOR AREA

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateArea(IN id INT UNSIGNED,
                            area_name VARCHAR(255),
                            office_id INT UNSIGNED,
                            description VARCHAR(255))
BEGIN
    INSERT INTO area VALUES (id, area_name, office_id, description);
END //
DELIMITER ;

CALL CreateArea(44, 'Zona de Azote', 1, 'Acà se azota');
 
 
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindAreaById(IN findId INT)
BEGIN
    SELECT * FROM area
    WHERE id = findId;
END //
DELIMITER ;

CALL FindAreaById(44);
 
```
#### UPDATE
```SQL
CREATE PROCEDURE EditArea(IN findId INT UNSIGNED, changeName VARCHAR(255))
BEGIN
    UPDATE area
    SET area_name = changeName
    WHERE id = findId;
END //
DELIMITER ;

CALL EditArea(45, 'AEROPUERTOOOOOOOO');
```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteArea(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM area
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteArea(45);
```
## INGREDIENT TABLE
#### 1. 



```SQL

 
```
## CRUD PROCEDURES FOR INGREDIENT

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateIngredient(IN id INT UNSIGNED,
                                  name VARCHAR(255))
BEGIN
    INSERT INTO ingredient VALUES (id, name);
END //
DELIMITER ;

CALL CreateIngredient(144, 'INGREDIENTE:AGUARDIENTE');
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindIngredientById(IN findId INT)
BEGIN
    SELECT * FROM ingredient
    WHERE id = findId;
END //
DELIMITER ;

CALL FindIngredientById(144);
 
 
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditIngredient(IN findId INT UNSIGNED, changeName VARCHAR(255))
BEGIN
    UPDATE ingredient
    SET name = changeName
    WHERE id = findId;
END //
DELIMITER ;

CALL EditIngredient(144, 'GUARO');

```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteIngredient(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM ingredient
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteIngredient(144);
```
## LOT TABLE
#### 1. 



```SQL

 
```
## CRUD PROCEDURES FOR LOT

#### CREATE
```SQL
DELIMITER //
CREATE PROCEDURE CreateLot(IN id INT UNSIGNED,
                           lot_number VARCHAR(255),
                           expiration_date DATE)
BEGIN
    INSERT INTO lot VALUES (id, lot_number, expiration_date);
END //
DELIMITER ;

CALL CreateLot(4444, 'LOL1234', '2023-12-31');
 
```
#### READ
```SQL
DELIMITER //
CREATE PROCEDURE FindLotById(IN findId INT)
BEGIN
    SELECT * FROM lot
    WHERE id = findId;
END //
DELIMITER ;

CALL FindLotById(4444);
 
 
```
#### UPDATE
```SQL
DELIMITER //
CREATE PROCEDURE EditLot(IN findId INT UNSIGNED, changeNumber VARCHAR(255))
BEGIN
    UPDATE lot
    SET lot_number = changeNumber
    WHERE id = findId;
END //
DELIMITER ;

CALL EditLot(1, 'VAL1234');
```
#### DELETE
```SQL
DELIMITER //
CREATE PROCEDURE DeleteLot(IN deleteId INT UNSIGNED)
BEGIN
    DELETE FROM lot
    WHERE id = deleteId;
END //
DELIMITER ;

CALL DeleteLot(4444);
```
