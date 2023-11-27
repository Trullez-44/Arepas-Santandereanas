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

2. **storage_office:**
   - Attributes: id (PK), address, manager_employee_id (FK).
   - Relationships: Has (FK - employee).

3. **raw_materials_stock:**
   - Attributes: id (PK), pounds_per_unit, quantity, storage_area_id (FK), lot_id (FK), description, ingredient_id (FK).
   - Relationships: Stored in (FK - storage_area), Belongs to (FK - lot), Composed of (FK - ingredient).

4. **ingredient:**
   - Attributes: id (PK), name.

5. **lot:**
   - Attributes: id (PK), lot_number, expiration_date, supplier_id (FK).
   - Relationships: Supplied by (FK - supplier).

6. **invoice:**
   - Attributes: id (PK), employee_id (FK), date, description, total_price.
   - Relationships: Generates (FK - employee), Includes Ingredients (FK - ingredients_in_invoice).

7. **supplier:**
   - Attributes: id (PK), name, address.
   - Relationships: Supplies (FK - lot).

8. **storage_area:**
   - Attributes: id (PK), area, storage_office_id (FK), employee_in_charge_id (FK).
   - Relationships: Located in (FK - storage_office), Supervised by (FK - employee).

9. **emails:**
   - Attributes: id (PK), description, email, owner_id (FK).
   - Relationships: Owned by (FK - supplier, employee).

10. **phone_numbers:**
    - Attributes: id (PK), prefix, description, phone_number, owner_id (FK).
    - Relationships: Owned by (FK - storage_office, employee, supplier).

11. **ingredients_in_invoice:**
    - Attributes: id (PK), invoice_id (FK), ingredient_id (FK).
    - Relationships: Includes (FK - invoice, ingredient).

12. **supplier_x_lot:**
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

2. **Storage_office:**
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
   - Attributes: ID, Employee ID, Date, Description, Total Price.
   - Relationships: Generates (with Employee), Includes Ingredients (with Ingredients).

7. **Supplier:**
   - Attributes: ID, Name, Address.
   - Relationships: Supplies (with Lot).

8. **Storage_area:**
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
