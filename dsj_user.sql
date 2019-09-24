-- #dsj_user.sql创建用户表
-- #创建数据库
DROP DATABASE IF EXISTS dsj;
CREATE DATABASE dsj CHARSET=UTF8;
-- #创建表dsj_login 用户登录表
USE dsj;
CREATE TABLE dsj_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16),
    avatar VARCHAR(128)
);
-- #添加用户测试数据
INSERT INTO dsj_login VALUES(NULL,'lily','123','940746559@qq.com','18629884657',NULL);
INSERT INTO dsj_login VALUES(NULL,'lucy','123','94446559@qq.com','18634584657',NULL);
-- 创建商品列表
CREATE TABLE dsj_product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    ptype VARCHAR(35),
    ptitle VARCHAR(33),
    pavg FLOAT,
    rating  FLOAT,
    plsrc  VARCHAR(33),
    pemp VARCHAR(32),
    pcards1 VARCHAR(33),
    pcardt1 VARCHAR(33),
    pcards2 VARCHAR(33),
    pcardt2 VARCHAR(33)
);
INSERT INTO dsj_product VALUES(NULL,'亚洲菜','焗诱','200','7.9','img/y1.jpeg','徐汇区','img/vip.png','VIP 特殊礼遇','img/dls.png','订立省');
INSERT INTO dsj_product VALUES(NULL,'亚洲菜','老船长精酿啤酒吧 · 餐厅','150','6.6','img/y2.jpg','黄浦区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'亚洲菜','灰狗·潮泰意·餐厅（静安嘉里中心店）','170','8.9','img/y3.jpg','高新区','img/yt.png','欢迎使用美国运通卡','img/vip.png','VIP 特殊礼遇');
INSERT INTO dsj_product VALUES(NULL,'亚洲菜','灰狗·潮泰意·餐厅（环贸iapm商场店）','160','8.1','img/y4.jpg','雁塔区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'亚洲菜','黄公子','3000','10.0','img/y5.jpeg','黄浦区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'亚洲菜','狮 LION','300','8.0','img/y6.jpeg','徐汇区','img/dls.png','订立省','img/jk.png','即刻预定');
-- 法国菜系
INSERT INTO dsj_product VALUES(NULL,'法国菜','Chez Louis喜乐意西餐厅','248','8.4','img/f1.jpg','雁塔区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'法国菜','碟舍','500','9.0','img/f2.jpg','高新区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'法国菜','Reve Kitchen 创意法式料理','332','9.6','img/f3.jpg','雁塔区','img/yt.png','欢迎使用美国运通卡','img/dls.png','订立省');
INSERT INTO dsj_product VALUES(NULL,'法国菜','THE WANG王品法式料理（外滩店）','707','9.6','img/f4.jpeg','雁塔区','img/dls.png','订立省','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'法国菜',' 红酒西餐厅 (建国西路店)','466','8.6','img/f5.jpeg','黄浦区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
INSERT INTO dsj_product  VALUES(NULL,'法国菜',' 翡翠36餐厅 上海浦东香格里拉大酒店','700','8.5','img/f6.jpeg','黄浦区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');
-- 印度菜系
INSERT INTO dsj_product VALUES(NULL,'印度菜','天都里印度餐厅','300','7.4','img/i1.jpeg','徐汇区','img/dls.png','订立省','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'印度菜','Saffron - 经典现代印度菜肴','137','9.5','img/i2.jpg','黄浦区','img/vip.png','VIP 特殊礼遇','img/dls.png','订立省');
INSERT INTO dsj_product VALUES(NULL,'印度菜','Bukhara Indian Grill & Lounge 布卡拉印度烧烤餐厅&酒廊','120','7.2','img/i3.jpg','徐汇区','img/vip.png','VIP 特殊礼遇','img/dls.png','订立省');
INSERT INTO dsj_product VALUES(NULL,'印度菜','Kebabs on the Grille (Peoples Square) 克比印度餐厅（人民广场店)','500','5.6','img/i4.jpg','徐汇区','img/vip.png','订立省','img/jk.png','即刻预定');
INSERT INTO dsj_product VALUES(NULL,'印度菜','Kebabs On The Grille(碧云店)','422','6.6','img/i5.png','徐汇区','img/vip.png','VIP 特殊礼遇','img/dls.png','订立省');
INSERT INTO dsj_product VALUES(NULL,'印度菜','Hit wicket Indian Cuisine and Sports Bar','700','8.5','img/i6.jpg','高新区','img/yt.png','欢迎使用美国运通卡','img/jk.png','即刻预定');

 