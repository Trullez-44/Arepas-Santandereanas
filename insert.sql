-- EMPLOYEES
INSERT INTO employee VALUE (1,'Luz Angela', 'Garcia','Calle 44 # 9-14','Jefa',NULL,NULL,NULL);
INSERT INTO employee (id, name, last_name, address, position, boss_id, email, phone_number) VALUES
(2, 'Maria Isabel', 'González', 'Calle 72 #10-34', 'Office Manager', 1, 'maria.gonzalez@arepas-santandereanas.com', '123456789'),
(3, 'Carlos Antonio', 'Rodríguez', 'Carrera 45 #23-12', 'Office Manager', 1, 'carlos.rodriguez@arepas-santandereanas.com', '987654321'),
(4, 'Laura Patricia', 'Hernández', 'Avenida 15 #5-89', 'Office Manager', 1, 'laura.hernandez@arepas-santandereanas.com', '456789123'),
(5, 'David Alejandro', 'Martínez', 'Carrera 18 #40-67', 'Office Manager', 1, 'david.martinez@arepas-santandereanas.com', '789123456'),    
(6, 'Ana Carolina', 'López', 'Calle 56 #8-21', 'Office Manager', 1, 'ana.lopez@arepas-santandereanas.com', '321654987'),  
(7, 'Maria Alejandra', 'Sánchez', 'Carrera 32 #14-45', 'Head Chef', 2, 'maria.sanchez@arepas-santandereanas.com', '654789321'),
(8, 'Carlos Eduardo', 'Pérez', 'Calle 85 #20-30', 'Head Chef', 3, 'carlos.perez@arepas-santandereanas.com', '789321654'),
(9, 'Laura Sofia', 'Ramírez', 'Avenida 10 #34-76', 'Head Chef', 4, 'laura.ramirez@arepas-santandereanas.com', '987321654'),
(10, 'David Andrés', 'Díaz', 'Carrera 50 #18-15', 'Head Chef', 5, 'david.diaz@arepas-santandereanas.com', '321789654'),    
(11, 'Ana Maria', 'Torres', 'Calle 68 #25-19', 'Head Chef', 6, 'ana.torres@arepas-santandereanas.com', '654321789'),  
(12, 'Pedro José', 'Fernández', 'Carrera 14 #30-40', 'The Cashier', 2, 'pedro.fernandez@arepas-santandereanas.com', '456321789'),  
(13, 'Isabel Cristina', 'Gómez', 'Avenida 5 #16-25', 'The Cashier', 3, 'isabel.gomez@arepas-santandereanas.com', '789456321'),  
(14, 'Juan Esteban', 'Jiménez', 'Calle 42 #12-38', 'The Cashier', 4, 'juan.jimenez@arepas-santandereanas.com', '321456789'),
(15, 'Sofia Fernanda', 'Vargas', 'Avenida 8 #22-17', 'The Cashier', 5, 'sofia.vargas@arepas-santandereanas.com', '987654321'),
(16, 'Alejandro Luis', 'Serrano', 'Carrera 25 #9-65', 'The Cashier', 6, 'alejandro.serrano@arepas-santandereanas.com', '321987654'),
(17, 'Lucia María', 'Molina', 'Calle 82 #34-56', 'Ingredient Mover', 2, 'lucia.molina@arepas-santandereanas.com', '456789012'),
(18, 'Diego Alejandro', 'Castro', 'Avenida 12 #45-23', 'Ingredient Mover', 2, 'diego.castro@arepas-santandereanas.com', '789012345'),
(19, 'Elena Carolina', 'Gutiérrez', 'Carrera 38 #14-32', 'Ingredient Mover', 2, 'elena.gutierrez@arepas-santandereanas.com', '012345678'),
(20, 'Gabriel Antonio', 'Ortiz', 'Calle 70 #19-28', 'Ingredient Mover', 2, 'gabriel.ortiz@arepas-santandereanas.com', '234567890'),
(21, 'Valeria Sofia', 'Chavez', 'Avenida 30 #25-18', 'Ingredient Mover', 3, 'valeria.chavez@arepas-santandereanas.com', '567890123'),
(22, 'Javier Enrique', 'Ramos', 'Carrera 19 #8-75', 'Sous Chef', 7, 'javier.ramos@arepas-santandereanas.com', '890123456'),
(23, 'Camila Isabel', 'Ruiz', 'Calle 54 #10-56', 'Sous Chef', 8, 'camila.ruiz@arepas-santandereanas.com', '123456789'),
(24, 'Miguel Angel', 'Alvarez', 'Avenida 7 #15-22', 'Sous Chef', 9, 'miguel.alvarez@arepas-santandereanas.com', '234567890'),
(25, 'Adriana Patricia', 'Reyes', 'Carrera 23 #30-45', 'Sous Chef', 10, 'adriana.reyes@arepas-santandereanas.com', '345678901'),
(26, 'Mateo Alejandro', 'Mendoza', 'Calle 65 #12-34', 'Sous Chef', 11, 'mateo.mendoza@arepas-santandereanas.com', '456789012'),
(27, 'Isabella Antonia', 'Castillo', 'Carrera 31 #23-19', 'Ingredient Mover', 3, 'isabella.castillo@arepas-santandereanas.com', '567890123'),
(28, 'Daniel Alejandro', 'Estrada', 'Calle 42 #8-33', 'Ingredient Mover', 3, 'daniel.estrada@arepas-santandereanas.com', '678901234'),
(29, 'Emma Valentina', 'Pardo', 'Avenida 18 #35-40', 'Ingredient Mover', 3, 'emma.pardo@arepas-santandereanas.com', '789012345'),
(30, 'Nicolas Felipe', 'Vega', 'Carrera 10 #14-28', 'Ingredient Mover', 4, 'nicolas.vega@arepas-santandereanas.com', '890123456'),
(31, 'Sara Isabella', 'Moreno', 'Calle 75 #19-25', 'Ingredient Mover', 4, 'sara.moreno@arepas-santandereanas.com', '901234567'),
(32, 'Alejandra Sofia', 'Duarte', 'Avenida 22 #30-12', 'Ingredient Mover', 4, 'alejandra.duarte@arepas-santandereanas.com', '012345678'),
(33, 'Juan David', 'Cardona', 'Carrera 28 #16-22', 'Ingredient Mover', 4, 'juan.cardona@arepas-santandereanas.com', '234567890'),
(34, 'Isabella Maria', 'Herrera', 'Calle 50 #23-10', 'Ingredient Mover', 5, 'isabella.herrera@arepas-santandereanas.com', '345678901'),
(35, 'Daniel Enrique', 'Giraldo', 'Avenida 14 #27-18', 'Ingredient Mover', 5, 'daniel.giraldo@arepas-santandereanas.com', '456789012'),
(36, 'Emma Valentina', 'Salazar', 'Carrera 35 #10-32', 'Ingredient Mover', 5, 'emma.salazar@arepas-santandereanas.com', '567890123'),
(37, 'Nicolas Alejandro', 'Valencia', 'Calle 80 #15-19', 'Ingredient Mover', 5, 'nicolas.valencia@arepas-santandereanas.com', '678901234'),
(38, 'Sara Fernanda', 'Restrepo', 'Avenida 25 #30-45', 'Ingredient Mover', 6, 'sara.restrepo@arepas-santandereanas.com', '789012345'),
(39, 'Alejandra Isabel', 'Velasco', 'Calle 60 #18-22', 'Ingredient Mover', 6, 'alejandra.velasco@arepas-santandereanas.com', '901234567'),
(40, 'Juan Pablo', 'Bermúdez', 'Carrera 20 #25-30', 'Ingredient Mover', 6, 'juan.bermudez@arepas-santandereanas.com', '012345678'),
(41, 'Juan Felipe', 'Monsalve', 'Avenida 33 #40-15', 'Ingredient Mover', 6, 'juan.monsalve@arepas-santandereanas.com', '234567890'),
(42, 'Alejandra Maria', 'Gaviria', 'Carrera 12 #15-28', 'Delivery person', 2, 'alejandra.gaviria@arepas-santandereanas.com', '345678901'),
(43, 'Juan Esteban', 'Rojas', 'Calle 38 #10-45', 'Delivery person', 3, 'juan.rojas@arepas-santandereanas.com', '456789012'),
(44, 'Isabella Cristina', 'Arango', 'Avenida 17 #22-19', 'Delivery person', 4, 'isabella.arango@arepas-santandereanas.com', '567890123'),
(45, 'Daniel Alejandro', 'Herrera', 'Carrera 5 #12-33', 'Delivery person', 5, 'daniel.herrera@arepas-santandereanas.com', '678901234'),
(46, 'Emma Valentina', 'González', 'Calle 48 #18-26', 'Delivery person', 6, 'emma.gonzalez@arepas-santandereanas.com', '789012345'),
(47, 'Nicolas Felipe', 'Ramírez', 'Carrera 14 #30-15', 'Packer person', 2, 'nicolas.ramirez@arepas-santandereanas.com', '901234567'),
(48, 'Sara Isabella', 'Pérez', 'Avenida 28 #10-38', 'Packer person', 3, 'sara.perez@arepas-santandereanas.com', '012345678'),
(49, 'Alejandra Sofia', 'Jiménez', 'Calle 60 #25-19', 'Packer person', 4, 'alejandra.jimenez@arepas-santandereanas.com', '234567890'),
(50, 'Juan David', 'Gómez', 'Avenida 8 #14-29', 'Packer person', 5, 'juan.gomez@arepas-santandereanas.com', '345678901'),
(51, 'Juan Felipe', 'Chaves', 'Carrera 35 #20-17', 'Packer person', 6, 'juan.chaves@arepas-santandereanas.com', '456789012');

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

