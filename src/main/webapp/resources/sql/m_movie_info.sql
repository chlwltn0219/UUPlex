<<<<<<< HEAD
/* ¿µÈ­ Á¤º¸ */
CREATE TABLE m_movie_info (
   movie_num NUMBER(5) NOT NULL, /* ¿µÈ­¹øÈ£ */
   title1 VARCHAR2(100), /* ¿µÈ­Á¦¸ñ1 */
   title2 VARCHAR2(100), /* ¿µÈ­Á¦¸ñ2 */
   director VARCHAR2(50), /* °¨µ¶ */
   starring VARCHAR2(100), /* ÁÖ¿¬¹è¿ì */
   genre VARCHAR2(50), /* Àå¸£ */
   MPAARating VARCHAR2(30), /* °ü¶÷µî±Þ */
   productionYear NUMBER(4), /* Á¦ÀÛ³âµµ */
   runTime NUMBER(3), /* ·¯´×Å¸ÀÓ(ºÐ) */
   releaseDate DATE, /* °³ºÀÀÏ */
   poster VARCHAR2(100), /* Æ÷½ºÅÍ */
   movie_img1 VARCHAR2(100), /* ½ºÆ¿ÄÆ1 */
   movie_img2 VARCHAR2(100), /* ½ºÆ¿ÄÆ2 */
   trailer VARCHAR2(100), /* ¿¹°íÆí¸µÅ© */
   status VARCHAR2(10), /* ÇöÀç»ó¿µ¿©ºÎ */
   synopsis VARCHAR2(4000) /* ÁÙ°Å¸® */
);


COMMENT ON TABLE m_movie_info IS '¿µÈ­ Á¤º¸';
=======
/* ï¿½ï¿½È­ ï¿½ï¿½ï¿½ï¿½ */
DROP TABLE m_movie_info ;

/* ì˜í™” ì •ë³´ */
CREATE TABLE m_movie_info (
   movie_num NUMBER(5) NOT NULL, /* ì˜í™”ë²ˆí˜¸ */
   title1 VARCHAR2(100), /* ì˜í™”ì œëª©1 */
   title2 VARCHAR2(100), /* ì˜í™”ì œëª©2 */
   director VARCHAR2(50), /* ê°ë… */
   starring VARCHAR2(100), /* ì£¼ì—°ë°°ìš° */
   genre VARCHAR2(50), /* ìž¥ë¥´ */
   MPAARating VARCHAR2(30), /* ê´€ëžŒë“±ê¸‰ */
   productionYear NUMBER(4), /* ì œìž‘ë…„ë„ */
   runTime NUMBER(3), /* ëŸ¬ë‹íƒ€ìž„(ë¶„) */
   releaseDate DATE, /* ê°œë´‰ì¼ */
   poster VARCHAR2(100), /* í¬ìŠ¤í„° */
   movie_img1 VARCHAR2(100), /* ìŠ¤í‹¸ì»·1 */
   movie_img2 VARCHAR2(100), /* ìŠ¤í‹¸ì»·2 */
   trailer VARCHAR2(100), /* ì˜ˆê³ íŽ¸ë§í¬ */
   status VARCHAR2(10), /* í˜„ìž¬ìƒì˜ì—¬ë¶€ */
   synopsis VARCHAR2(4000) /* ì¤„ê±°ë¦¬ */
);

SELECT * FROM  m_movie_info ;
>>>>>>> d939b60e491e02d96ece9e5ccf9810eb3a921d06

COMMENT ON TABLE m_movie_info IS 'ï¿½ï¿½È­ ï¿½ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_movie_info.movie_num IS 'ï¿½ï¿½È­ï¿½ï¿½È£';

COMMENT ON COLUMN m_movie_info.title1 IS 'ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½1';

COMMENT ON COLUMN m_movie_info.title2 IS 'ï¿½ï¿½È­ï¿½ï¿½ï¿½ï¿½2';

COMMENT ON COLUMN m_movie_info.director IS 'ï¿½ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_movie_info.starring IS 'ï¿½Ö¿ï¿½ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_movie_info.genre IS 'ï¿½å¸£';

COMMENT ON COLUMN m_movie_info.MPAARating IS 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';

<<<<<<< HEAD
COMMENT ON COLUMN m_movie_info.runTime IS '·¯´×Å¸ÀÓ(ºÐ)';
=======
COMMENT ON COLUMN m_movie_info.productionYear IS 'ï¿½ï¿½ï¿½Û³âµµ';
>>>>>>> d939b60e491e02d96ece9e5ccf9810eb3a921d06

COMMENT ON COLUMN m_movie_info.runTIme IS 'ï¿½ï¿½ï¿½ï¿½Å¸ï¿½ï¿½(ï¿½ï¿½)';

COMMENT ON COLUMN m_movie_info.releaseDate IS 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_movie_info.poster IS 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_movie_info.movie_img1 IS 'ï¿½ï¿½Æ¿ï¿½ï¿½1';

COMMENT ON COLUMN m_movie_info.movie_img2 IS 'ï¿½ï¿½Æ¿ï¿½ï¿½2';

COMMENT ON COLUMN m_movie_info.trailer IS 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Å©';

COMMENT ON COLUMN m_movie_info.status IS 'ï¿½ï¿½ï¿½ï¿½ó¿µ¿ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_movie_info.synopsis IS 'ÁÙ°Å¸®';

CREATE UNIQUE INDEX PK_m_movie_info
   ON m_movie_info (
      movie_num ASC
   );

ALTER TABLE m_movie_info
<<<<<<< HEAD
   ADD
      CONSTRAINT PK_m_movie_info
      PRIMARY KEY (
         movie_num
      );
    
create sequence m_movie_info_seq
increment by 1
maxvalue 99999;


=======
	ADD
		CONSTRAINT PK_m_movie_info
		PRIMARY KEY (
			movie_num
		);
		
		
create sequence m_movie_info_seq
increment by 1
maxvalue 99999;
>>>>>>> d939b60e491e02d96ece9e5ccf9810eb3a921d06
