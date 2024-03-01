/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootp5hkd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootp5hkd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootp5hkd`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootp5hkd/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootp5hkd/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootp5hkd/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusstushuxinxi` */

DROP TABLE IF EXISTS `discusstushuxinxi`;

CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';

/*Data for the table `discusstushuxinxi` */

insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-16 10:33:12',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-16 10:33:12',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-16 10:33:12',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-16 10:33:12',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-16 10:33:12',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-16 10:33:12',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiankangdaka` */

DROP TABLE IF EXISTS `jiankangdaka`;

CREATE TABLE `jiankangdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiankangqingkuang` varchar(200) DEFAULT NULL COMMENT '健康情况',
  `jiechushi` varchar(200) DEFAULT NULL COMMENT '接触史',
  `jinritiwen` varchar(200) DEFAULT NULL COMMENT '今日体温',
  `peidaikouzhao` varchar(200) DEFAULT NULL COMMENT '佩戴口罩',
  `dakariqi` datetime DEFAULT NULL COMMENT '打卡日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='健康打卡';

/*Data for the table `jiankangdaka` */

insert  into `jiankangdaka`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`jiankangqingkuang`,`jiechushi`,`jinritiwen`,`peidaikouzhao`,`dakariqi`) values (31,'2021-05-16 10:33:12','账号1','姓名1','手机1','http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian1.jpg','健康','是','今日体温1','是','2021-05-16 10:33:12');
insert  into `jiankangdaka`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`jiankangqingkuang`,`jiechushi`,`jinritiwen`,`peidaikouzhao`,`dakariqi`) values (32,'2021-05-16 10:33:12','账号2','姓名2','手机2','http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian2.jpg','健康','是','今日体温2','是','2021-05-16 10:33:12');
insert  into `jiankangdaka`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`jiankangqingkuang`,`jiechushi`,`jinritiwen`,`peidaikouzhao`,`dakariqi`) values (33,'2021-05-16 10:33:12','账号3','姓名3','手机3','http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian3.jpg','健康','是','今日体温3','是','2021-05-16 10:33:12');
insert  into `jiankangdaka`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`jiankangqingkuang`,`jiechushi`,`jinritiwen`,`peidaikouzhao`,`dakariqi`) values (34,'2021-05-16 10:33:12','账号4','姓名4','手机4','http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian4.jpg','健康','是','今日体温4','是','2021-05-16 10:33:12');
insert  into `jiankangdaka`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`jiankangqingkuang`,`jiechushi`,`jinritiwen`,`peidaikouzhao`,`dakariqi`) values (35,'2021-05-16 10:33:12','账号5','姓名5','手机5','http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian5.jpg','健康','是','今日体温5','是','2021-05-16 10:33:12');
insert  into `jiankangdaka`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`zhaopian`,`jiankangqingkuang`,`jiechushi`,`jinritiwen`,`peidaikouzhao`,`dakariqi`) values (36,'2021-05-16 10:33:12','账号6','姓名6','手机6','http://localhost:8080/springbootp5hkd/upload/jiankangdaka_zhaopian6.jpg','健康','是','今日体温6','是','2021-05-16 10:33:12');

/*Table structure for table `jinguanyuyue` */

DROP TABLE IF EXISTS `jinguanyuyue`;

CREATE TABLE `jinguanyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `jinguanriqi` datetime DEFAULT NULL COMMENT '进馆日期',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='进馆预约';

/*Data for the table `jinguanyuyue` */

