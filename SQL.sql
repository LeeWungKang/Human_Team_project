create table Users( 
id varchar2(15) primary key
pw varchar2(20) not null,
name varchar2(20) not null
);




create table Board ( 


);



--제약조건 
ALTER TABLE Board ADD     
CONSTRAINT FK_Board
foreign KEY (userid) 
references Users(id)
on delete cascade;