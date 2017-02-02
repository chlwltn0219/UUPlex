<<<<<<< HEAD
/* ��ȭ ���� */
CREATE TABLE m_movie_info (
   movie_num NUMBER(5) NOT NULL, /* ��ȭ��ȣ */
   title1 VARCHAR2(100), /* ��ȭ����1 */
   title2 VARCHAR2(100), /* ��ȭ����2 */
   director VARCHAR2(50), /* ���� */
   starring VARCHAR2(100), /* �ֿ���� */
   genre VARCHAR2(50), /* �帣 */
   MPAARating VARCHAR2(30), /* ������� */
   productionYear NUMBER(4), /* ���۳⵵ */
   runTime NUMBER(3), /* ����Ÿ��(��) */
   releaseDate DATE, /* ������ */
   poster VARCHAR2(100), /* ������ */
   movie_img1 VARCHAR2(100), /* ��ƿ��1 */
   movie_img2 VARCHAR2(100), /* ��ƿ��2 */
   trailer VARCHAR2(100), /* ������ũ */
   status VARCHAR2(10), /* ����󿵿��� */
   synopsis VARCHAR2(4000) /* �ٰŸ� */
);


COMMENT ON TABLE m_movie_info IS '��ȭ ����';
=======
/* ��ȭ ���� */
DROP TABLE m_movie_info ;

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

SELECT * FROM  m_movie_info ;
>>>>>>> d939b60e491e02d96ece9e5ccf9810eb3a921d06

COMMENT ON TABLE m_movie_info IS '��ȭ ����';

COMMENT ON COLUMN m_movie_info.movie_num IS '��ȭ��ȣ';

COMMENT ON COLUMN m_movie_info.title1 IS '��ȭ����1';

COMMENT ON COLUMN m_movie_info.title2 IS '��ȭ����2';

COMMENT ON COLUMN m_movie_info.director IS '����';

COMMENT ON COLUMN m_movie_info.starring IS '�ֿ����';

COMMENT ON COLUMN m_movie_info.genre IS '�帣';

COMMENT ON COLUMN m_movie_info.MPAARating IS '�������';

<<<<<<< HEAD
COMMENT ON COLUMN m_movie_info.runTime IS '����Ÿ��(��)';
=======
COMMENT ON COLUMN m_movie_info.productionYear IS '���۳⵵';
>>>>>>> d939b60e491e02d96ece9e5ccf9810eb3a921d06

COMMENT ON COLUMN m_movie_info.runTIme IS '����Ÿ��(��)';

COMMENT ON COLUMN m_movie_info.releaseDate IS '������';

COMMENT ON COLUMN m_movie_info.poster IS '������';

COMMENT ON COLUMN m_movie_info.movie_img1 IS '��ƿ��1';

COMMENT ON COLUMN m_movie_info.movie_img2 IS '��ƿ��2';

COMMENT ON COLUMN m_movie_info.trailer IS '������ũ';

COMMENT ON COLUMN m_movie_info.status IS '����󿵿���';

COMMENT ON COLUMN m_movie_info.synopsis IS '�ٰŸ�';

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
