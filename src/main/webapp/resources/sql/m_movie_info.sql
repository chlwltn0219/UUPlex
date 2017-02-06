
/* 영화 정보 */
CREATE TABLE m_movie_info (
   movie_num NUMBER(5) NOT NULL, /* 영화번호 */
   title1 VARCHAR2(100), /* 영화제목1 */
   title2 VARCHAR2(100), /* 영화제목2 */
   director VARCHAR2(50), /* 감독 */
   starring VARCHAR2(100), /* 주연배우 */
   genre VARCHAR2(50), /* 장르 */
   MPAARating VARCHAR2(30), /* 관람등급 */
   productionYear NUMBER(4), /* 제작년도 */
   runTime NUMBER(3), /* 러닝타임(분) */
   releaseDate DATE, /* 개봉일 */
   poster VARCHAR2(100), /* 포스터 */
   movie_img1 VARCHAR2(100), /* 스틸컷1 */
   movie_img2 VARCHAR2(100), /* 스틸컷2 */
   trailer VARCHAR2(100), /* 예고편링크 */
   status VARCHAR2(10), /* 현재상영여부 */
   synopsis VARCHAR2(4000) /* 줄거리 */
);


CREATE UNIQUE INDEX PK_m_movie_info
   ON m_movie_info (
      movie_num ASC
   );

ALTER TABLE m_movie_info
   ADD
      CONSTRAINT PK_m_movie_info
      PRIMARY KEY (
         movie_num
      );
    
create sequence m_movie_info_seq
increment by 1
maxvalue 99999;


	