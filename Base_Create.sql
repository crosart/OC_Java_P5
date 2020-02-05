
CREATE SEQUENCE tableocpizza.paymenttype_paytypeid_seq_1;

CREATE TABLE tableocpizza.PaymentType (
                payTypeId INTEGER NOT NULL DEFAULT nextval('tableocpizza.paymenttype_paytypeid_seq_1'),
                payTypeName VARCHAR NOT NULL,
                CONSTRAINT paymenttype_pk PRIMARY KEY (payTypeId)
);


ALTER SEQUENCE tableocpizza.paymenttype_paytypeid_seq_1 OWNED BY tableocpizza.PaymentType.payTypeId;

CREATE SEQUENCE tableocpizza.address_addressid_seq_1;

CREATE TABLE tableocpizza.Address (
                addressId INTEGER NOT NULL DEFAULT nextval('tableocpizza.address_addressid_seq_1'),
                zipCode VARCHAR NOT NULL,
                city VARCHAR NOT NULL,
                street VARCHAR NOT NULL,
                moreInfo VARCHAR NOT NULL,
                CONSTRAINT address_pk PRIMARY KEY (addressId)
);


ALTER SEQUENCE tableocpizza.address_addressid_seq_1 OWNED BY tableocpizza.Address.addressId;

CREATE SEQUENCE tableocpizza.customer_customerid_seq_1;

CREATE TABLE tableocpizza.Customer (
                customerId INTEGER NOT NULL DEFAULT nextval('tableocpizza.customer_customerid_seq_1'),
                addressId INTEGER NOT NULL,
                title VARCHAR NOT NULL,
                firstName VARCHAR NOT NULL,
                lastName VARCHAR NOT NULL,
                telNum VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT customer_pk PRIMARY KEY (customerId)
);


ALTER SEQUENCE tableocpizza.customer_customerid_seq_1 OWNED BY tableocpizza.Customer.customerId;

CREATE SEQUENCE tableocpizza.restaurant_restaurantid_seq_1;

CREATE TABLE tableocpizza.Restaurant (
                restaurantId INTEGER NOT NULL DEFAULT nextval('tableocpizza.restaurant_restaurantid_seq_1'),
                zipCode VARCHAR NOT NULL,
                city VARCHAR NOT NULL,
                street VARCHAR NOT NULL,
                CONSTRAINT restaurant_pk PRIMARY KEY (restaurantId)
);


ALTER SEQUENCE tableocpizza.restaurant_restaurantid_seq_1 OWNED BY tableocpizza.Restaurant.restaurantId;

CREATE SEQUENCE tableocpizza.product_productid_seq_1;

CREATE TABLE tableocpizza.Product (
                productId INTEGER NOT NULL DEFAULT nextval('tableocpizza.product_productid_seq_1'),
                restaurantId INTEGER NOT NULL,
                productName VARCHAR NOT NULL,
                productPrice REAL NOT NULL,
                CONSTRAINT product_pk PRIMARY KEY (productId)
);


ALTER SEQUENCE tableocpizza.product_productid_seq_1 OWNED BY tableocpizza.Product.productId;

CREATE SEQUENCE tableocpizza.orders_orderid_seq;

CREATE TABLE tableocpizza.Orders (
                orderId INTEGER NOT NULL DEFAULT nextval('tableocpizza.orders_orderid_seq'),
                restaurantId INTEGER NOT NULL,
                orderNumber VARCHAR NOT NULL,
                orderDate DATE NOT NULL,
                CONSTRAINT orders_pk PRIMARY KEY (orderId)
);


ALTER SEQUENCE tableocpizza.orders_orderid_seq OWNED BY tableocpizza.Orders.orderId;

CREATE SEQUENCE tableocpizza.bill_billid_seq;

CREATE TABLE tableocpizza.Bill (
                billId INTEGER NOT NULL DEFAULT nextval('tableocpizza.bill_billid_seq'),
                payTypeId INTEGER NOT NULL,
                orderId INTEGER NOT NULL,
                billNumber VARCHAR NOT NULL,
                totalAmount REAL NOT NULL,
                vatAmount REAL NOT NULL,
                billStatus BOOLEAN NOT NULL,
                CONSTRAINT bill_pk PRIMARY KEY (billId)
);


ALTER SEQUENCE tableocpizza.bill_billid_seq OWNED BY tableocpizza.Bill.billId;

CREATE TABLE tableocpizza.Bill_Customer (
                customerId INTEGER NOT NULL,
                billId INTEGER NOT NULL,
                CONSTRAINT bill_customer_pk PRIMARY KEY (customerId, billId)
);


CREATE TABLE tableocpizza.Order_Product (
                productId INTEGER NOT NULL,
                orderId INTEGER NOT NULL,
                CONSTRAINT order_product_pk PRIMARY KEY (productId, orderId)
);


CREATE SEQUENCE tableocpizza.supply_supplyid_seq_1;

