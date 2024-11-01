/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shangchaohuiyuanguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shangchaohuiyuanguanlixitong` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shangchaohuiyuanguanlixitong`;

/*Table structure for table `buy_order` */

DROP TABLE IF EXISTS `buy_order`;

CREATE TABLE `buy_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_bianhao` varchar(200) DEFAULT NULL COMMENT '订单编号   ',
  `caozuo_name` varchar(200) DEFAULT NULL COMMENT '操作人姓名   ',
  `caozuo_table` varchar(200) DEFAULT NULL COMMENT '操作人所在表名',
  `huiyuan_id` int(11) DEFAULT NULL COMMENT '会员id',
  `original_money` decimal(10,2) DEFAULT NULL COMMENT '原总价',
  `discount_money` decimal(10,2) DEFAULT NULL COMMENT '折后价  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单添加时间   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='购买订单';

/*Data for the table `buy_order` */

insert  into `buy_order`(`id`,`order_bianhao`,`caozuo_name`,`caozuo_table`,`huiyuan_id`,`original_money`,`discount_money`,`insert_time`,`create_time`) values (5,'1615858682075','a2','yonghu',1,'35.00','33.25','2021-03-16 09:38:02','2021-03-16 09:38:02'),(6,'1615858768103','a2','yonghu',1,'195.00','175.50','2021-03-16 09:39:28','2021-03-16 09:39:28'),(7,'1615858961700','a2','yonghu',1,'270.00','243.00','2021-03-16 09:42:42','2021-03-16 09:42:42'),(8,'1615860306323','a2','yonghu',1,'160.00','144.00','2021-03-16 10:05:06','2021-03-16 10:05:06');

/*Table structure for table `buy_order_list` */

DROP TABLE IF EXISTS `buy_order_list`;

CREATE TABLE `buy_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `buy_order_id` varchar(200) DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '物资表id',
  `order_number` int(11) DEFAULT NULL COMMENT '数量   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='购买订单详情';

/*Data for the table `buy_order_list` */

insert  into `buy_order_list`(`id`,`buy_order_id`,`goods_id`,`order_number`,`create_time`) values (10,'1615858682075',3,1,'2021-03-16 09:38:02'),(11,'1615858682075',4,2,'2021-03-16 09:38:02'),(12,'1615858768103',3,3,'2021-03-16 09:39:28'),(13,'1615858768103',5,2,'2021-03-16 09:39:28'),(14,'1615858961700',1,1,'2021-03-16 09:42:42'),(15,'1615858961700',2,13,'2021-03-16 09:42:42'),(16,'1615860306323',5,1,'2021-03-16 10:05:06'),(17,'1615860306323',6,2,'2021-03-16 10:05:06');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-15 13:24:07'),(2,'sex_types','性别',2,'女',NULL,'2021-03-15 13:24:07'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-15 13:24:07'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-15 13:24:07'),(5,'jifen_types','积分等级',1,'钻石会员',NULL,'2021-03-15 13:24:07'),(6,'jifen_types','积分等级',2,'黄金会员',NULL,'2021-03-15 13:24:07'),(7,'jifen_types','积分等级',3,'白银会员',NULL,'2021-03-15 13:24:07'),(8,'jifen_types','积分等级',4,'青铜会员',NULL,'2021-03-15 13:24:07'),(9,'huiyuan_types','会员状态',1,'使用',NULL,'2021-03-15 13:24:07'),(10,'huiyuan_types','会员状态',2,'禁用',NULL,'2021-03-15 13:24:07'),(11,'goods_types','物品种类',1,'食品',NULL,'2021-03-15 13:24:07'),(12,'goods_types','物品种类',2,'水果',NULL,'2021-03-15 13:24:07'),(13,'goods_types','物品种类',3,'日用品',NULL,'2021-03-15 13:24:07'),(14,'goods_types','物品种类',4,'饮料',NULL,'2021-03-15 13:24:07'),(15,'goods_types','物品种类',5,'文具',NULL,'2021-03-15 13:24:07'),(16,'goods_types','物品种类',6,'其他',NULL,'2021-03-15 13:24:07'),(17,'goods_types','物品种类',7,'aaa',NULL,'2021-03-16 10:01:19'),(18,'goods_types','物品种类',8,'ddddd',NULL,'2021-03-16 10:02:23');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名字  ',
  `goods_types` int(11) DEFAULT NULL COMMENT '物品种类   ',
  `goods_number` int(11) DEFAULT NULL COMMENT '物资数量   ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '单价  ',
  `goods_content` varchar(200) DEFAULT NULL COMMENT '物资详情',
  `flag` int(11) DEFAULT NULL COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`danjia`,`goods_content`,`flag`,`create_time`) values (1,'卫生巾',3,99,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615786719229.jpg','包','10.00','卫生巾的物资详情\r\n\r\n',1,'2021-03-15 13:39:00'),(2,'花生油',3,87,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615786750711.jpg','壶','20.00','花生油的物资详情\r\n',1,'2021-03-15 13:39:42'),(3,'酱油',1,91,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615786791324.jpg','瓶','25.00','酱油的物资详情\r\n',1,'2021-03-15 13:40:30'),(4,'速溶咖啡',1,63,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615786838765.jpg','包','5.00','速溶咖啡的详情\r\n',1,'2021-03-15 13:41:18'),(5,'卫生纸',3,89,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615789376422.png','包','60.00','卫生纸的详情\r\n',1,'2021-03-15 14:23:27'),(6,'洗头膏',3,98,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615860032356.jpg','瓶','50.00','洗头膏的物资详情\r\n',1,'2021-03-16 10:01:02');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyuan_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `huiyuan_phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `huiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  ',
  `huiyuan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `jifen` int(11) DEFAULT NULL COMMENT '积分  ',
  `jifen_types` int(11) DEFAULT NULL COMMENT '积分等级  ',
  `huiyuan_types` int(11) DEFAULT NULL COMMENT '会员状态  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员信息';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`huiyuan_name`,`huiyuan_phone`,`huiyuan_id_number`,`sex_types`,`huiyuan_photo`,`nation`,`politics_types`,`birthplace`,`jifen`,`jifen_types`,`huiyuan_types`,`create_time`) values (1,'会员1','17703786991','410224199610232011',1,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615800150916.jpg','汉',1,'河南开封',145,3,1,'2021-03-15 17:22:48'),(2,'会员2','17703789992','410224199610232012',2,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615800570188.jpg','汉',2,'浙江杭州',9,4,1,'2021-03-15 17:29:48'),(3,'会员3','17703789993','410224199610232013',2,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615859857150.jpg','汉',1,'审犯罪',0,4,1,'2021-03-16 09:57:47');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','cshv3bxdw64dhcp8u2mrhhdsotjd2p88','2021-03-15 13:35:42','2021-03-16 10:55:25'),(2,2,'a2','yonghu','用户','lf6blyyb4pcwkecnpe755s4khijbfmtb','2021-03-15 21:25:07','2021-03-16 11:03:58');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`yonghu_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','张1','17703789991','410224199610232011',2,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615814254173.jpg','汉',1,'北京','2021-03-15 21:17:47'),(2,'a2','123456','张2','17703789992','410224199610232012',1,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615814295252.jpg','维吾尔族',1,'河南开封','2021-03-15 21:18:24'),(3,'a3','123456','张三','17703789993','410224199610232013',2,'http://localhost:8080/shangchaohuiyuanguanlixitong/file/download?fileName=1615859764189.jpg','汉',2,'浙江温州','2021-03-16 09:57:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