-- STORAGE OFFICE
INSERT INTO office (id, address, email, phone_number) VALUES
(1, 'Carrera 7 # 72-34, Bogotá'),
(2, 'Calle 127 # 19-15, Bogotá' ),
(3, 'Carrera 15 # 48-68, Bogotá' ),
(4, 'Calle 34 # 23-45, Bogotá'),
(5, 'Carrera 27 # 56-89, Bogotá' );
-- STORAGE AREAS
INSERT INTO area (id,area_name,office_id,description) VALUES
(1, 'Dairy Section 1', 1,'For Cheese and Butter'),  
(2, 'Sweet Section', 1,'For Guava Paste and Dulce de Leche'),    
(3, 'Cold Storage', 1,'For Ham'),    
(4, 'Dry Storage', 1,'For Flour, Salt, and Sugar'),
(5, 'Kitchen',1,NULL),
(6, 'Dairy Section 1', 2,'For Cheese and Butter'),  
(7, 'Sweet Section', 2,'For Guava Paste and Dulce de Leche'),    
(8, 'Cold Storage', 2,'For Ham'),    
(9, 'Dry Storage', 2,'For Flour, Salt, and Sugar'),
(10, 'Kitchen',2,NULL),
(11, 'Dairy Section 1', 3,'For Cheese and Butter'),  
(12, 'Sweet Section', 3,'For Guava Paste and Dulce de Leche'),    
(13, 'Cold Storage', 3,'For Ham'),    
(14, 'Dry Storage', 3,'For Flour, Salt, and Sugar'),
(15, 'Kitchen',3,NULL),
(16, 'Dairy Section 1', 4,'For Cheese and Butter'),  
(17, 'Sweet Section', 4,'For Guava Paste and Dulce de Leche'),    
(18, 'Cold Storage', 4,'For Ham'),    
(19, 'Dry Storage', 4,'For Flour, Salt, and Sugar'),
(20, 'Kitchen',4,NULL),
(21, 'Dairy Section 1', 5,'For Cheese and Butter'),  
(22, 'Sweet Section', 5,'For Guava Paste and Dulce de Leche'),    
(23, 'Cold Storage', 5,'For Ham'),    
(24, 'Dry Storage', 5,'For Flour, Salt, and Sugar'),
(25, 'Kitchen',5,NULL),
(26, 'Cashier',1,'Cashier office 1'),
(27, 'Cashier',2,'Cashier office 2'),
(28, 'Cashier',3,'Cashier office 3'),
(29, 'Cashier',4,'Cashier office 4'),
(30, 'Cashier',5,'Cashier office 5'),
(31, 'Packing Area',1,NULL),
(32, 'Packing Area',2,NULL),
(33, 'Packing Area',3,NULL),
(34, 'Packing Area',4,NULL),
(35, 'Packing Area',5,NULL),
(36, 'Transportation Area',1,'Transportation Zone Office 1'),
(37, 'Transportation Area',2,'Transportation Zone Office 2'),
(38, 'Transportation Area',3,'Transportation Zone Office 3'),
(39, 'Transportation Area',4,'Transportation Zone Office 4'),
(40, 'Transportation Area',5,'Transportation Zone Office 5');

