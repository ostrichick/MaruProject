
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO MEMBER_INFO(
member_id, member_pw,
member_name, member_email, member_phone,
member_addr, member_addr2, member_postcode,
member_admin
) VALUES (
'admin12','1234',
'관리자1','admin1@naver.com','01043214321',
'서울특별시 광진구','어린이대공원길 329-3',29381,
'Y');

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO MEMBER_INFO(
member_id, member_pw,
member_name, member_email, member_phone,
member_addr, member_addr2, member_postcode,
member_admin
) VALUES (
'as','12',
'김길동','admin@maru.com','01012341234',
'전북 전주시 덕진구','백제대로 494',54938,
'Y');

-- SQLINES LICENSE FOR EVALUATION USE ONLY
insert into product (
product_name, product_price, product_sale, product_sale_percent,
product_size, product_major_category,
product_detail, product_inventory
) values (
'1번상품', 10000, 'Y', 10,
'100x200', 'livingroom',
'상세설명입니다', 100);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
insert into product (
product_name, product_price, product_sale, product_sale_percent,
product_size, product_major_category,
product_detail, product_inventory
) values (
'2번상품', 20000, 'Y', 20,
'100x200', 'bedroom',
'상세설명입니다', 100);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
insert into product (
product_name, product_price, product_sale, product_sale_percent,
product_size, product_major_category,
product_detail, product_inventory
) values (
'3번상품', 30000, 'Y', 30,
'100x200', 'library',
'상세설명입니다', 100);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO announce (
title, content,
file_original, file_system, file_extension
) VALUES (
'공지 제목1', '공지 내용1',
3, 3, 'jpg'
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO announce (
title, content,
file_original, file_system, file_extension
) VALUES (
'공지 제목2', '공지 내용2',
3, 3, 'jpg'
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO announce_reply (
idx, member_idx, reply_content
) VALUES (
1, 1, '첫번재 리플!!!!'
)

    -- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO announce_reply (
idx, member_idx, reply_content
) VALUES (
1, 1, '두번재 리플!!!!'
)

    -- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO announce_reply (
idx, member_idx, reply_content
) VALUES (
2, 1, '2번 글의 첫번재 리플!!!! '
)

ALTER TABLe product_cart MODIFY cart_idx INT NOT NULL AUTO_INCREMENT;

commit;