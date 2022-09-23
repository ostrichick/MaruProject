
INSERT INTO MEMBER_INFO(
member_id, member_pw, 
member_name, member_email, member_phone, 
member_addr, member_addr2, member_postcode,
member_admin
) VALUES (
'admin12','1234',
'관리자1','admin1@naver.com',11111111111,
'대한민국','상세주소',1000,
'Y');

INSERT INTO MEMBER_INFO(
member_id, member_pw, 
member_name, member_email, member_phone, 
member_addr, member_addr2, member_postcode,
member_admin
) VALUES (
'asd','12',
'관리자','admin@naver.com',01012341234,
'대한민국','상세주소',1000,
'Y');

insert into product (
product_name, product_price, product_sale, product_sale_percent,
product_size, product_major_category,
product_detail, product_inventory
) values (
'1번상품', 50000, 'Y', 30,
'100x200', 'livingroom',
'상세설명입니다', 100);

insert into product (
product_name, product_price, product_sale, product_sale_percent,
product_size, product_major_category,
product_detail, product_inventory
) values (
'2번상품', 150000, 'Y', 40,
'100x200', 'livingroom',
'상세설명입니다', 100);

insert into product (
product_name, product_price, product_sale, product_sale_percent,
product_size, product_major_category,
product_detail, product_inventory
) values (
'3번상품', 540000, 'Y', 20,
'100x200', 'livingroom',
'상세설명입니다', 100);

INSERT INTO announce (
title, content,
file_original, file_system, file_extension
) VALUES (
'공지 제목1', '공지 내용1',
3, 3, 'jpg'
);

INSERT INTO announce (
title, content,
file_original, file_system, file_extension
) VALUES (
'공지 제목2', '공지 내용2',
3, 3, 'jpg'
);