
INSERT INTO MEMBER_INFO(
member_id, member_pw, member_name, member_email, member_phone, member_addr,
member_addr2, member_postcode,
member_admin
) VALUES('admin1','1234','관리자1','admin1@naver.com',11111111111,'대한민국','상세주소',1000,'Y');

INSERT INTO product (
PRODUCT_name,
PRODUCT_price,
PRODUCT_sale,
PRODUCT_sale_percent,
PRODUCT_size,
PRODUCT_inventory,
PRODUCT_major_category,
PRODUCT_MINOR_CATEGORY,
PRODUCT_isnew
) VALUES ('상품이름1',150000,'Y',24,'100X200',5,'대분류','소분류','N');

INSERT INTO product (
PRODUCT_name,
PRODUCT_price,
PRODUCT_size,
PRODUCT_inventory,
PRODUCT_major_category,
PRODUCT_MINOR_CATEGORY,
PRODUCT_isnew
) VALUES ('상품2',125000,'200X100',10,'대분류','소분류','N');

INSERT INTO product (
PRODUCT_name,
PRODUCT_price,
PRODUCT_size,
PRODUCT_inventory,
PRODUCT_major_category,
PRODUCT_MINOR_CATEGORY,
PRODUCT_isnew
) VALUES ('상품3',250000,'200X300',50,'대분류','소분류','Y');

INSERT INTO announce (
announce_title, announce_content,
announce_file_originalname, announce_file_systemname, announce_file_extension
) VALUES (
'공지 제목1', '공지 내용1',
3, 3, 'jpg'
)

INSERT INTO announce (
announce_title, announce_content,
announce_file_originalname, announce_file_systemname, announce_file_extension
) VALUES (
'공지 제목2', '공지 내용2',
3, 3, 'jpg'
)