CREATE TABLE tableocpizza.Supply (
                supplyId INTEGER NOT NULL DEFAULT nextval('tableocpizza.supply_supplyid_seq_1'),
                restaurantId INTEGER NOT NULL,
                quantity VARCHAR NOT NULL,
                resupplyDate DATE NOT NULL,
                CONSTRAINT supply_pk PRIMARY KEY (supplyId)
);


ALTER SEQUENCE tableocpizza.supply_supplyid_seq_1 OWNED BY tableocpizza.Supply.supplyId;

CREATE SEQUENCE tableocpizza.ingredient_ingredientid_seq_1;

CREATE TABLE tableocpizza.Ingredient (
                IngredientId INTEGER NOT NULL DEFAULT nextval('tableocpizza.ingredient_ingredientid_seq_1'),
                supplyId INTEGER NOT NULL,
                ingredientName VARCHAR NOT NULL,
                spoilDate DATE NOT NULL,
                measureUnit VARCHAR NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (IngredientId)
);


ALTER SEQUENCE tableocpizza.ingredient_ingredientid_seq_1 OWNED BY tableocpizza.Ingredient.IngredientId;

CREATE TABLE tableocpizza.Product_Ingredient (
                productId INTEGER NOT NULL,
                IngredientId INTEGER NOT NULL,
                CONSTRAINT product_ingredient_pk PRIMARY KEY (productId, IngredientId)
);


CREATE SEQUENCE tableocpizza.jobtype_jobid_seq;

CREATE TABLE tableocpizza.Jobtype (
                jobId INTEGER NOT NULL DEFAULT nextval('tableocpizza.jobtype_jobid_seq'),
                jobName VARCHAR NOT NULL,
                CONSTRAINT jobtype_pk PRIMARY KEY (jobId)
);


ALTER SEQUENCE tableocpizza.jobtype_jobid_seq OWNED BY tableocpizza.Jobtype.jobId;

CREATE SEQUENCE tableocpizza.employee_employeeid_seq;

CREATE TABLE tableocpizza.Employee (
                employeeId INTEGER NOT NULL DEFAULT nextval('tableocpizza.employee_employeeid_seq'),
                restaurantId INTEGER NOT NULL,
                jobId INTEGER NOT NULL,
                title VARCHAR NOT NULL,
                firstName VARCHAR NOT NULL,
                lastName VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT employee_pk PRIMARY KEY (employeeId)
);


ALTER SEQUENCE tableocpizza.employee_employeeid_seq OWNED BY tableocpizza.Employee.employeeId;

ALTER TABLE tableocpizza.Bill ADD CONSTRAINT paymenttype_bill_fk
FOREIGN KEY (payTypeId)
REFERENCES tableocpizza.PaymentType (payTypeId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Customer ADD CONSTRAINT address_customer_fk
FOREIGN KEY (addressId)
REFERENCES tableocpizza.Address (addressId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Bill_Customer ADD CONSTRAINT customer_restaurant_client_fk
FOREIGN KEY (customerId)
REFERENCES tableocpizza.Customer (customerId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Employee ADD CONSTRAINT restaurant_employee_fk
FOREIGN KEY (restaurantId)
REFERENCES tableocpizza.Restaurant (restaurantId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Supply ADD CONSTRAINT restaurant_supply_fk
FOREIGN KEY (restaurantId)
REFERENCES tableocpizza.Restaurant (restaurantId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Orders ADD CONSTRAINT restaurant_order_fk
FOREIGN KEY (restaurantId)
REFERENCES tableocpizza.Restaurant (restaurantId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Product ADD CONSTRAINT restaurant_product_fk
FOREIGN KEY (restaurantId)
REFERENCES tableocpizza.Restaurant (restaurantId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Order_Product ADD CONSTRAINT product_order_product_fk
FOREIGN KEY (productId)
REFERENCES tableocpizza.Product (productId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Product_Ingredient ADD CONSTRAINT product_product_ingredient_fk
FOREIGN KEY (productId)
REFERENCES tableocpizza.Product (productId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Order_Product ADD CONSTRAINT order_order_product_fk
FOREIGN KEY (orderId)
REFERENCES tableocpizza.Orders (orderId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Bill ADD CONSTRAINT order_bill_fk
FOREIGN KEY (orderId)
REFERENCES tableocpizza.Orders (orderId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Bill_Customer ADD CONSTRAINT bill_restaurant_client_fk
FOREIGN KEY (billId)
REFERENCES tableocpizza.Bill (billId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Ingredient ADD CONSTRAINT supply_ingredient_fk
FOREIGN KEY (supplyId)
REFERENCES tableocpizza.Supply (supplyId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Product_Ingredient ADD CONSTRAINT ingredient_product_ingredient_fk
FOREIGN KEY (IngredientId)
REFERENCES tableocpizza.Ingredient (IngredientId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE tableocpizza.Employee ADD CONSTRAINT jobtype_employee_fk
FOREIGN KEY (jobId)
REFERENCES tableocpizza.Jobtype (jobId)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;