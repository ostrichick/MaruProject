/*
INSERT into REVIEW_tbl (
product_idx, member_idx, review_content, review_star,
review_file_originalname, review_file_systemname ,review_file_extension) values (
1,1,'리뷰내용', 4.5,
3,3,'png');
*/

-- 공지사항 목록 보기
SELECT * FROM announce;

-- 공지사항 글 쓰기
INSERT INTO announce (
announce_title, announce_content,
announce_file_originalname, announce_file_systemname, announce_file_extension
) VALUES (
'공지 제목', '공지 내용',
3, 3, 'jpg'
)

-- 공지사항 글 수정
UPDATE announce
SET
announce_title = '수정할 제목',
announce_content = '수정할 본문',
announce_file_originalname = 4,
announce_file_systemname = 4,
announce_file_extension = 'png'
WHERE
announce_idx = 1;

-- 공지사항 글 삭제
DELETE FROM announce
WHERE announce_idx = 1;