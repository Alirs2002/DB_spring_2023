--brand relation

CREATE TABLE `brand` (
  `brand_id` int NOT NULL,
  `namee` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `license_number_idx` (`company_id`),
  KEY `brand_name_idx` (`namee`),
  CONSTRAINT `license_number` FOREIGN KEY (`company_id`) REFERENCES `company` (`license_number`)
)


--company relation
CREATE TABLE `company` (
  `license_number` int NOT NULL,
  `namee` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`license_number`)
)

--customer relation
CREATE TABLE `customer` (
  `national_id` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`national_id`),
  KEY `phone_number_idx` (`phone`)
) 


--distributer relation

CREATE TABLE `distributor` (
  `dis_name` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`dis_name`)
)

--order relation

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` varchar(45) NOT NULL,
  `product_id` int NOT NULL,
  `dis_name` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `order_count` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `uc_product_id` (`product_id`),
  KEY `fk_orders_2_idx` (`customer_id`),
  KEY `fk_orders_3_idx` (`dis_name`),
  KEY `fk_orders_1_idx` (`product_id`),
  CONSTRAINT `fk_orders_1` FOREIGN KEY (`product_id`) REFERENCES `dis_product` (`product_id`),
  CONSTRAINT `fk_orders_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`national_id`),
  CONSTRAINT `fk_orders_3` FOREIGN KEY (`dis_name`) REFERENCES `distributor` (`dis_name`)
)

--product relation

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `namee` varchar(45) NOT NULL,
  `brand_id` int NOT NULL,
  `type_id` int NOT NULL,
  `weight` int DEFAULT '1000',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  KEY `type_id_idx` (`type_id`),
  KEY `brand_id_idx` (`brand_id`),
  KEY `product_weight_idx` (`weight`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `typess` (`type_id`)
)
--type relation

CREATE TABLE `typess` (
  `type_id` int NOT NULL,
  `namee` varchar(45) NOT NULL,
  PRIMARY KEY (`type_id`)
)


--dis_product relation

CREATE TABLE `dis_product` (
  `id` int NOT NULL,
  `dis_name` varchar(45) NOT NULL,
  `product_id` int NOT NULL,
  `count` int NOT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dis_product_1_idx` (`dis_name`),
  KEY `product_id_idx` (`product_id`),
  KEY `product_count_idx` (`count`),
  CONSTRAINT `dis_name` FOREIGN KEY (`dis_name`) REFERENCES `distributor` (`dis_name`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) 
