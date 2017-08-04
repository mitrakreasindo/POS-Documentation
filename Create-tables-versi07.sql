-- In schema "Step07"; several columns are renamed
-- Some columns are merged.
-- Bernaridho. 2017-07-30.

--CREATE TYPE timestamp FROM DateTime ;

CREATE TABLE "Step07".Breaks 
(
  Id varchar(15) NOT NULL,
  Is_visible boolean default true NOT NULL, -- previously Visible
  Name varchar(25), -- NOT NULL
  Notes varchar(50)
);


CREATE TABLE "Step07".Closed_Cashes 
(
  Host varchar(50), -- NOT NULL
  Money varchar(20) NOT NULL,
  Sales_count integer DEFAULT 0 NOT NULL, -- previously NoSales
  Start_timestamp timestamp default current_timestamp NOT NULL, -- previously DateStart
  Stop_timestamp timestamp -- previously DateEnd
);


CREATE TABLE "Step07".Consumers 
(
  Address varchar(40),
  Address2 varchar(50),
  Card varchar(20),
  City varchar(25),
  Country varchar(25),
  Start_Date date default current_date, -- previously CurDate
  CurDebt float(52) DEFAULT 0,
  DOB Date, -- previously timestamp
  Discount float(23) DEFAULT 0, -- previously float(52)
  E_mail varchar(40), 
  Fax varchar(20),
  Id varchar(20) NOT NULL, -- fill value of this column with the Name value
  Image ByteA,
  Is_visible boolean default true,
  Key4Searching varchar(255), 
  MaxDebt float(52) DEFAULT 0, -- NOT NULL
  Name varchar(40) DEFAULT ' ' NOT NULL, 
  Notes varchar(50),
  Phone varchar(20),
  Phone2 varchar(20),
  Region varchar(20),
  TaxCategory_Id varchar(25), 
  Tax_Id varchar(25), 
  Zipcode varchar(255)
);


CREATE TABLE "Step07".CSV_Imports 
(
  Category varchar(30),
  Code varchar(20),
  CSV_Error varchar(255), 
  Id varchar(30) NOT NULL,
  Name varchar(30),
  Previous_Buy float(52), 
  Previous_Sell float(52), 
  Price_Buy float(52), 
  Price_Sell float(52), 
  Reference varchar(30),
  Record_Number varchar(20) 
);


CREATE TABLE "Step07".Drawer_Openings 
(
  Id varchar(255) NOT NULL,
  Name varchar(255),
  Sales_Id varchar(40),
  "Timestamp" timestamp default current_timestamp -- previously OpenDate
);


CREATE TABLE "Step07".Leaves 
(
  Id varchar(20) NOT NULL,
  Name varchar(50), 
  Notes varchar(50),
  Person_Id varchar(20) NOT NULL, 
  Stop_date date NOT NULL, -- previously EndDate timestamp
  Start_Date date NOT NULL -- previously StartDate timestamp
);


CREATE TABLE "Step07".Locations 
(
  Address varchar(40),
  Id varchar(40) NOT NULL,
  Name varchar(30) -- NOT NULL
);


CREATE TABLE public.Merchants 
(
  Address varchar(40) NOT NULL, -- previously text
  Category_id SmallInt NOT NULL,
  Code varchar(4) NOT NULL,
  E_mail varchar(40) NOT NULL,
  Name varchar(40) NOT NULL,
  NPWP varchar(25), -- Nomor Pokok Wajib Pajak
  Phone varchar(20) NOT NULL
);


CREATE TABLE public.Merchant_categories
(
  Id SmallSerial,
  Category varchar(50),
  Subcategory varchar(50)
);


CREATE TABLE "Step07".Payments 
(
  Card varchar(20), -- previously CardName
  Id varchar(20) NOT NULL,
  Notes varchar(50),
  Payment varchar(50) NOT NULL,
  Receipt_id varchar(40) NOT NULL, 
  Returned_Msg ByteA, 
  Tendered float(52) DEFAULT 0 NOT NULL,
  Total float(52) NOT NULL,
  Transaction_Id varchar(20) 
);


CREATE TABLE "Step07".Persons 
(
  App_Password varchar(40), 
  Card varchar(20),
  E_mail varchar(40) NOT NULL,
  Id varchar(20) NOT NULL,
  Image ByteA,
  Is_visible boolean,
  Name varchar(40),
  Phone varchar(20) NOT NULL, -- added on 2017-07-31
  Role_id varchar(20) NOT NULL 
);


