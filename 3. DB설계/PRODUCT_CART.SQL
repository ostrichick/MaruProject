--장바구니
INSERT INTO PRODUCT_CART(
member_idx,
PRODUCT_IDX,
cart_product_number
)VALUES(1,1,1);

--상품수정
UPDATE PRODUCT_CART
SET
cart_product_number = 2
WHERE
cart_IDX = 30;

-- 상품조회
SELECT * FROM PRODUCT_CART WHERE cart_IDX = 30;

-- 상품 삭제
DELETE FROM PRODUCT_CART
WHERE CART_IDX = 1;