/*SUPPLIERS */
INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(101, 'Proveedores del Valle', 'Carrera 15 #34-56, Cali, Valle del Cauca', 'Specialized in artisanal cheeses', 'proveedores.valle@arepas-santandereanas.com', '123456789'),
(102, 'Dairy Delights Ltda.', 'Calle 23 #45-67, Armenia, Quindío', 'Premium cheese and dairy products', 'dairy.delights@arepas-santandereanas.com', '234567890'),
(103, 'Quesos y Más', 'Carrera 32 #12-48, Manizales, Caldas', 'Wide variety of Colombian cheeses', 'quesos.mas@arepas-santandereanas.com', '345678901'),
(104, 'La Granja Láctea', 'Avenida 5 #66-77, Pereira, Risaralda', 'Organic cheese and milk products', 'granja.lactea@arepas-santandereanas.com', '456789012'),
(105, 'Sabor del Campo', 'Carrera 50 #30-20, Montería, Córdoba', 'Artisan cheeses from local farms', 'sabor.campo@arepas-santandereanas.com', '567890123');

INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(106, 'Frutas Tropicales S.A.', 'Calle 40 #22-33, Neiva, Huila', 'High-quality tropical fruit products', 'frutas.tropicales@arepas-santandereanas.com', '678901234'),
(107, 'GuavaGold', 'Carrera 18 #55-44, Ibagué, Tolima', 'Specialists in guava paste and derivatives', 'guava.gold@arepas-santandereanas.com', '789012345'),
(108, 'Dulces del Valle', 'Avenida 10 #15-25, Palmira, Valle del Cauca', 'Premium guava paste and sweets', 'dulces.valle@arepas-santandereanas.com', '890123456'),
(109, 'Sabor a Guayaba', 'Carrera 22 #11-56, Villavicencio, Meta', 'Artisanal guava products', 'sabor.guayaba@arepas-santandereanas.com', '901234567'),
(110, 'ExportaFrut', 'Calle 50 #20-30, Sincelejo, Sucre', 'Export quality guava paste', 'exportafrut@arepas-santandereanas.com', '012345678');

INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(111, 'Leche y Miel Ltda.', 'Carrera 15 #34-56, Tunja, Boyacá', 'Specialized in dairy sweets, including dulce de leche', 'leche.miel@arepas-santandereanas.com', '123456789'),
(112, 'Dulce Tradición', 'Calle 80 #12-45, Florencia, Caquetá', 'Artisanal dulce de leche and confections', 'dulce.tradicion@arepas-santandereanas.com', '234567890'),
(113, 'Delicias Lecheras', 'Carrera 7 #50-22, Popayán, Cauca', 'High-quality milk products and sweets', 'delicias.lecheras@arepas-santandereanas.com', '345678901'),
(114, 'Sabor Casero', 'Carrera 45 #26-33, Riohacha, La Guajira', 'Homemade dulce de leche and desserts', 'sabor.casero@arepas-santandereanas.com', '456789012'),
(115, 'Dulzura de Leche', 'Avenida Bolívar #30-20, Arauca, Arauca', 'Traditional Colombian dulce de leche', 'dulzura.leche@arepas-santandereanas.com', '567890123');

INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(116, 'Carnes Premium', 'Calle 30 #45-60, Santa Marta, Magdalena', 'Specialized in high-quality cured meats', 'carnes.premium@arepas-santandereanas.com', '678901234'),
(117, 'Delicias Porcinas', 'Carrera 60 #33-22, Valledupar, Cesar', 'Artisanal ham and pork products', 'delicias.porcinas@arepas-santandereanas.com', '789012345'),
(118, 'Sabor Serrano', 'Avenida Libertadores #50-75, Cúcuta, Norte de Santander', 'Premium ham and charcuterie', 'sabor.serrano@arepas-santandereanas.com', '890123456'),
(119, 'Jamones del Campo', 'Carrera 40 #25-60, Yopal, Casanare', 'Organic and traditional ham products', 'jamones.campo@arepas-santandereanas.com', '901234567'),
(120, 'Gourmet Meats Ltda.', 'Calle 15 #10-20, Mocoa, Putumayo', 'Specialists in smoked and cured hams', 'gourmet.meats@arepas-santandereanas.com', '012345678');

INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(121, 'Molinos Andinos', 'Carrera 20 #42-55, Pasto, Nariño', 'High-quality wheat and corn flour', 'molinos.andinos@arepas-santandereanas.com', '123456789'),
(122, 'Harinas del Valle', 'Calle 45 #22-33, Popayán, Cauca', 'Premium baking flours and mixes', 'harinas.valle@arepas-santandereanas.com', '234567890'),
(123, 'Granero Central', 'Avenida 6 #66-77, Manizales, Caldas', 'Variety of organic and specialty flours', 'granero.central@arepas-santandereanas.com', '345678901'),
(124, 'Molinos del Norte', 'Carrera 15 #30-20, Montería, Córdoba', 'Artisanal and whole grain flours', 'molinos.norte@arepas-santandereanas.com', '456789012'),
(125, 'Harina Pura Vida', 'Calle 50 #20-30, Bucaramanga, Santander', 'All-natural and unbleached flour products', 'harina.pura@arepas-santandereanas.com', '567890123');

INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(126, 'Salinas de Colombia', 'Carrera 18 #55-44, Zipaquirá, Cundinamarca', 'High-quality sea and rock salt', 'salinas.colombia@arepas-santandereanas.com', '678901234'),
(127, 'Salud y Sabor', 'Calle 10 #15-25, Barranquilla, Atlántico', 'Specialized in gourmet and flavored salts', 'salud.sabor@arepas-santandereanas.com', '789012345'),
(128, 'Sal Marina Ltda.', 'Carrera 22 #11-56, Santa Marta, Magdalena', 'Premium sea salt and mineral salts', 'sal.marina@arepas-santandereanas.com', '890123456'),
(129, 'Sabor Natural', 'Avenida 5 #66-77, Cartagena, Bolívar', 'Organic and artisanal salt products', 'sabor.natural@arepas-santandereanas.com', '901234567'),
(130, 'Sal Gourmet', 'Calle 23 #45-67, Medellín, Antioquia', 'Artisanal and specialty salts for cooking', 'sal.gourmet@arepas-santandereanas.com', '012345678');
INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(131, 'Dulce Caña Ltda.', 'Carrera 32 #12-48, Cali, Valle del Cauca', 'Premium cane sugar and sweeteners', 'dulce.cana@arepas-santandereanas.com', '123456789'),
(132, 'Azúcar Natural', 'Calle 80 #12-45, Pereira, Risaralda', 'Organic and unrefined sugar products', 'azucar.natural@arepas-santandereanas.com', '234567890'),
(133, 'Dulces del Sur', 'Carrera 7 #50-22, Neiva, Huila', 'Specialized in raw and brown sugars', 'dulces.sur@arepas-santandereanas.com', '345678901'),
(134, 'Cultivos de Azúcar', 'Carrera 45 #26-33, Armenia, Quindío', 'Sustainable and high-quality sugar production', 'cultivos.azucar@arepas-santandereanas.com', '456789012'),
(135, 'Azúcar Pura Vida', 'Avenida Bolívar #30-20, Ibagué, Tolima', 'Artisanal and natural sugar varieties', 'azucar.pura@arepas-santandereanas.com', '567890123');

