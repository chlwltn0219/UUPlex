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


COMMENT ON TABLE m_movie_info IS '영화 정보';

COMMENT ON COLUMN m_movie_info.movie_num IS '영화번호';

COMMENT ON COLUMN m_movie_info.title1 IS '영화제목1';

COMMENT ON COLUMN m_movie_info.title2 IS '영화제목2';

COMMENT ON COLUMN m_movie_info.director IS '감독';

COMMENT ON COLUMN m_movie_info.starring IS '주연배우';

COMMENT ON COLUMN m_movie_info.genre IS '장르';

COMMENT ON COLUMN m_movie_info.MPAARating IS '관람등급';

COMMENT ON COLUMN m_movie_info.productionYear IS '제작년도';

COMMENT ON COLUMN m_movie_info.runTime IS '러닝타임(분)';

COMMENT ON COLUMN m_movie_info.releaseDate IS '개봉일';

COMMENT ON COLUMN m_movie_info.poster IS '포스터';

COMMENT ON COLUMN m_movie_info.movie_img1 IS '스틸컷1';

COMMENT ON COLUMN m_movie_info.movie_img2 IS '스틸컷2';

COMMENT ON COLUMN m_movie_info.trailer IS '예고편링크';

COMMENT ON COLUMN m_movie_info.status IS '현재상영여부';

COMMENT ON COLUMN m_movie_info.synopsis IS '줄거리';

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


