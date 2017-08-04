INSERT INTO Step07.Merchant_categories VALUES ( 1, 'Otomotif', 'Parts & Accessories');
INSERT INTO Step07.Merchant_categories VALUES ( 2, 'Otomotif', 'Jual mobil baru');
INSERT INTO Step07.Merchant_categories VALUES ( 3, 'Otomotif', 'Jual mobil bekas');
INSERT INTO Step07.Merchant_categories VALUES ( 4, 'Otomotif', 'Cuci & Detailing');
INSERT INTO Step07.Merchant_categories VALUES ( 5, 'Otomotif', 'Rental');
INSERT INTO Step07.Merchant_categories VALUES ( 6, 'Otomotif', 'Service & Repair');
INSERT INTO Step07.Merchant_categories VALUES ( 7, 'Bisnis', 'Alat-alat kantor');
INSERT INTO Step07.Merchant_categories VALUES ( 8, 'Bisnis', 'Penerbitan & Percetakan');
INSERT INTO Step07.Merchant_categories VALUES ( 9, 'Elektronik', 'Komputer');

INSERT INTO Step07.Roles (Id, Rights_Level) VALUES ('Owner', 1);
INSERT INTO Step07.Roles (Id, Rights_Level) VALUES ('Manager', 2);
INSERT INTO Step07.Roles (Id, Rights_Level) VALUES ('Cashier', 3);
INSERT INTO Step07.Roles (Id, Rights_Level) VALUES ('Stockist', 4);

INSERT INTO Step07.Merchants (Address, Category_id, Code, E_mail, Name, NPWP, Phone) 
 VALUES ('Jalan Ambon #4', 1, 'AAAA', 'info@abrakadabra.com', 'Abrakadabra', '00.000.000.0-000.000', '0000-00000000');

INSERT INTO Step07.Merchants (Address, Category_id, Code, E_mail, Name, NPWP, Phone) 
 VALUES ('Jalan Zebra #3', 1, 'ABAA', 'info@abimanyu.com', 'Abimanyu', '00.000.000.0-000.000', '0000-00000000');

INSERT INTO Step07.Merchants (Address, Category_id, Code, E_mail, Name, NPWP, Phone) 
 VALUES ('Jalan Bangka #2', 7, 'ZAAA', 'info@zebracross.com', 'Zebracross', '00.000.000.0-000.000', '0000-00000000');

INSERT INTO Step07.Merchants (Address, Category_id, Code, E_mail, Name, NPWP, Phone) 
 VALUES ('Jalan Yayasan #3', 9, 'MEKO', 'info@megakompi.com', 'Mega Kompie', '00.000.000.0-000.000', '0000-00000000');

INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('owner@abrakadabra.com', 'Zuhir', 'Zuhir', '0000-0000000', 'Owner');
-- Organisasi dengan owner dan cashier, tanpa manager dan stockist
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('owner@abimanyu.com', 'Yaya', 'Yaya', '0000-0000001', 'Owner');
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('kasir1@abimanyu.com', 'Yuyun', 'Yuyun', '0000-0000002', 'Cashier');
-- Organisasi dengan owner dan manager, tanpa cashier dan stockist
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('owner@zebracross.com', 'Jexo', 'Jexo', '0000-0000003', 'Owner');
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('manager1@zebracross.com', 'Bayu', 'Bayu', '0000-0000004', 'Manager');
-- Organisasi dengan owner, manager, dan cashier; tanpa stockist
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('owner@megakompi.com', 'Jexo', 'Jexo', '0000-0000005', 'Owner');
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('manager@megakompi.com', 'Chandra', 'Chandra', '0000-0000006', 'Manager');
INSERT INTO Step07.Persons (e_mail, id, name, phone, role_id) VALUES ('kasir1@megakompi.com', 'Cia', 'Cia', '0000-0000007', 'Cashier');

INSERT INTO Step07.Tax_categories VALUES ('PPN', 'Pajak Pertambahan Nilai');
INSERT INTO Step07.Taxes (Category_id, Id, Is_cascading_rate, Parent_id, rate, rate_order) 
 VALUES ('PPN', 'Tax-id0000', 0, NULL, 0.1, 1);
 
 INSERT INTO Step07.Product_categories (id, name, Parent_id) VALUES ('Komputer', 'Komputer', NULL);
 INSERT INTO Step07.Product_categories (id, name, Parent_id) VALUES ('Screen', 'Screen', 'Komputer');
 INSERT INTO Step07.Product_categories (id, name, Parent_id) VALUES ('Jok', 'Jok', NULL);
 INSERT INTO Step07.Product_categories (id, name, Parent_id) VALUES ('Headrest', 'Headrest', 'Jok');
 
 INSERT INTO Step07.Products (Category_id, Id, Name) 
  VALUES ('Komputer', '0001', 'ASUS');
  
 INSERT INTO Step07.Products (Category_id, Id, Name) 
  VALUES ('Screen', '0002', 'Benque');
  
 INSERT INTO Step07.Products (Category_id, Id, Name) 
  VALUES ('Jok', '0003', 'Aetra');
  
 INSERT INTO Step07.Products (Category_id, Id, Name) 
  VALUES ('Headrest', '0004', 'Nissan');
  
  INSERT INTO Step07.Stock_changes (Changes_processed, change_type, Id, Location_id, Product_id, Text_value, Upload_timestamp)
   VALUES (1, 1, '00000001', NULL, '0001', 'Komputer', '2016-01-03 09:00:00');
   
  INSERT INTO Step07.Stock_changes (Changes_processed, change_type, Id, Location_id, Product_id, Text_value, Upload_timestamp)
   VALUES (1, 2, '00000002', NULL, '0001', 'Komputer', '2016-01-03 09:10:00');

  INSERT INTO Step07.Stock_changes (Changes_processed, change_type, Id, Location_id, Product_id, Text_value, Upload_timestamp)
   VALUES (1, 1, '00000003', NULL, '0002', 'Jok', '2016-01-03 09:30:00');
   
  INSERT INTO Step07.Stock_changes (Changes_processed, change_type, Id, Location_id, Product_id, Text_value, Upload_timestamp)
   VALUES (1, 1, '00000004', NULL, '0003', 'Screen', '2016-01-04 09:10:00');

  INSERT INTO Step07.Stock_changes (Changes_processed, change_type, Id, Location_id, Product_id, Text_value, Upload_timestamp)
   VALUES (1, 1, '00000005', NULL, '0004', 'Headrest', '2016-01-04 09:30:00');
   
 INSERT INTO Step07.Stock_currents (Product_id, units) VALUES ('0001', 3);
 INSERT INTO Step07.Stock_currents (Product_id, units) VALUES ('0002', 1);
 INSERT INTO Step07.Stock_currents (Product_id, units) VALUES ('0003', 2);
 INSERT INTO Step07.Stock_currents (Product_id, units) VALUES ('0004', 4);
 
 INSERT INTO Step07.Stock_Levels (id, maximum, Product_id, security) VALUES ('Level 1 - Komp', 20.0, '0001', 1);
 INSERT INTO Step07.Stock_Levels (id, maximum, Product_id, security) VALUES ('Level 2 - Komp', 2.0, '0002', 2);
 INSERT INTO Step07.Stock_Levels (id, maximum, Product_id, security) VALUES ('Level 1 - Jok', 4.0, '0001', 1);
 INSERT INTO Step07.Stock_Levels (id, maximum, Product_id, security) VALUES ('Level 2 - Jok', 25.0, '0001', 1);
 