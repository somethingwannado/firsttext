select * from deldingdan

drop table �Ź���Ŀ
create table �Ź���Ŀ(
id char(5) primary key,
pickname char(20),
�û��� char(20),
way char(10),
typee char(10),
datatim char(20)
)
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('1','��ݮ����ֲ','������','����','����','4.26')
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('2','��ݮ����ֲ','��������','����','����','4.26')
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('3','��ݮ����ֲ','������','����','����','4.26')
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('4','��������','ɯ������߹߹��','����','����','4.26')

select * from �Ź���Ŀ
select count(*) from �Ź���Ŀ where pickname='��ݮ����ֲ';

select * from dingdan where pay=-1 and �û���='liufei'

