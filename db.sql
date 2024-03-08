/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shehuizhihuiyanglaojianhu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shehuizhihuiyanglaojianhu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shehuizhihuiyanglaojianhu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'laoren_types','老人身体状态',1,'优',NULL,NULL,'2022-02-28 20:22:33'),(2,'laoren_types','老人身体状态',2,'良',NULL,NULL,'2022-02-28 20:22:33'),(3,'laoren_types','老人身体状态',3,'差',NULL,NULL,'2022-02-28 20:22:33'),(4,'jibing_types','是否有疾病',1,'是',NULL,NULL,'2022-02-28 20:22:33'),(5,'jibing_types','是否有疾病',2,'否',NULL,NULL,'2022-02-28 20:22:33'),(6,'fangjian_types','房间类型',1,'房间类型1',NULL,NULL,'2022-02-28 20:22:33'),(7,'fangjian_types','房间类型',2,'房间类型2',NULL,NULL,'2022-02-28 20:22:33'),(8,'fangjian_types','房间类型',3,'房间类型3',NULL,NULL,'2022-02-28 20:22:33'),(9,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2022-02-28 20:22:33'),(10,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2022-02-28 20:22:33'),(11,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2022-02-28 20:22:33'),(12,'fankui_types','反馈类型',1,'反馈类型1',NULL,NULL,'2022-02-28 20:22:33'),(13,'fankui_types','反馈类型',2,'反馈类型2',NULL,NULL,'2022-02-28 20:22:33'),(14,'fankui_types','反馈类型',3,'反馈类型3',NULL,NULL,'2022-02-28 20:22:33'),(15,'sex_types','性别',1,'男',NULL,NULL,'2022-02-28 20:22:33'),(16,'sex_types','性别',2,'女',NULL,NULL,'2022-02-28 20:22:34'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-02-28 20:22:34'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-02-28 20:22:34'),(19,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-02-28 20:22:34');

/*Table structure for table `fangjian` */

DROP TABLE IF EXISTS `fangjian`;

CREATE TABLE `fangjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间号 Search111',
  `fangjian_types` int(11) DEFAULT NULL COMMENT '房间类型 Search111',
  `fangjian_number` int(11) DEFAULT NULL COMMENT '床位剩余数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房间信息';

/*Data for the table `fangjian` */

insert  into `fangjian`(`id`,`fangjian_name`,`fangjian_types`,`fangjian_number`,`create_time`) values (1,'房间号1',1,1,'2022-02-28 20:22:45'),(2,'房间号2',2,2,'2022-02-28 20:22:45'),(3,'房间号3',3,3,'2022-02-28 20:22:45'),(4,'房间号4',3,4,'2022-02-28 20:22:45'),(5,'房间号5',2,4,'2022-02-28 20:22:45');

/*Table structure for table `fangjianruzhu` */

DROP TABLE IF EXISTS `fangjianruzhu`;

CREATE TABLE `fangjianruzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房间入住信息';

/*Data for the table `fangjianruzhu` */

insert  into `fangjianruzhu`(`id`,`fangjian_id`,`laoren_id`,`create_time`) values (1,1,1,'2022-02-28 20:22:45'),(2,2,2,'2022-02-28 20:22:45'),(3,3,3,'2022-02-28 20:22:45'),(4,4,4,'2022-02-28 20:22:45'),(6,5,5,'2022-02-28 21:39:13');

/*Table structure for table `fankui` */

DROP TABLE IF EXISTS `fankui`;

CREATE TABLE `fankui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fankui_name` varchar(200) DEFAULT NULL COMMENT '反馈信息 Search111',
  `fankui_types` int(11) DEFAULT NULL COMMENT '反馈类型',
  `laoren_text` text COMMENT '反馈详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='反馈信息';

/*Data for the table `fankui` */

insert  into `fankui`(`id`,`fankui_name`,`fankui_types`,`laoren_text`,`create_time`) values (1,'反馈信息1',3,'反馈详情1','2022-02-28 20:22:45'),(2,'反馈信息2',3,'反馈详情2','2022-02-28 20:22:45'),(3,'反馈信息3',1,'反馈详情3','2022-02-28 20:22:45'),(4,'反馈信息4',1,'反馈详情4','2022-02-28 20:22:45'),(5,'反馈信息5',3,'反馈详情5','2022-02-28 20:22:45');

/*Table structure for table `houqinrenyuan` */

DROP TABLE IF EXISTS `houqinrenyuan`;