INSERT INTO supplier (id, name, address, description, email, phone_number) VALUES 
(136, 'Lácteos del Campo', 'Calle 50 #20-30, Tunja, Boyacá', 'Artisanal butter and dairy products', 'lacteos.campo@arepas-santandereanas.com', '678901234'),
(137, 'Crema y Sabor', 'Carrera 50 #30-20, Villavicencio, Meta', 'Premium organic butter and spreads', 'crema.sabor@arepas-santandereanas.com', '789012345'),
(138, 'ButterGold', 'Carrera 15 #34-56, Sincelejo, Sucre', 'High-quality creamery butter', 'buttergold@arepas-santandereanas.com', '890123456'),
(139, 'Delicias Lácteas', 'Calle 30 #45-60, Riohacha, La Guajira', 'Specialized in gourmet butter and dairy', 'delicias.lacteas@arepas-santandereanas.com', '901234567'),
(140, 'Sabor y Tradición', 'Carrera 60 #33-22, Arauca, Arauca', 'Traditional Colombian butter and creams', 'sabor.tradicion@arepas-santandereanas.com', '012345678');
/* LOT CODES */
/* Remember use this codes in invoice table */
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(1, 'QC05223', '2023-12-31'),
(41, 'QC05498', '2024-12-31'),
(2, 'QC06123', '2024-11-30'),
(3, 'QC07223', '2024-10-31'),
(4, 'QC08323', '2024-09-30'),
(5, 'QC09123', '2024-08-31');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(6, 'PG210403', '2024-04-21'),
(7, 'PG220504', '2024-05-22'),
(8, 'PG230605', '2024-06-23'),
(9, 'PG240706', '2024-07-24'),
(10, 'PG250807', '2024-08-25');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(11, 'DL23A07', '2023-12-31'),
(12, 'DL23B08', '2024-01-31'),
(13, 'DL23C09', '2024-02-28'),
(14, 'DL23D10', '2024-03-31'),
(15, 'DL23E11', '2024-04-30');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(16, 'JN0321B', '2023-12-15'),
(17, 'JN0422B', '2023-12-30'),
(18, 'JN0523B', '2024-01-14'),
(19, 'JN0624B', '2024-01-29'),
(20, 'JN0725B', '2024-02-13');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(26, 'SL0323K', '2025-03-03'),
(27, 'SL0424K', '2025-04-04'),
(28, 'SL0525K', '2025-05-05'),
(29, 'SL0626K', '2025-06-06'),
(30, 'SL0727K', '2025-07-07');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(31, 'AZ230415', '2024-10-15'),
(32, 'AZ240516', '2024-11-16'),
(33, 'AZ250617', '2024-12-17'),
(34, 'AZ260718', '2025-01-18'),
(35, 'AZ270819', '2025-02-19');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(21, 'HR2301C', '2024-06-30'),
(22, 'HR2402C', '2024-07-31'),
(23, 'HR2503C', '2024-08-31'),
(24, 'HR2604C', '2024-09-30'),
(25, 'HR2705C', '2024-10-31');
INSERT INTO lot (id, lot_number, expiration_date) VALUES 
(36, 'MTB220712', '2023-12-31'),
(37, 'MTB230813', '2024-01-31'),
(38, 'MTB240914', '2024-02-28'),
(39, 'MTB251015', '2024-03-31'),
(40, 'MTB261116', '2024-04-30');
/* INGREDIENTS */
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(1, 40, 10, 1, 1, 'Double cream cheese block', 1),
(41, 40, 10, 1, 41, 'Double cream cheese block', 1),
(2, 40, 15, 6, 2, 'Double cream cheese block', 1),
(3, 40, 25, 11,3, 'Double cream cheese block', 1),
(4, 40, 18, 16,4, 'Double cream cheese block', 1),
(5, 40, 22, 21,5, 'Double cream cheese block', 1);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(6, 15, 40, 2, 6, 'Sweet Guava Paste Container', 2),
(7, 15, 35, 7, 7, 'Sweet Guava Paste Container', 2),
(8, 15, 45, 12, 8, 'Sweet Guava Paste Container', 2),
(9, 15, 38, 17, 9, 'Sweet Guava Paste Container', 2),
(10, 15, 42, 22, 10, 'Sweet Guava Paste Container', 2);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(16, 20, 30, 3, 16, 'Smoked Ham Piece', 4),
(17, 20, 25, 8, 17, 'Smoked Ham Piece', 4),
(18, 20, 35, 13, 18, 'Smoked Ham Piece', 4),
(19, 20, 28, 18, 19, 'Smoked Ham Piece', 4),
(20, 20, 32, 23, 20, 'Smoked Ham Piece', 4);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(11, 30, 50, 2, 11, 'Dulce de Leche Large Container', 3),
(12, 30, 45, 7, 12, 'Dulce de Leche Large Container', 3),
(13, 30, 55, 12, 13, 'Dulce de Leche Large Container', 3),
(14, 30, 48, 17, 14, 'Dulce de Leche Large Container', 3),
(15, 30, 60, 22, 15, 'Dulce de Leche Large Container', 3);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(21, 50, 100, 4, 21, 'Precooked white corn flour', 5),
(22, 50, 90, 9, 22, 'Precooked white corn flour', 5),
(23, 50, 110, 14, 23, 'Precooked white corn flour', 5),
(24, 50, 95, 19, 24, 'Precooked white corn flour', 5),
(25, 50, 105, 24, 25, 'Precooked white corn flour', 5);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(26, 25, 150, 4, 26, 'Sea Salt Bag', 6),
(27, 25, 140, 9, 27, 'Sea Salt Bag', 6),
(28, 25, 160, 14, 28, 'Sea Salt Bag', 6),
(29, 25, 145, 19, 29, 'Sea Salt Bag', 6),
(30, 25, 155, 24, 30, 'Sea Salt Bag', 6);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(36, 20, 40, 1, 36, 'Table and kitchen margarine', 8),
(37, 20, 35, 6, 37, 'Table and kitchen margarine', 8),
(38, 20, 45, 11, 38, 'Table and kitchen margarine', 8),
(39, 20, 38, 16, 39, 'Table and kitchen margarine', 8),
(40, 20, 42, 21, 40, 'Table and kitchen margarine', 8);
INSERT INTO raw_materials_stock (id, pounds_per_unit, quantity, area_id, lot_id, description, ingredient_id) VALUES 
(31, 100, 80, 4, 31, 'White Sugar Sack', 7),
(32, 100, 70, 9, 32, 'White Sugar Sack', 7),
(33, 100, 85, 14, 33, 'White Sugar Sack', 7),
(34, 100, 75, 19, 34, 'White Sugar Sack', 7),
(35, 100, 90, 24, 35, 'White Sugar Sack', 7);
/* SUPPLIER X LOT */
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(1, 1, 1),
(41, 1, 41),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25);
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30);
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35);
INSERT INTO supplier_x_lot (id, supplier_id, lot_id) VALUES 
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40);
/* EMPLOYEE_PLACE */
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(1, 7, 5, 'Kitchen Area'),
(2, 8, 10, 'Kitchen Area'),
(3, 9, 15, 'Kitchen Area'),
(4, 10, 20, 'Kitchen Area'),
(5, 11, 25, 'Kitchen Area');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(6, 22, 5, 'Kitchen Area'),
(7, 23, 10, 'Kitchen Area'),
(8, 24, 15, 'Kitchen Area'),
(9, 25, 20, 'Kitchen Area'),
(10, 26, 25, 'Kitchen Area');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(11, 12, 26, 'Cashier Area'),
(12, 13, 27, 'Cashier Area'),
(13, 14, 28, 'Cashier Area'),
(14, 15, 29, 'Cashier Area'),
(15, 16, 30, 'Cashier Area');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(16, 17, 1, 'Ingredient Mover in Dairy Section'),
(17, 18, 2, 'Ingredient Mover in Sweet Section'),
(18, 19, 3, 'Ingredient Mover in Cold Storage'),
(19, 20, 4, 'Ingredient Mover in Dry Storage');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(20, 21, 6, 'Ingredient Mover in Dairy Section'),
(21, 27, 7, 'Ingredient Mover in Sweet Section'),
(22, 28, 8, 'Ingredient Mover in Cold Storage'),
(23, 29, 9, 'Ingredient Mover in Dry Storage');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(24, 30, 11, 'Ingredient Mover in Dairy Section'),
(25, 31, 12, 'Ingredient Mover in Sweet Section'),
(26, 32, 13, 'Ingredient Mover in Cold Storage'),
(27, 33, 14, 'Ingredient Mover in Dry Storage');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(28, 34, 16, 'Ingredient Mover in Dairy Section'),
(29, 35, 17, 'Ingredient Mover in Sweet Section'),
(30, 36, 18, 'Ingredient Mover in Cold Storage'),
(31, 37, 19, 'Ingredient Mover in Dry Section');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(32, 38, 21, 'Ingredient Mover in Dairy Section'),
(33, 39, 22, 'Ingredient Mover in Sweet Section'),
(34, 40, 23, 'Ingredient Mover in Cold Storage'),
(35, 41, 24, 'Ingredient Mover in Dry Section');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(36, 42, 36, 'Transportation Area'),
(37, 43, 37, 'Transportation Area'),
(38, 44, 38, 'Transportation Area'),
(39, 45, 39, 'Transportation Area'),
(40, 46, 40, 'Transportation Area');
INSERT INTO employee_place (id, employee_id, area_id, description) VALUES 
(41, 47, 31, 'Packing Area'),
(42, 48, 32, 'Packing Area'),
(43, 49, 33, 'Packing Area'),
(44, 50, 34, 'Packing Area'),
(45, 51, 35, 'Packing Area');
/*INVOICES  */
INSERT INTO invoice (id, employee_id, date, supplier_id) VALUES 
(1, 2, '2023-01-10', 1),  
(2, 3, '2023-01-15', 2),  
(3, 4, '2023-02-01', 3),  
(4, 5, '2023-02-05', 4),  
(5, 6, '2023-02-20', 5);  
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(6, 2, '2023-01-12', 6),  
(7, 3, '2023-01-18', 7),  
(8, 4, '2023-02-02', 8),  
(9, 5, '2023-02-14', 9), 
(10, 6, '2023-02-25', 10); 
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(11, 2, '2023-01-13', 11),
(12, 3, '2023-01-19', 12),
(13, 4, '2023-02-03', 13),
(14, 5, '2023-02-15', 14),
(15, 6, '2023-02-26', 15);
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(16, 2, '2023-01-14',  16),
(17, 3, '2023-01-20',  17),
(18, 4, '2023-02-04',  18),
(19, 5, '2023-02-16',  19),
(20, 6, '2023-02-27',  20);
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(21, 2, '2023-01-16',  2),
(22, 3, '2023-01-22',  22),
(23, 4, '2023-02-06',  2),
(24, 5, '2023-02-17',  24),
(25, 6, '2023-02-28',  25);
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(26, 2, '2023-01-17',  26),
(27, 3, '2023-01-23',  27),
(28, 4, '2023-02-07',  28),
(29, 5, '2023-02-18',  29),
(30, 6, '2023-03-01',  30);
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(31, 2, '2023-01-18',  31),
(32, 3, '2023-01-24',  32),
(33, 4, '2023-02-08',  33),
(34, 5, '2023-02-19',  34),
(35, 6, '2023-03-02',  35);
INSERT INTO invoice (id, employee_id, date, supplier_id, lot) VALUES 
(36, 2, '2023-01-19', 36),
(37, 3, '2023-01-25', 37),
(38, 4, '2023-02-09', 38),
(39, 5, '2023-02-20', 39),
(40, 6, '2023-03-03', 40);
/* -- Ingredients in Invoice Table
 */

