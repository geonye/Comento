/*drop table tbl_board;
drop SEQUENCE seq_board;*/


create table tbl_board(
    bno INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(200) NOT NULL,
    regdate DATE default current_date null, 
    viewcnt INT DEFAULT 0,
    PRIMARY KEY (bno));

CREATE SEQUENCE seq_board START WITH 1 INCREMENT BY 1;