CREATE TABLE `houqinrenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `houqinrenyuan_name` varchar(200) DEFAULT NULL COMMENT '后勤人员姓名 Search111 ',
  `houqinrenyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `houqinrenyuan_phone` varchar(200) DEFAULT NULL COMMENT '后勤人员手机号',
  `houqinrenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '后勤人员身份证号 ',
  `houqinrenyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `houqinrenyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='后勤人员';

/*Data for the table `houqinrenyuan` */

insert  into `houqinrenyuan`(`id`,`username`,`password`,`houqinrenyuan_name`,`houqinrenyuan_photo`,`houqinrenyuan_phone`,`houqinrenyuan_id_number`,`houqinrenyuan_email`,`sex_types`,`houqinrenyuan_delete`,`create_time`) values (1,'a1','123456','后勤人员姓名1','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/houqinrenyuan1.jpg','17703786901','410224199610232001','1@qq.com',2,1,'2022-02-28 20:22:45'),(2,'a2','123456','后勤人员姓名2','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/houqinrenyuan2.jpg','17703786902','410224199610232002','2@qq.com',1,1,'2022-02-28 20:22:45'),(3,'a3','123456','后勤人员姓名3','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/houqinrenyuan3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-28 20:22:45'),(4,'a4','123456','后勤人员姓名4','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/houqinrenyuan4.jpg','17703786904','410224199610232004','4@qq.com',1,2,'2022-02-28 20:22:45'),(5,'a5','123456','后勤人员姓名5','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/houqinrenyuan5.jpg','17703786905','410224199610232005','5@qq.com',2,2,'2022-02-28 20:22:45');

/*Table structure for table `hugong` */

DROP TABLE IF EXISTS `hugong`;

CREATE TABLE `hugong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `hugong_name` varchar(200) DEFAULT NULL COMMENT '护工姓名 Search111 ',
  `hugong_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `hugong_phone` varchar(200) DEFAULT NULL COMMENT '护工手机号',
  `hugong_id_number` varchar(200) DEFAULT NULL COMMENT '护工身份证号 ',
  `hugong_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `hugong_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='护工';

/*Data for the table `hugong` */

insert  into `hugong`(`id`,`username`,`password`,`hugong_name`,`hugong_photo`,`hugong_phone`,`hugong_id_number`,`hugong_email`,`sex_types`,`hugong_delete`,`create_time`) values (1,'a1','123456','护工姓名1','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/hugong1.jpg','17703786901','410224199610232001','1@qq.com',2,1,'2022-02-28 20:22:45'),(2,'a2','123456','护工姓名2','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/hugong2.jpg','17703786902','410224199610232002','2@qq.com',2,1,'2022-02-28 20:22:45'),(3,'a3','123456','护工姓名3','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/hugong3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-28 20:22:45'),(4,'a4','123456','护工姓名4','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/hugong4.jpg','17703786904','410224199610232004','4@qq.com',1,2,'2022-02-28 20:22:45'),(5,'a5','123456','护工姓名5','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/hugong5.jpg','17703786905','410224199610232005','5@qq.com',1,2,'2022-02-28 20:22:45');

/*Table structure for table `laoren` */

DROP TABLE IF EXISTS `laoren`;

CREATE TABLE `laoren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_name` varchar(200) DEFAULT NULL COMMENT '老人名称 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `laoren_age` int(11) DEFAULT NULL COMMENT '老人年纪',
  `laoren_types` int(11) DEFAULT NULL COMMENT '老人身体状态 Search111',
  `jibing_types` int(11) DEFAULT NULL COMMENT '是否有疾病 Search111',
  `laoren_content` text COMMENT '老人信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='老人信息预约';

/*Data for the table `laoren` */

insert  into `laoren`(`id`,`laoren_name`,`sex_types`,`laoren_age`,`laoren_types`,`jibing_types`,`laoren_content`,`create_time`) values (1,'老人名称1',2,424,2,2,'老人信息详情1','2022-02-28 20:22:45'),(2,'老人名称2',1,158,2,2,'老人信息详情2','2022-02-28 20:22:45'),(3,'老人名称3',2,66,2,1,'<p>老人信息详情3</p>','2022-02-28 20:22:45'),(4,'老人名称4',1,102,2,1,'<p>老人信息详情4</p>','2022-02-28 20:22:45'),(5,'老人名称5',2,99,1,1,'<p>老人信息详情5</p>','2022-02-28 20:22:45');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,'留言标题1','留言内容1','回复信息1','2022-02-28 20:22:45','2022-02-28 20:22:45','2022-02-28 20:22:45'),(2,2,'留言标题2','留言内容2','回复信息2','2022-02-28 20:22:45','2022-02-28 20:22:45','2022-02-28 20:22:45'),(3,3,'留言标题3','留言内容3','回复信息3','2022-02-28 20:22:45','2022-02-28 20:22:45','2022-02-28 20:22:45'),(4,3,'留言标题4','留言内容4','回复信息4','2022-02-28 20:22:45','2022-02-28 20:22:45','2022-02-28 20:22:45'),(5,3,'留言标题5','留言内容5','回复信息5','2022-02-28 20:22:45','2022-02-28 20:22:45','2022-02-28 20:22:45');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/shehuizhihuiyanglaojianhu/upload/news1.jpg','2022-02-28 20:22:45','公告详情1','2022-02-28 20:22:45'),(2,'公告标题2',1,'http://localhost:8080/shehuizhihuiyanglaojianhu/upload/news2.jpg','2022-02-28 20:22:45','公告详情2','2022-02-28 20:22:45'),(3,'公告标题3',1,'http://localhost:8080/shehuizhihuiyanglaojianhu/upload/news3.jpg','2022-02-28 20:22:45','公告详情3','2022-02-28 20:22:45'),(4,'公告标题4',2,'http://localhost:8080/shehuizhihuiyanglaojianhu/upload/news4.jpg','2022-02-28 20:22:45','公告详情4','2022-02-28 20:22:45'),(5,'公告标题5',3,'http://localhost:8080/shehuizhihuiyanglaojianhu/upload/news5.jpg','2022-02-28 20:22:45','公告详情5','2022-02-28 20:22:45');

/*Table structure for table `tijianyuan` */

DROP TABLE IF EXISTS `tijianyuan`;

CREATE TABLE `tijianyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `tijianyuan_name` varchar(200) DEFAULT NULL COMMENT '体检员姓名 Search111 ',
  `tijianyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `tijianyuan_phone` varchar(200) DEFAULT NULL COMMENT '体检员手机号',
  `tijianyuan_id_number` varchar(200) DEFAULT NULL COMMENT '体检员身份证号 ',
  `tijianyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `tijianyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='体检员';

/*Data for the table `tijianyuan` */

insert  into `tijianyuan`(`id`,`username`,`password`,`tijianyuan_name`,`tijianyuan_photo`,`tijianyuan_phone`,`tijianyuan_id_number`,`tijianyuan_email`,`sex_types`,`tijianyuan_delete`,`create_time`) values (1,'a1','123456','体检员姓名1','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/tijianyuan1.jpg','17703786901','410224199610232001','1@qq.com',2,1,'2022-02-28 20:22:45'),(2,'a2','123456','体检员姓名2','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/tijianyuan2.jpg','17703786902','410224199610232002','2@qq.com',1,1,'2022-02-28 20:22:45'),(3,'a3','123456','体检员姓名3','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/tijianyuan3.jpg','17703786903','410224199610232003','3@qq.com',1,1,'2022-02-28 20:22:45'),(4,'a4','123456','体检员姓名4','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/tijianyuan4.jpg','17703786904','410224199610232004','4@qq.com',2,2,'2022-02-28 20:22:45'),(5,'a5','123456','体检员姓名5','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/tijianyuan5.jpg','17703786905','410224199610232005','5@qq.com',2,2,'2022-02-28 20:22:45');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','jcp4l5nuljxkwtbbb3asozabmgzyuicb','2022-02-28 20:46:07','2022-02-28 22:38:44'),(2,1,'a1','yonghu','用户','em86mbb1g3urdx9rfzqxix1b2qtsaz2r','2022-02-28 21:40:34','2022-02-28 22:40:34'),(3,1,'a1','tijianyuan','体检员','3ui7up75ie6u8aph7xsme1m4qnqhkgo7','2022-02-28 21:41:46','2022-02-28 22:41:47');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称 Search111',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_number` int(11) DEFAULT NULL COMMENT '数量',
  `wuzi_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '发票上传',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`yonghu_id`,`laoren_id`,`wuzi_name`,`wuzi_types`,`wuzi_number`,`wuzi_danwei`,`wuzi_photo`,`create_time`) values (1,1,1,'物资名称1',3,203,'单位1','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/wuzi1.jpg','2022-02-28 20:22:45'),(2,1,2,'物资名称2',2,381,'单位2','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/wuzi2.jpg','2022-02-28 20:22:45'),(3,3,3,'物资名称3',2,189,'单位3','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/wuzi3.jpg','2022-02-28 20:22:45'),(4,3,4,'物资名称4',1,189,'单位4','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/wuzi4.jpg','2022-02-28 20:22:45'),(5,1,5,'物资名称5',3,349,'单位5','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/wuzi5.jpg','2022-02-28 20:22:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/yonghu1.jpg','17703786901','410224199610232001','1@qq.com',1,1,'2022-02-28 20:22:45'),(2,'a2','123456','用户姓名2','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/yonghu2.jpg','17703786902','410224199610232002','2@qq.com',2,1,'2022-02-28 20:22:45'),(3,'a3','123456','用户姓名3','http://localhost:8080/shehuizhihuiyanglaojianhu/upload/yonghu3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-28 20:22:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