CREATE TABLE "Step07".Product_Categories 
(
  Colour varchar(20),
  Id varchar(30) NOT NULL,
  Image ByteA,
  Is_name_in_catalog boolean default true NOT NULL, 
  Name varchar(30), 
  Order_in_catalog integer,  
  Parent_Id varchar(30), 
  Text_Tip varchar(50) DEFAULT NULL 
);


CREATE TABLE "Step07".Product_coms 
(
  Id varchar(25) NOT NULL,
  Product_id varchar(25) NOT NULL, -- previously Product 
  Product2_id varchar(25) NOT NULL -- previously Product2
);


CREATE TABLE "Step07".Product_kits 
(
  Id varchar(25) NOT NULL,
  Product_id varchar(25) NOT NULL, -- previously Product
  Product_kit varchar(25) NOT NULL,
  Quantity float(23) NOT NULL -- previously float(52)
);


CREATE TABLE "Step07".Products 
(
  Alias varchar(20),
  Category_id varchar(30) NOT NULL, 
  Code varchar(20), -- NOT NULL
  CodeType varchar(20),
  Discounted varchar(5) DEFAULT 'no',
  Display varchar(25),
  Id varchar(25) NOT NULL,
  Image ByteA,
  Is_All_Products boolean default false, 
  Is_Always_Available boolean default false NOT NULL, 
  Is_Com boolean default false,  
  Is_Discountable boolean default true NOT NULL, 
  Is_in_Catalog boolean, -- previously Is_catalog
  Is_Managed_in_Stock boolean default true, 
  Is_Pack boolean default false, 
  Is_Scale boolean default false, 
  Is_sent boolean default false NOT NULL,
  Is_Service boolean default false, 
  Is_Volume_Price boolean default false, 
  Is_warranted boolean default false NOT NULL, 
  Name varchar(30) NOT NULL,
  Order_in_catalog SmallInt, 
  Pack_Quantity float(23), -- previously float(52) 
  PackProduct_id varchar(25), 
  Price_Buy float(52) DEFAULT 0 NOT NULL, 
  Price_Sell float(52) DEFAULT 0 NOT NULL, 
  Promotion_Id varchar(20), 
  Reference varchar(20), -- NOT NULL
  Stock_Cost float(23), -- previously float(52)
  Stock_Units float(23) DEFAULT 0 NOT NULL,  -- previously float(52)
  Stock_Volume float(23),  -- previously float(52)
  TaxCategory_id varchar(25), -- NOT NULL
  Text_Tip varchar(50)
);


CREATE TABLE "Step07".Promotions 
(
  Criteria ByteA,
  Id varchar(20) NOT NULL,
  Is_All_Products boolean default false, 
  Is_Enabled boolean default true, 
  Name varchar(50), -- NOT NULL
  Script ByteA NOT NULL
);


CREATE TABLE "Step07".Purchase_orders 
(
  Auxiliary Integer,
  Details varchar(100),
  Id varchar(50) NOT NULL,
  Notes varchar(50),
  Quantity Integer, 
  Sales_Id varchar(40),
  Sequence integer DEFAULT 0 NOT NULL,
  Timestamp timestamp default current_timestamp -- Plan B: Order_Time
);


CREATE TABLE "Step07".Receipts 
(
  Id varchar(40) NOT NULL,
  Money varchar(20) NOT NULL,
  Person_id varchar(20),
  Timestamp timestamp  default current_timestamp NOT NULL -- previously DateNew
);


CREATE TABLE "Step07".Removed_items 
(
  Id varchar(20) NOT NULL,
  Product_Id varchar(25), 
  Product_Name varchar(30), 
  Date date default current_date NOT NULL, -- previously of type timestamp
  Sales_Id varchar(40), 
  Units float(23) NOT NULL -- previously float(52)
);


CREATE TABLE "Step07".Roles 
(
  Id varchar(20) NOT NULL,
  Name varchar(20), -- NOT NULL
  Permissions ByteA,
  Rights_Level integer DEFAULT 4 NOT NULL 
);


CREATE TABLE "Step07".Sales 
(
  Consumer_id varchar(20), 
  Id varchar(40) NOT NULL,
  Person_id varchar(20) NOT NULL, 
  Sales_Id varchar(40) NOT NULL, 
  Sales_Type SmallInt NOT NULL,
  Status SmallInt DEFAULT 0 NOT NULL
);


