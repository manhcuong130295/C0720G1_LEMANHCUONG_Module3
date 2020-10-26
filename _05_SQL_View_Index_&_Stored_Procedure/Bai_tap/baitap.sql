use baitap2;

create unique index idx_Code on product(productCode);

select * from product where productCode='SP-1502';
explain select * from product where productCode='SP-1502';

create index idx2 on product(productName,price);

select * from product where productName like 'iphone%'  and price = 1250;
explain select * from product where productName like 'iphone%'  and price = 1250;

create view product_view as 
select  productCode, productName, Price, productStatus from product;
select * from product_view;

CREATE OR REPLACE VIEW product_view AS

SELECT productCode, productName, Price

FROM product

WHERE price = 2000;
 drop  view product_view;
 
--  hien thi tat ca thong tin
 DELIMITER //

CREATE PROCEDURE findAllProduct()

BEGIN

  SELECT * FROM product;

END //

DELIMITER ;
call findAllProduct();

-- them Sp
 DELIMITER //
          CREATE PROCEDURE inserProduct( in id int,productCode varchar(50),productName varchar(50),
                                         Price int,productAmount int,productDescription varchar(500),productStatus varchar(50))
          BEGIN 
          insert into product values (id, productCode, productName, Price, productAmount, productDescription, productStatus);
          END //
DELIMITER ;
call inserProduct(12, 'SP-1300', 'kawasaki z1000', 1250, 7, 'abcd', 'dbca');

-- sua theo id
  DELIMITER //
		 Create procedure set_product(
           in id int,
            productCode varchar(50),
            productName varchar(50),
            Price int,
            productAmount int,
            productDescription varchar(500),
            productStatus varchar(50)
          )
		 begin
		    update product set product.productCode = productCode where product.id = id;
		    update product set product.productName = productName where product.id = id;
		    update product set product.Price = Price where product.id = id;
		    update product set product.productAmount = productAmount where product.id = id;
		    update product set product.productDescription = productDescription where product.id = id;
		    update product set product.productStatus = productStatus where product.id = id;
		   end //
		    DELIMITER ;
		    call set_product(@7, 'PD_07', 'Xe tăng', 2500, 7, 'abcd', 'dbca');
		    DELIMITER //
		    DROP PROCEDURE IF EXISTS `set_product`//
            
		 --  xoa theo id  
          DELIMITER //
             Create procedure del_product(in id int)
             begin
             delete  from product where product.id = id;
             end //
             DELIMITER ;
            call del_product('9');

            