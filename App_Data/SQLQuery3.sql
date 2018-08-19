select * from news


create table alllist(
name char(50),
typei int ,
levelnum int ,
heng int
)

insert into alllist(name,typei,levelnum,heng) values('关于果园',1,1,0)
insert into alllist(name,typei,levelnum,heng) values('果园简介',1,2,1)
insert into alllist(name,typei,levelnum,heng) values('果园风景',1,2,2)
insert into alllist(name,typei,levelnum,heng) values('果园最新消息',1,2,3)

insert into alllist(name,typei,levelnum,heng) values('果园活动',2,1,0)
insert into alllist(name,typei,levelnum,heng) values('水果采摘',2,2,1)
insert into alllist(name,typei,levelnum,heng) values('果园观赏',2,2,2)
insert into alllist(name,typei,levelnum,heng) values('自养树苗',2,2,3)
insert into alllist(name,typei,levelnum,heng) values('水果知识科普小课堂',2,2,4)

insert into alllist(name,typei,levelnum,heng) values('水果供应',3,1,0)
insert into alllist(name,typei,levelnum,heng) values('新上水果',3,2,1)
insert into alllist(name,typei,levelnum,heng) values('热销水果',3,2,2)
insert into alllist(name,typei,levelnum,heng) values('折扣水果',3,2,3)


insert into alllist(name,typei,levelnum,heng) values('周边食宿',4,1,0)
insert into alllist(name,typei,levelnum,heng) values('预定餐馆',4,2,1)
insert into alllist(name,typei,levelnum,heng) values('预定宾馆',4,2,2)


insert into alllist(name,typei,levelnum,heng) values('我的',5,1,0)
insert into alllist(name,typei,levelnum,heng) values('我的信息',5,2,1)
insert into alllist(name,typei,levelnum,heng) values('我的购物车',5,2,2)
insert into alllist(name,typei,levelnum,heng) values('我购买过的东西',5,2,3)






select * from alllist

select name from alllist where typei=(Select typei from alllist where name='果园活动' ) and levelnum=2

select name from alllist where typei=(Select typei from alllist where name='果园简介' ) 

select name from alllist where typei=(Select typei from alllist where  name='')

select rtrim(name) from alllist where typei=(Select typei from alllist where  name='果园简介 ')
drop table alllist

drop table news
create table news(
id int,
title char(50),

photo char(8) ,
datetim char(20)

)
insert into news(id,title,photo,datetim) values(1,'春日新上水果来袭~','sj1.jpeg','2018.4.18')

insert into news(id,title,photo,datetim) values(2,'亲子采摘活动炫酷来袭~','sj2.jpeg','2018.4.19')

select * from news

create table wen(
id int,
title char(50),
arcitle char(500),)
insert into wen(id,title,arcitle)values(1,'春日新上水果来袭~',
'春天来了部分新鲜水果上市了！这8种不能错过的营养果，给身体补充动力，还能刮油！枇杷：润肺的好食材.金色的小果子，味道甜中带酸，一走进水果超市，香气浓郁的枇杷一下子能把人吸引住。枇杷的表皮黄而多蜡质，因此又被称为黄蜡丸，剥开外皮，里面的果肉味道香浓、柔软多汁、酸甜适口。')

