
CREATE TABLE user
(
  id         BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT 'user PK',
  name       VARCHAR(15)  NOT NULL COMMENT '이름',
  mobile_no  VARCHAR(255) NULL     COMMENT '전화번호',
  created_at DATETIME     NOT NULL DEFAULT now() COMMENT '생성일',
  updated_at DATETIME     NULL     COMMENT '수정일',
  PRIMARY KEY (id)
) COMMENT '사용자 정보';

CREATE INDEX idx_user_name
  ON user (name ASC);



CREATE TABLE post
(
  id         BIGINT(20)   NOT NULL AUTO_INCREMENT COMMENT 'post PK',
  user_id    BIGINT(20)   NOT NULL COMMENT 'user FK',
  title      VARCHAR(100) NOT NULL COMMENT '제목',
  content    TEXT         NOT NULL COMMENT '내용',
  created_at DATETIME     NOT NULL DEFAULT now() COMMENT '생성일',
  updated_at DATETIME     NULL     COMMENT '수정일',
  PRIMARY KEY (id)
) COMMENT '게시글';
