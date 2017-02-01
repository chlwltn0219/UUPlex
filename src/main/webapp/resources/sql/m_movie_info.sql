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

COMMENT ON COLUMN m_movie_info.movie_num IS '��ȭ��ȣ';

COMMENT ON COLUMN m_movie_info.title1 IS '��ȭ����1';

COMMENT ON COLUMN m_movie_info.title2 IS '��ȭ����2';

COMMENT ON COLUMN m_movie_info.director IS '����';

COMMENT ON COLUMN m_movie_info.starring IS '�ֿ����';

COMMENT ON COLUMN m_movie_info.genre IS '�帣';

COMMENT ON COLUMN m_movie_info.MPAARating IS '�������';

COMMENT ON COLUMN m_movie_info.productionYear IS '���۳⵵';

COMMENT ON COLUMN m_movie_info.runTime IS '����Ÿ��(��)';

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
   ADD
      CONSTRAINT PK_m_movie_info
      PRIMARY KEY (
         movie_num
      );
    
create sequence m_movie_info_seq
increment by 1
maxvalue 99999;