insert  into `jinguanyuyue`(`id`,`addtime`,`tushuguanmingcheng`,`jinguanriqi`,`renshu`,`beizhu`,`tupian`) values (41,'2021-05-16 10:33:12','图书馆名称1','2021-05-16 10:33:12',1,'备注1','http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian1.jpg');
insert  into `jinguanyuyue`(`id`,`addtime`,`tushuguanmingcheng`,`jinguanriqi`,`renshu`,`beizhu`,`tupian`) values (42,'2021-05-16 10:33:12','图书馆名称2','2021-05-16 10:33:12',2,'备注2','http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian2.jpg');
insert  into `jinguanyuyue`(`id`,`addtime`,`tushuguanmingcheng`,`jinguanriqi`,`renshu`,`beizhu`,`tupian`) values (43,'2021-05-16 10:33:12','图书馆名称3','2021-05-16 10:33:12',3,'备注3','http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian3.jpg');
insert  into `jinguanyuyue`(`id`,`addtime`,`tushuguanmingcheng`,`jinguanriqi`,`renshu`,`beizhu`,`tupian`) values (44,'2021-05-16 10:33:12','图书馆名称4','2021-05-16 10:33:12',4,'备注4','http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian4.jpg');
insert  into `jinguanyuyue`(`id`,`addtime`,`tushuguanmingcheng`,`jinguanriqi`,`renshu`,`beizhu`,`tupian`) values (45,'2021-05-16 10:33:12','图书馆名称5','2021-05-16 10:33:12',5,'备注5','http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian5.jpg');
insert  into `jinguanyuyue`(`id`,`addtime`,`tushuguanmingcheng`,`jinguanriqi`,`renshu`,`beizhu`,`tupian`) values (46,'2021-05-16 10:33:12','图书馆名称6','2021-05-16 10:33:12',6,'备注6','http://localhost:8080/springbootp5hkd/upload/jinguanyuyue_tupian6.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='新书资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-05-16 10:33:12','标题1','简介1','http://localhost:8080/springbootp5hkd/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2021-05-16 10:33:12','标题2','简介2','http://localhost:8080/springbootp5hkd/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2021-05-16 10:33:12','标题3','简介3','http://localhost:8080/springbootp5hkd/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2021-05-16 10:33:12','标题4','简介4','http://localhost:8080/springbootp5hkd/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2021-05-16 10:33:12','标题5','简介5','http://localhost:8080/springbootp5hkd/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2021-05-16 10:33:12','标题6','简介6','http://localhost:8080/springbootp5hkd/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `tushufenlei` */

DROP TABLE IF EXISTS `tushufenlei`;

CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='图书分类';

/*Data for the table `tushufenlei` */

insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (61,'2021-05-16 10:33:12','图书分类1');
insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (62,'2021-05-16 10:33:12','图书分类2');
insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (63,'2021-05-16 10:33:12','图书分类3');
insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (64,'2021-05-16 10:33:12','图书分类4');
insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (65,'2021-05-16 10:33:12','图书分类5');
insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (66,'2021-05-16 10:33:12','图书分类6');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (71,'2021-05-16 10:33:12','图书编号1','图书名称1','图书分类1','http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian1.jpg','作者1','出版社1','详情1',1,1,'2021-05-16 10:33:12',1);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (72,'2021-05-16 10:33:12','图书编号2','图书名称2','图书分类2','http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian2.jpg','作者2','出版社2','详情2',2,2,'2021-05-16 10:33:12',2);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (73,'2021-05-16 10:33:12','图书编号3','图书名称3','图书分类3','http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian3.jpg','作者3','出版社3','详情3',3,3,'2021-05-16 10:33:12',3);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (74,'2021-05-16 10:33:12','图书编号4','图书名称4','图书分类4','http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian4.jpg','作者4','出版社4','详情4',4,4,'2021-05-16 10:33:12',4);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (75,'2021-05-16 10:33:12','图书编号5','图书名称5','图书分类5','http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian5.jpg','作者5','出版社5','详情5',5,5,'2021-05-16 10:33:12',5);
insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (76,'2021-05-16 10:33:12','图书编号6','图书名称6','图书分类6','http://localhost:8080/springbootp5hkd/upload/tushuxinxi_tupian6.jpg','作者6','出版社6','详情6',6,6,'2021-05-16 10:33:12',6);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-16 10:33:12');

/*Table structure for table `wenxintishi` */

DROP TABLE IF EXISTS `wenxintishi`;

CREATE TABLE `wenxintishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `neirong` longtext NOT NULL COMMENT '内容',
  `shijian` datetime NOT NULL COMMENT '时间',
  `fengmian` varchar(200) NOT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='温馨提示';

/*Data for the table `wenxintishi` */

insert  into `wenxintishi`(`id`,`addtime`,`biaoti`,`neirong`,`shijian`,`fengmian`) values (101,'2021-05-16 10:33:12','标题1','内容1','2021-05-16 10:33:12','http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian1.jpg');
insert  into `wenxintishi`(`id`,`addtime`,`biaoti`,`neirong`,`shijian`,`fengmian`) values (102,'2021-05-16 10:33:12','标题2','内容2','2021-05-16 10:33:12','http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian2.jpg');
insert  into `wenxintishi`(`id`,`addtime`,`biaoti`,`neirong`,`shijian`,`fengmian`) values (103,'2021-05-16 10:33:12','标题3','内容3','2021-05-16 10:33:12','http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian3.jpg');
insert  into `wenxintishi`(`id`,`addtime`,`biaoti`,`neirong`,`shijian`,`fengmian`) values (104,'2021-05-16 10:33:12','标题4','内容4','2021-05-16 10:33:12','http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian4.jpg');
insert  into `wenxintishi`(`id`,`addtime`,`biaoti`,`neirong`,`shijian`,`fengmian`) values (105,'2021-05-16 10:33:12','标题5','内容5','2021-05-16 10:33:12','http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian5.jpg');
insert  into `wenxintishi`(`id`,`addtime`,`biaoti`,`neirong`,`shijian`,`fengmian`) values (106,'2021-05-16 10:33:12','标题6','内容6','2021-05-16 10:33:12','http://localhost:8080/springbootp5hkd/upload/wenxintishi_fengmian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shengri` date DEFAULT NULL COMMENT '生日',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (11,'2021-05-16 10:33:12','用户1','123456','姓名1','男','13823888881','2021-05-16','住址1','http://localhost:8080/springbootp5hkd/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (12,'2021-05-16 10:33:12','用户2','123456','姓名2','男','13823888882','2021-05-16','住址2','http://localhost:8080/springbootp5hkd/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (13,'2021-05-16 10:33:12','用户3','123456','姓名3','男','13823888883','2021-05-16','住址3','http://localhost:8080/springbootp5hkd/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (14,'2021-05-16 10:33:12','用户4','123456','姓名4','男','13823888884','2021-05-16','住址4','http://localhost:8080/springbootp5hkd/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (15,'2021-05-16 10:33:12','用户5','123456','姓名5','男','13823888885','2021-05-16','住址5','http://localhost:8080/springbootp5hkd/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (16,'2021-05-16 10:33:12','用户6','123456','姓名6','男','13823888886','2021-05-16','住址6','http://localhost:8080/springbootp5hkd/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `yonghuyuyue` */

DROP TABLE IF EXISTS `yonghuyuyue`;

CREATE TABLE `yonghuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `tushuguanmingcheng` varchar(200) DEFAULT NULL COMMENT '图书馆名称',
  `jinguanriqi` varchar(200) DEFAULT NULL COMMENT '进馆日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `renshu` varchar(200) DEFAULT NULL COMMENT '人数',
  `daodashijian` varchar(200) DEFAULT NULL COMMENT '到达时间',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用户预约';

/*Data for the table `yonghuyuyue` */

insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`tushuguanmingcheng`,`jinguanriqi`,`tupian`,`zhanghao`,`xingming`,`renshu`,`daodashijian`,`shijian`) values (51,'2021-05-16 10:33:12','预约编号1','图书馆名称1','进馆日期1','http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian1.jpg','账号1','姓名1','1','上午','2021-05-16 10:33:12');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`tushuguanmingcheng`,`jinguanriqi`,`tupian`,`zhanghao`,`xingming`,`renshu`,`daodashijian`,`shijian`) values (52,'2021-05-16 10:33:12','预约编号2','图书馆名称2','进馆日期2','http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian2.jpg','账号2','姓名2','1','上午','2021-05-16 10:33:12');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`tushuguanmingcheng`,`jinguanriqi`,`tupian`,`zhanghao`,`xingming`,`renshu`,`daodashijian`,`shijian`) values (53,'2021-05-16 10:33:12','预约编号3','图书馆名称3','进馆日期3','http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian3.jpg','账号3','姓名3','1','上午','2021-05-16 10:33:12');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`tushuguanmingcheng`,`jinguanriqi`,`tupian`,`zhanghao`,`xingming`,`renshu`,`daodashijian`,`shijian`) values (54,'2021-05-16 10:33:12','预约编号4','图书馆名称4','进馆日期4','http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian4.jpg','账号4','姓名4','1','上午','2021-05-16 10:33:12');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`tushuguanmingcheng`,`jinguanriqi`,`tupian`,`zhanghao`,`xingming`,`renshu`,`daodashijian`,`shijian`) values (55,'2021-05-16 10:33:12','预约编号5','图书馆名称5','进馆日期5','http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian5.jpg','账号5','姓名5','1','上午','2021-05-16 10:33:12');
insert  into `yonghuyuyue`(`id`,`addtime`,`yuyuebianhao`,`tushuguanmingcheng`,`jinguanriqi`,`tupian`,`zhanghao`,`xingming`,`renshu`,`daodashijian`,`shijian`) values (56,'2021-05-16 10:33:12','预约编号6','图书馆名称6','进馆日期6','http://localhost:8080/springbootp5hkd/upload/yonghuyuyue_tupian6.jpg','账号6','姓名6','1','上午','2021-05-16 10:33:12');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shengri` date DEFAULT NULL COMMENT '生日',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangongzhanghao` (`yuangongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangongzhanghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (21,'2021-05-16 10:33:12','员工1','123456','员工姓名1','男','13823888881','2021-05-16','住址1','http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian1.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangongzhanghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (22,'2021-05-16 10:33:12','员工2','123456','员工姓名2','男','13823888882','2021-05-16','住址2','http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian2.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangongzhanghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (23,'2021-05-16 10:33:12','员工3','123456','员工姓名3','男','13823888883','2021-05-16','住址3','http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian3.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangongzhanghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (24,'2021-05-16 10:33:12','员工4','123456','员工姓名4','男','13823888884','2021-05-16','住址4','http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian4.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangongzhanghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (25,'2021-05-16 10:33:12','员工5','123456','员工姓名5','男','13823888885','2021-05-16','住址5','http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian5.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangongzhanghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`shengri`,`zhuzhi`,`zhaopian`) values (26,'2021-05-16 10:33:12','员工6','123456','员工姓名6','男','13823888886','2021-05-16','住址6','http://localhost:8080/springbootp5hkd/upload/yuangong_zhaopian6.jpg');

/*Table structure for table `yuyueguihai` */

DROP TABLE IF EXISTS `yuyueguihai`;

CREATE TABLE `yuyueguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guihaibianhao` varchar(200) DEFAULT NULL COMMENT '归还编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guihaibianhao` (`guihaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='预约归还';

/*Data for the table `yuyueguihai` */

insert  into `yuyueguihai`(`id`,`addtime`,`guihaibianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`guihaishijian`,`sfsh`,`shhf`) values (91,'2021-05-16 10:33:12','归还编号1','图书编号1','图书名称1','图书分类1','作者1','http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian1.jpg','账号1','姓名1','手机1','2021-05-16 10:33:12','是','');
insert  into `yuyueguihai`(`id`,`addtime`,`guihaibianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`guihaishijian`,`sfsh`,`shhf`) values (92,'2021-05-16 10:33:12','归还编号2','图书编号2','图书名称2','图书分类2','作者2','http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian2.jpg','账号2','姓名2','手机2','2021-05-16 10:33:12','是','');
insert  into `yuyueguihai`(`id`,`addtime`,`guihaibianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`guihaishijian`,`sfsh`,`shhf`) values (93,'2021-05-16 10:33:12','归还编号3','图书编号3','图书名称3','图书分类3','作者3','http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian3.jpg','账号3','姓名3','手机3','2021-05-16 10:33:12','是','');
insert  into `yuyueguihai`(`id`,`addtime`,`guihaibianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`guihaishijian`,`sfsh`,`shhf`) values (94,'2021-05-16 10:33:12','归还编号4','图书编号4','图书名称4','图书分类4','作者4','http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian4.jpg','账号4','姓名4','手机4','2021-05-16 10:33:12','是','');
insert  into `yuyueguihai`(`id`,`addtime`,`guihaibianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`guihaishijian`,`sfsh`,`shhf`) values (95,'2021-05-16 10:33:12','归还编号5','图书编号5','图书名称5','图书分类5','作者5','http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian5.jpg','账号5','姓名5','手机5','2021-05-16 10:33:12','是','');
insert  into `yuyueguihai`(`id`,`addtime`,`guihaibianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`guihaishijian`,`sfsh`,`shhf`) values (96,'2021-05-16 10:33:12','归还编号6','图书编号6','图书名称6','图书分类6','作者6','http://localhost:8080/springbootp5hkd/upload/yuyueguihai_tupian6.jpg','账号6','姓名6','手机6','2021-05-16 10:33:12','是','');

/*Table structure for table `yuyuejieyue` */

DROP TABLE IF EXISTS `yuyuejieyue`;

CREATE TABLE `yuyuejieyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) DEFAULT NULL COMMENT '借阅编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jieyueshijian` datetime DEFAULT NULL COMMENT '借阅时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuebianhao` (`jieyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='预约借阅';

/*Data for the table `yuyuejieyue` */

insert  into `yuyuejieyue`(`id`,`addtime`,`jieyuebianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`jieyueshijian`,`sfsh`,`shhf`) values (81,'2021-05-16 10:33:12','借阅编号1','图书编号1','图书名称1','图书分类1','作者1','http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian1.jpg','账号1','姓名1','手机1','2021-05-16 10:33:12','是','');
insert  into `yuyuejieyue`(`id`,`addtime`,`jieyuebianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`jieyueshijian`,`sfsh`,`shhf`) values (82,'2021-05-16 10:33:12','借阅编号2','图书编号2','图书名称2','图书分类2','作者2','http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian2.jpg','账号2','姓名2','手机2','2021-05-16 10:33:12','是','');
insert  into `yuyuejieyue`(`id`,`addtime`,`jieyuebianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`jieyueshijian`,`sfsh`,`shhf`) values (83,'2021-05-16 10:33:12','借阅编号3','图书编号3','图书名称3','图书分类3','作者3','http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian3.jpg','账号3','姓名3','手机3','2021-05-16 10:33:12','是','');
insert  into `yuyuejieyue`(`id`,`addtime`,`jieyuebianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`jieyueshijian`,`sfsh`,`shhf`) values (84,'2021-05-16 10:33:12','借阅编号4','图书编号4','图书名称4','图书分类4','作者4','http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian4.jpg','账号4','姓名4','手机4','2021-05-16 10:33:12','是','');
insert  into `yuyuejieyue`(`id`,`addtime`,`jieyuebianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`jieyueshijian`,`sfsh`,`shhf`) values (85,'2021-05-16 10:33:12','借阅编号5','图书编号5','图书名称5','图书分类5','作者5','http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian5.jpg','账号5','姓名5','手机5','2021-05-16 10:33:12','是','');
insert  into `yuyuejieyue`(`id`,`addtime`,`jieyuebianhao`,`tushubianhao`,`tushumingcheng`,`tushufenlei`,`zuozhe`,`tupian`,`zhanghao`,`xingming`,`shouji`,`jieyueshijian`,`sfsh`,`shhf`) values (86,'2021-05-16 10:33:12','借阅编号6','图书编号6','图书名称6','图书分类6','作者6','http://localhost:8080/springbootp5hkd/upload/yuyuejieyue_tupian6.jpg','账号6','姓名6','手机6','2021-05-16 10:33:12','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
