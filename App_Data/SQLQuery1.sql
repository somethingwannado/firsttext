create table alllist(
name char(50),
typei int ,
levelnum int ,
heng int
)

insert into alllist(name,typei,levelnum,heng) values('���ڹ�԰',1,1,0)
insert into alllist(name,typei,levelnum,heng) values('��԰���',1,2,1)
insert into alllist(name,typei,levelnum,heng) values('��԰�羰',1,2,2)
insert into alllist(name,typei,levelnum,heng) values('��԰������Ϣ',1,2,3)

insert into alllist(name,typei,levelnum,heng) values('��԰�',2,1,0)
insert into alllist(name,typei,levelnum,heng) values('ˮ����ժ',2,2,1)
insert into alllist(name,typei,levelnum,heng) values('��԰����',2,2,2)
insert into alllist(name,typei,levelnum,heng) values('��������',2,2,3)
insert into alllist(name,typei,levelnum,heng) values('ˮ��֪ʶ����С����',2,2,4)

 select* from alllist
 
drop table alllist

select name from alllist where typei=(Select typei from alllist where name='��԰�')