insert into wen(id,title,arcitle)values(2,'亲子采摘活动炫酷来袭~',
'活动介绍连世界都没看过的孩子 
哪有什么世界观 
连土地都没亲近过的孩子 
怎么会热爱生活 
在这个硕果累累的金秋 
带孩子走出城市，走进田园， 
给孩子一次难忘的亲子体验吧。')


select * from wen


create table uin(
用户名 char(20),
密码 char(20),
性别 char(5),
手机 char(20),

地址 char(50)
)
select * from uin

drop table uin


drop table alllist

drop table pfruit
create table pfruit(
id int,
pfname char(20),
photo char(11) ,
datetim char(20),
price int,
miao char(500)
)
insert into pfruit(id,pfname,photo,datetim,price,miao) values(
1,'蓝莓采摘','pick01.jpeg','2018.4.18','60',
'这次开放采摘的水果蓝莓,位于52号园区的3棚蓝莓区。主要有奥尼尔、薄雾、夏普蓝等品种。大棚里到处散发着蓝莓的气息
大大小小的蓝莓在阳光的照耀下显得更为诱惑，欢迎来采摘品尝~')
insert into pfruit(id,pfname,photo,datetim,price,miao) values(
2,'葡萄采摘','pick02.jpeg','2018.4.18','60','这次开放采摘的水果葡萄,位于36号园区的2、3棚葡萄区。
炎炎的夏日，葡萄园区的空气里却弥漫着一种香甜的味道。咬上一口，那酸酸甜甜的感觉，简直就像初恋一般。
青翠欲滴、晶莹剔透的葡萄让人看一眼就能感受到夏天的甜蜜，想必你已经迫不及待的想去体验一场味觉与视觉的盛宴了。自己亲手摘下的葡萄，是否会格外香甜呢？
')
insert into pfruit(id,pfname,photo,datetim,price,miao) values(
3,'苹果采摘','pick03.jpeg','2018.4.18','60','这次开放采摘的水果苹果,位于6号园区的5、6、8棚苹果区。
果园里有红富士、金帅、早熟富士王品种,可以任意选择采摘。苹果皮薄、汁甜肉脆、口感好，
带着自己的爱人和家人来苹果园采摘吧！和家人们在苹果园里度过这美好的假期，尽情的享受采摘的乐趣，伴随欢声笑语满载而归。
')


select * from pfruit


drop table tu
create table tu(
id int,
tuname char(20),
photo char(7),
price char(5),
miao char(500)
)
insert into tu(id,tuname,photo,price,miao) values(
1,'黄土','tu1.jpg','20',
'黄土壤多为砂性土壤，一般适合种植苹果、梨子等；干果一类的也可以种植,像枣树,核桃,板栗,开心果等。')
insert into tu(id,tuname,photo,price,miao) values(
2,'黑土','tu2.jpg','90','黑土是具有强烈胀缩和扰动特性的粘质土壤。黑土地富含腐殖质，所以成黑色。这些黑色腐殖质，主要是动植物残骸植物长期堆积腐烂形成的.
从农业生产角度来说，以黑土最好，最为肥沃.适合种植, 日本板栗, 苹果, 梨， 胡桃, 板栗, 山楂, 杏, 海棠, 等.
')
insert into tu(id,tuname,photo,price,miao) values(
3,'红壤','tu3.jpg','60','红土地多为酸性土壤，因而适合栽种一些喜酸性植物，如：茉莉、栀子、珙桐、蓝果树、石榴、杨梅、秋海棠类植物等等都可以.
')

insert into tu(id,tuname,photo,price,miao) values(
4,'紫土','tu4.jpg','60','紫色土壤适宜种植多种农作物和经济林木;土壤中的紫色大都富含钙质(碳酸钙)和磷、钾等营养元素，很是肥沃。
适合果树：椪柑、橙子、柚子、李子、枇杷、杨梅、猕猴桃、香椿等。')

select * from tu



drop table talktu
create table talktu(
id int,
用户名 char(20),
tuname char(11),
datetim char(20),
word char(500)
)
insert into talktu(id,用户名,tuname,datetim,word) values(
1,'呼呼歌','紫土','2018.4.15',
'这里的紫土质量还不错,比我之前在淘宝买的质量要好.商家还是可以的')
insert into talktu(id,用户名,tuname,datetim,word) values(
2,'胡国公','黑土','2018.4.16',
'这次带儿子来参加这个种植小树的活动,感觉很有意义,也了解到很多知识,很开心.下次还会过来,感觉孩子会学到很多')
insert into talktu(id,用户名,tuname,datetim,word) values(
3,'古丽那种','红壤','2018.4.16',
'这次带着班级里的小朋友参加种植活动,可以让他们除了在课堂之外,也能对生物中的植物类,有更好的了解.很值得一来.')
insert into talktu(id,用户名,tuname,datetim,word) values(
4,'六号燃物类','紫土','2018.4.18',
'本来没种过树,第一次在这体验了一把,觉得还挺有趣.希望今天种的这颗小树能一直陪我长大')

select * from talktu



drop table fruitkn
create table fruitkn(
id int,
fruitname char(20),
photo char(7),
种类 char(1000),
生长习性 char(1000),
营养价值 char(1000),
栽培现状 char(1000)
)
insert into fruitkn(id,fruitname,photo,种类,生长习性,营养价值,栽培现状) values(
1,'苹果','f1.jpeg',
'中国：花牛、红星、荣光、元帅系、红将军等；
韩国：甘红、红露、曙光、秋光、华红；
美国：乔纳金、恩派、新红星、嘎拉、布瑞本；
澳大利亚：粉红佳人、澳洲青苹、姆瑞宝石等；
新西兰：嘎拉、太平洋玫瑰、布瑞本、华丽；
日本：富士系、国光、津轻系、王林、乔纳金、陆奥、珊夏等。',
'苹果是落叶乔木，有较强的极性，通常生长旺盛，树冠高大，树高可达15米，栽培条件下一般高3～5米左右。树干灰褐色，老皮有不规则的纵裂或片状剥落，小枝光滑。
 果实为仁果，颜色及大小因品种而异。喜光，喜微酸性到中性土壤。最适于 土层深厚、富含有机质、心土为通气排水良好的沙质土壤。',
'  苹果是美容佳品，既能减肥，又可使皮肤润滑柔嫩。苹果是种低热量食物，每100克只产生60千卡热量；苹果中营养成份可溶性大，易被人体吸收，故有“活水”之称，有利于溶解硫元素，使皮肤润滑柔嫩。
苹果中含有铜、碘、锰、锌、 钾等元素，人体如缺乏这些元素，皮肤就会发生干燥、易裂、奇痒。',
'苹果树是喜低温干燥的温带果树，要求冬无严寒，夏无酷暑。适宜的温度范围是年平均气温9～14℃，冬季极端低温不低于-12℃，夏季最高月均温不高于20℃，≥10℃年积温5000℃左右，生长季节（4～10月）平均气温12～18℃，冬季需7.2℃以下低温1200～1500小时，
才能顺利通过自然休眠。一般认为年平均温度在7.5～14 ℃的地区，都可以栽培苹果。苹果自然休眠期较长。如冬季温度高，不 能满足冬季休眠期所需低温时，春季发芽不齐。')

insert into fruitkn(id,fruitname,photo,种类,生长习性,营养价值,栽培现状) values(
2,'葡萄','f2.jpeg',
'世界葡萄品种达8000个以上，中国约有800个，生产上栽培比较优良的品种只有数十个。按用途可分为鲜食、酿酒、制干、其他加工品种，以及砧木品种。主要优良鲜食品种有：莎巴珍珠、葡萄园皇后、京早晶、康拜尔早生、无核白、玫瑰香、巨峰、白香蕉、牛奶、龙眼。此外，还有
许多酿酒品种，如白雅、白谢希、季米亚特、雷司令、意斯林、珊瑚珠、赤霞珠、黑比诺、霞多丽等。中华人民共和国成立以来，先后育成鲜食品种有早红、早玫瑰、京早晶、京紫晶、脆红、红香蕉、早玛瑙、紫珍珠、凤凰系品种等；酿酒品种有公酿1号、公酿2号，泽玉、泽香、梅郁等。',
'葡萄生长时所需最低气温约12℃-15℃，最低地温约为10℃-13℃，花期最适温度为20℃左右，果实膨大期最适温度为20℃-30℃．如日夜温差大，着色及糖度较好。
葡萄对水分要求较高，严格控制土壤中水分是种好葡萄的一个前提。葡萄在生长初期或营养生长期时需水量较多，生长后期或结果期，根部较为衰弱需水较少，要避免伤根免影响品质。
葡萄在正常生长期间必须要有一定强度的光照，葡萄虽然在各种土壤（经过改良）均能栽培，但以壤土及细砂质壤土为最好，砂质土虽透气性能好．但保肥保水能力较差。壤土介于砂质土与粘质土之间。其保水保肥能力较强，多数较为肥沃，在葡萄生长旺盛时，较易流花和单性结果，在高温光照条件好时，结实好、产量高。',
'富含葡萄糖、维生素C、维生素B1、花青素、钙元素。葡萄含有丰富的营养价值，葡萄被誉为“水果皇后”，除含有60%以上的游离水和胶体结合水、化合水外，还含有碳水化合物、葡萄糖、果糖、有机酸、矿物质、含氮物质、氨基酸以及多种维生素等对人体有益和必需的成分。',
'葡萄架式:一、篱架.架面与地面垂直，形似篱笆故称篱架，因其架直立，又檄为立架。黄河故道栽培的葡萄多采用此种架式。篱架又分为单篱架和双臂篱架。
二、棚架.适于多数品种的长势需要，有利于早期丰产。枝蔓仅5-6米长，上下架容易，操作方便。主蔓较短，容易调节树势，产量较高又比较稳产。同时，更新后恢复快，对产量影响较小。三、双十字“V”形架
双十字“V”形架葡萄架式，在藤稔葡萄上已取得较好的效果。生产实践证明这种架式具有先进性，是当今国内新型的实用架式，有良好的推广应用前景。

')

select * from fruitkn


drop table fruit
create table fruit(
id int,
fruitname char(20),
photo char(9) ,
datetim char(20),
price int,
miao char(500)
)
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
7,'葡萄','sf07.jpeg','18.04',25,'国产早玫瑰葡萄，颗颗好滋味')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
2,'苹果','sf02.jpeg','18.04',20,'美国乔纳金苹果，又甜又大')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
3,'草莓','sf03.jpeg','18.04',15,'国产奶油草莓，美味香甜，值得一试')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
4,'橙子','sf04.jpeg','18.04',15,'山东脐橙，经典的味道我知道')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
5,'石榴','sf05.jpeg','18.04',14,'国产大石榴，颗颗饱满，回味无穷')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
6,'香蕉','sf06.jpeg','18.04',8,'海南名牌香蕉，香甜可口')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
1,'樱桃','sf01.jpeg','18.03',20,'进口樱桃，酸酸甜甜就是你')



select * from fruit



drop table buypfcar
create table buypfcar(
id int,
pfname char(20),
用户名 char(20),

photo char(11) ,

price int,
ge int,
summ int,
pay char(10)
)

insert into buypfcar(id,pfname,用户名,photo,price,ge,summ,pay) values(1,'蓝莓采摘','liufei','pick01.jpeg',60,1,60,'已付')

insert into buypfcar(id,pfname,用户名,photo,price,ge,summ,pay) values(1,'蓝莓采摘','liufei','pick01.jpeg',60,1,60,'未付')


select * from buypfcar


create table buyfruitcar(
id int,
fruitname char(20),
用户名 char(20),

photo char(9) ,

price int,
ge int,
summ int,
pay char(5)
)



create table buytucar(
id int,
tuname char(20),
用户名 char(20),

photo char(9) ,

price int,
ge int,
summ int,
pay char(5)
)