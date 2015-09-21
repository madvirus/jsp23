create database board default character set utf8;

GRANT ALL PRIVILEGES ON *.* TO 'jspexam'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'jspexam'@'%'

create table board.member (
    memberid varchar(50) primary key,
    name varchar(50) not null,
    password varchar(10) not null,
    regdate datetime not null
) engine=InnoDB default character set = utf8;

create table board.article (
    article_no int auto_increment primary key,
    writer_id varchar(50) not null,
    writer_name varchar(50) not null,
    title varchar(255) not null,
    regdate datetime not null,
    moddate datetime not null,
    read_cnt int
) engine=InnoDB default character set = utf8;

create table board.article_content (
    article_no int primary key,
    content text
) engine=InnoDB default character set = utf8;

