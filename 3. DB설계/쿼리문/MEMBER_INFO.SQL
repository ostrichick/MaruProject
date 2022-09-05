--회원정보
INSERT INTO MEMBER_INFO(
member_id, member_pw, member_name, member_email, member_phone, member_addr,
member_addr2, member_postcode
) VALUES('hong1','1234','홍','hong@naver.com',11111111111,'전라북도','전주시',1000);

--회원수정(회원용)
UPDATE MEMBER_INFO
SET
MEMBER_ID ='Hong',
member_pw = 1234,
member_email = 'Hong@naver.com',
member_phone = 01111111111,
member_addr = '전라북도',
member_addr2 = '진안',
member_postcode = 1111
WHERE
member_idx = 1;

-- 멤버조회
SELECT * FROM MEMBER_INFO WHERE MEMBER_IDX = ;

/* 멤버 삭제(관리자)
DELETE FROM MEMBER_INFO
WHERE MEMBER_IDX = 21;

회원정보수정(관리자)
UPDATE MEMBER_INFO
SET
member_grade = '0',
member_admin = 'Y',
deleted_yn = 'N'
WHERE
member_idx = 1;
*/