CREATE TABLE "Step07".Sales_items 
(
  Line SmallInt NOT NULL,
  Price float(52) NOT NULL,
  Product_id varchar(25), 
  Refunded_Quantity float(23) DEFAULT 0, -- previously float(52)
  Sales_id varchar(40) NOT NULL, 
  Tax_Id varchar(25) NOT NULL, 
  units float(23) NOT NULL -- previously float(52)
);


CREATE TABLE "Step07".Shift_Breaks 
(
  Break_Id varchar(15) NOT NULL, 
  Id varchar(20) NOT NULL,
  Shift_Id varchar(20) NOT NULL, 
  Start_timestamp timestamp NOT NULL, -- previously StartTime
  Stop_timestamp timestamp -- previously EndTime
);


CREATE TABLE "Step07".Shifts 
(
  Id varchar(20) NOT NULL,
  Person_Id varchar(20), 
  Start_time time NOT NULL, -- previously StartShift timestamp
  Stop_time time -- previously EndShift timestamp
);


CREATE TABLE "Step07".Stock_Changes 
(
  BLOb_Value ByteA, 
  Changes_processed integer,
  Change_Type integer, 
  Display varchar(20),
  Columns varchar(50), 
  Id varchar(20) NOT NULL,
  Location_id varchar(40), 
  Product_Id varchar(25), 
  Text_Value varchar(50), 
  Upload_Timestamp timestamp default current_timestamp,  -- previously Upload_Time
  UserName varchar(40)
);


CREATE TABLE "Step07".Stock_Currents 
(
  Location_id varchar(40), -- NOT NULL
  Product_id varchar(25) NOT NULL, 
  units float(23) DEFAULT 0 NOT NULL -- previously float(52)
);


CREATE TABLE "Step07".Stock_Diaries 
(
  App_User varchar(40), 
  Date date default current_date NOT NULL, -- previously DateNew timestamp
  Id varchar(20) NOT NULL,
  Location_id varchar(40), -- NOT NULL
  Price float(52) NOT NULL,
  Product_id varchar(25) NOT NULL, 
  reason SmallInt NOT NULL,
  units float(23) NOT NULL -- previously float(52)
);


CREATE TABLE "Step07".Stock_Levels 
(
  Id varchar(25) NOT NULL,
  Location_id varchar(40), -- NOT NULL
  Maximum float(23) NOT NULL, -- previously float(52)
  Product_id varchar(25) NOT NULL, 
  Security SmallInt NOT NULL -- previously float(52)
);


CREATE TABLE "Step07".Tax_Categories 
(
  Id varchar(25) NOT NULL,
  Name varchar(30) -- NOT NULL
);


CREATE TABLE "Step07".Tax_Items 
(
  Amount float(52) DEFAULT 0 NOT NULL,
  Base float(52) DEFAULT 0 NOT NULL,
  Id varchar(25) NOT NULL,
  Receipt_id varchar(40) NOT NULL, 
  Tax_Id varchar(25) NOT NULL 
);


CREATE TABLE "Step07".Taxes 
(
  Category_id varchar(25) NOT NULL, 
  Consumer_Category_id varchar(25), -- unused at the moment
  Id varchar(25) NOT NULL,
  Is_Cascading_Rate boolean default false NOT NULL, 
  Name varchar(30), -- fill with Id value
  Parent_Id varchar(25), 
  Rate float(23) DEFAULT 0 NOT NULL, -- previously float(52)
  Rate_Order integer 
);


CREATE TABLE "Step07".Third_Parties 
(
  Address varchar(40),
  CIF varchar(255) NOT NULL, -- for filename
  Contact_Com varchar(40), 
  Contact_Fact varchar(100), 
  E_mail varchar(40), 
  Fax varchar(20), 
  Id varchar(25) NOT NULL,
  Mobile_Phone varchar(20), 
  Name varchar(30), -- fill with Id value
  Notes varchar(50),
  Payment_Rule varchar(255), 
  Phone varchar(255), 
  website varchar(255) 
);


CREATE TABLE "Step07".Vouchers 
(
  Name varchar(50) NOT NULL, 
  Redeemed_Date date, -- previously timestamp
  Redeemed_Sales_Id varchar(50), 
  Sold_Date date ,  -- previously timestamp
  Sold_Sales_Id varchar(50) 
);
