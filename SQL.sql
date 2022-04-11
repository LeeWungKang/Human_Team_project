select * from Users;
drop table Users;

create table Users( 
id varchar2(15) primary key,
pw varchar2(20) not null,
name varchar2(20) not null
);

insert into Users values('aaaa','aaaa','홍길동'  );
insert into Users values('bbbb','bbbb','이순신'  );

---------------------------------------------------------------------------------------
select * from HumanBoard;

create table HumanBoard ( 
seq number(3) primary key,
userid varchar2(15) not null,
userName varchar2(15) not null,
title varchar2(20) not null,
content varchar2(400)  not null,
regdate date default sysdate
);

insert into HumanBoard values (1,'aaaa','홍길동','제목없음','내용없음',sysdate  );
insert into HumanBoard values( (select nvl(max(seq),0)+1 from HumanBoard),  'bbbb',  '이순신',  '제목없음11',  '내용없음11',  sysdate);





--제약조건 
ALTER TABLE HumanBoard ADD     -- 조건을 넣을 테이블
CONSTRAINT FK_Board_userid               -- 제약조건의 이름
foreign KEY (userid) 					-- 외래키
references Users(id);					-- '유저'테이블에 id를 참조하는~
on delete cascade;                     -- 계정삭제시 게시글도 삭제 된다.