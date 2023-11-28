-- INGREDIENTES
INSERT INTO ingredient (id, name) VALUES
(1, 'Cheese'),
(2, 'Guava Paste'),
(3, 'Dulce de Leche'),
(4, 'Ham'),
(5, 'Flour'),
(6, 'Salt'),
(7, 'Sugar'),
(8, 'Butter');

-- EMPLOYEES
INSERT INTO employee VALUE (1, 'Luz Angela', 'Garcia','Calle 44 # 9-14','Jefa',NULL)

-- STORAGE OFFICE
INSERT INTO office (id, address, manager_employee_id) VALUES
(1, 'Carrera 7 # 72-34, Bogotá', 1),
(2, 'Calle 127 # 19-15, Bogotá', 2),
(3, 'Carrera 15 # 48-68, Bogotá', 3),
(4, 'Calle 34 # 23-45, Bucaramanga', 4),
(5, 'Carrera 27 # 56-89, Bucaramanga', 5);
-- STORAGE AREAS
INSERT INTO area (id, area_type, office_id, employee_in_charge_id) VALUES
(1, 'Dairy Section 1', 1, 1),  
(2, 'Sweet Section', 1, 2),    
(3, 'Cold Storage', 1, 3),    
(4, 'Dry Storage', 1, 4),
(5, 'Dairy Section 2', 1, 5);     