INSERT INTO ingredients_in_invoice (id, invoice_id, ingredient_id, quantity, description, price, lot) VALUES
-- Cheese
(1, 1, 1, 10, 'Cheese Lot 1', 250000, 'QC05223'),
(41, 1, 1, 10, 'Cheese Lot 1', 250000,'QC05498'),
(2, 2, 1, 15, 'Cheese Lot 2', 480000, 'QC06123'),
(3, 3, 1, 25, 'Cheese Lot 3', 450000, 'QC07223'),
(4, 4, 1, 18, 'Cheese Lot 4', 440000, 'QC08323'),
(5, 5, 1, 22, 'Cheese Lot 5', 560000, 'QC09123'),
-- Guava Paste
(6, 6, 2, 40, 'Guava Paste Lot 6', 300000, 'PG210403'),
(7, 7, 2, 35, 'Guava Paste Lot 7', 350000, 'PG220504'),
(8, 8, 2, 45, 'Guava Paste Lot 8', 330000,'PG230605'),
(9, 9, 2, 38, 'Guava Paste Lot 9', 310000, 'PG240706'),
(10, 10, 2, 42, 'Guava Paste Lot 10', 340000, 'PG250807'),
-- Dulce de Leche
(11, 11, 3, 50, 'Dulce de Leche Lot 11', 400000, 'DL23A07'),
(12, 12, 3, 45, 'Dulce de Leche Lot 12', 380000, 'DL23B08'),
(13, 13, 3, 55, 'Dulce de Leche Lot 13', 420000, 'DL23C09'),
(14, 14, 3, 48, 'Dulce de Leche Lot 14', 390000, 'DL23D10'),
(15, 15, 3, 60, 'Dulce de Leche Lot 15', 430000, 'DL23E11'),
-- Ham
(16, 16, 4, 30, 'Ham Lot 16', 600000, 'JN0321B'),
(17, 17, 4, 25, 'Ham Lot 17', 550000, 'JN0422B'),
(18, 18, 4, 35, 'Ham Lot 18', 650000, 'JN0523B'),
(19, 19, 4, 28, 'Ham Lot 19', 560000, 'JN0624B'),
(20, 20, 4, 32, 'Ham Lot 20', 640000, 'JN0725B'),
-- Flour
(21, 21, 5, 100, 'Flour Lot 21', 200000, 'HR2301C'),
(22, 22, 5, 90, 'Flour Lot 22', 190000, 'HR2402C'),
(23, 23, 5, 110, 'Flour Lot 23', 210000, 'HR2503C'),
(24, 24, 5, 95, 'Flour Lot 24', 195000, 'HR2604C'),
(25, 25, 5, 105, 'Flour Lot 25', 205000, 'HR2705C'),
-- Salt
(26, 26, 6, 150, 'Salt Lot 26', 150000, 'SL0323K'),
(27, 27, 6, 140, 'Salt Lot 27', 140000, 'SL0424K'),
(28, 28, 6, 160, 'Salt Lot 28', 160000, 'SL0525K'),
(29, 29, 6, 145, 'Salt Lot 29', 145000, 'SL0626K'),
(30, 30, 6, 155, 'Salt Lot 30', 155000, 'SL0727K'),
-- Sugar
(31, 31, 7, 80, 'Sugar Lot 31', 250000, 'AZ230415'),
(32, 32, 7, 70, 'Sugar Lot 32', 240000, 'AZ240516'),
(33, 33, 7, 85, 'Sugar Lot 33', 260000, 'AZ250617'),
(34, 34, 7, 75, 'Sugar Lot 34', 245000, 'AZ260718'),
(35, 35, 7, 90, 'Sugar Lot 35', 255000, 'AZ270819'),
-- Butter
(36, 36, 8, 40, 'Butter Lot 36', 300000, 'MTB220712'),
(37, 37, 8, 35, 'Butter Lot 37', 290000, 'MTB230813'),
(38, 38, 8, 45, 'Butter Lot 38', 310000, 'MTB240914'),
(39, 39, 8, 38, 'Butter Lot 39', 295000, 'MTB251015'),
(40, 40, 8, 42, 'Butter Lot 40', 305000, 'MTB261116');
/* EMAILS */
-- Insert Statements for Manager Emails



/* POSSIBLE QUERIES  */
/*This retrieves records that will expire in the next 30 days. 
Select Records Expiring in the Next 30 Days */
SELECT * FROM lot WHERE expiration_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);
/* 
Select Records that Expired in the Last 30 Days
This query selects records that expired in the last 30 days.*/
SELECT * FROM lot WHERE expiration_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 30 DAY) AND CURDATE();


select m.id,m.name, f.id,f.address, GROUP_CONCAT(a.area_name) as AREAS
FROM office f
JOIN employee m ON f.manager_id = m.id
JOIN area a ON f.id = a.office_id
GROUP BY f.id;