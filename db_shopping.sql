/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_shopping` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_shopping`;

/*Table structure for table `tb_affiche` */

DROP TABLE IF EXISTS `tb_affiche`;

CREATE TABLE `tb_affiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `content` text,
  `issueTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `tb_affiche` */

insert  into `tb_affiche`(`id`,`name`,`content`,`issueTime`) values (9,'本商城自即日起退出优惠','本商城大部分商品优惠活动','2013-06-30 11:10:07'),(10,'城招代理商','因业务量不断的扩大，本商城招聘各地的代理商','2013-06-30 11:14:16'),(11,'春节到了','春节将近，本商城的所有员工祝所有顾客，节日快乐，谢谢','2013-06-30 11:14:16'),(12,'五一节快乐','五一节即将来临，本商城将给员工发放500员奖金','2013-06-30 11:14:16'),(13,'父亲节快乐','祝天下的父亲节日快乐','2013-06-30 11:14:16'),(14,'公告标题','公告内容','2013-06-30 11:14:16'),(15,'价格战已经打响','大部分商城的价格战已经开始了，我们的商城已经开始了','2013-06-30 11:14:16'),(16,'母亲节快乐','祝天下的母亲节日快乐','2013-06-30 11:14:16');

/*Table structure for table `tb_bigtype` */

DROP TABLE IF EXISTS `tb_bigtype`;

CREATE TABLE `tb_bigtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bigtype` */

insert  into `tb_bigtype`(`id`,`bigName`,`createTime`) values (1,'家用电器','2013-01-01 00:00:00'),(2,'衣帽服饰','2013-01-02 00:00:00'),(3,'计算机','2013-01-03 00:00:00'),(4,'交通工具','2013-01-04 00:00:00'),(5,'餐具','2013-01-05 00:00:00'),(6,'玩具类','2013-01-06 00:00:00'),(7,'古玩类','2013-01-07 00:00:00');

/*Table structure for table `tb_goods` */

DROP TABLE IF EXISTS `tb_goods`;

CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigId` int(11) DEFAULT NULL,
  `smallId` int(11) DEFAULT NULL,
  `goodsName` varchar(50) DEFAULT NULL,
  `goodsFrom` varchar(50) DEFAULT NULL,
  `introduce` text,
  `createTime` datetime DEFAULT NULL,
  `nowPrice` float DEFAULT NULL,
  `freePrice` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `pirture` varchar(50) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_goods` */

insert  into `tb_goods`(`id`,`bigId`,`smallId`,`goodsName`,`goodsFrom`,`introduce`,`createTime`,`nowPrice`,`freePrice`,`number`,`pirture`,`mark`) values (1,5,5,'中*咖啡杯','长春市*凯餐具公司','该咖啡杯本身具有咖啡的香味','2013-06-30 20:31:30',100,0,2,'goodsPicture/1195000722234.jpg',0),(2,4,6,'大*自行车','长春市*永自行车厂','该自行车适合与小学生使用','2013-06-30 20:41:43',500,0,0,'goodsPicture/1195000845828.jpg',0),(3,3,1,'三*液晶显示器','长春市三*','该液晶显示器的大小是17存','2013-06-30 20:41:43',1200,0,0,'goodsPicture/1195001047171.jpg',0),(4,3,1,'三*液晶显示器','长春市三*科技有限公司','该液晶显示器的大小是19存','2013-06-30 20:41:43',1500,0,1,'goodsPicture/1195001141953.jpg',0),(5,2,2,'鹏*休闲装','长春市鹏*服装厂','该休闲装适合秋冬季节','2013-06-30 20:41:43',100,0,1,'goodsPicture/1195001276796.jpg',0),(6,1,4,'钟*液晶电视','长春市三*电视机厂','该电视比较环保','2013-06-30 20:41:43',9000,0,2,'goodsPicture/1195001507156.jpg',0),(7,1,4,'钟*家庭影院','长春市钟*电视厂','该家庭影院效果比较好','2013-06-30 20:41:43',4000,0,3,'goodsPicture/1195001612265.jpg',0),(8,1,3,'冰*17岗洗衣机','长春市冰*','该洗衣机比较省电','2013-06-30 20:41:43',1000,0,5,'goodsPicture/1195001711750.jpg',0),(9,1,3,'冰*22岗洗衣机','长春市冰*洗衣机厂','该洗衣机比较适合洗衣店使用','2013-06-30 20:41:43',2000,1000,5,'goodsPicture/1195001840843.jpg',1);

/*Table structure for table `tb_link` */

DROP TABLE IF EXISTS `tb_link`;

CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(50) DEFAULT NULL,
  `linkAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_link` */

insert  into `tb_link`(`id`,`linkName`,`linkAddress`) values (1,'明*网站','http://www.mingm*.com'),(2,'钟*购物商城','http://www.zhongyi**.com'),(3,'大*购物商城','http://www.dayong**.com'),(4,'鹏*购物商城','http://www.pengbin***.com'),(5,'春*购物商城','http://www.chunhua***.com'),(6,'中*购物商城','http://www.chunhua***.com'),(7,'佼*购物商城','http://www.chunhua***.com');

/*Table structure for table `tb_manager` */

DROP TABLE IF EXISTS `tb_manager`;

CREATE TABLE `tb_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sign` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_manager` */

insert  into `tb_manager`(`id`,`account`,`password`,`name`,`sign`) values (1,'Tsoft','111','wolf',1),(2,'wy5wy','0','郭',0),(3,'wy6wy','6','杨',0);

/*Table structure for table `tb_member` */

DROP TABLE IF EXISTS `tb_member`;

CREATE TABLE `tb_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `reallyName` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_member` */

insert  into `tb_member`(`id`,`name`,`password`,`reallyName`,`age`,`profession`,`email`,`question`,`result`) values (1,'00','000000','00',1,'职员','m*@*t.com','你好','你好'),(2,'Tsoft','111','wolf',25,'网站程序员','w*@*3.com','我最喜欢干的事情是：','吃'),(3,'王八','123','王八蛋',1,'吃王八蛋','wbd@126.com','你是？','王八');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `reallyName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `setMoney` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `bz` text,
  `sign` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_order` */

insert  into `tb_order`(`id`,`number`,`name`,`reallyName`,`address`,`tel`,`setMoney`,`post`,`bz`,`sign`,`createTime`) values (1,'1196074670468','00','00','长春市人民大街','121****','现金支付','特快专递','急需',1,'2013-04-01 00:00:00'),(2,'1372600781205','王八','王八蛋','21','21','邮政付款','普通邮寄','2121',0,'2013-06-30 21:59:48');

/*Table structure for table `tb_orderdetail` */

DROP TABLE IF EXISTS `tb_orderdetail`;

CREATE TABLE `tb_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(50) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_orderdetail` */

insert  into `tb_orderdetail`(`id`,`orderNumber`,`goodsId`,`price`,`number`) values (1,'1196074670468',1,100,2),(2,'1196074670468',4,1500,1),(3,'1372597801689',8,1000,2),(4,'1372597801689',7,4000,1),(5,'1372597912451',8,1000,1),(6,'1372598157982',9,1000,1),(7,'1372598875715',9,1000,1),(8,'1372600684049',9,1000,1),(9,'1372600781205',9,1000,1);

/*Table structure for table `tb_smalltype` */

DROP TABLE IF EXISTS `tb_smalltype`;

CREATE TABLE `tb_smalltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigId` int(11) DEFAULT NULL,
  `smallName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_smalltype` */

insert  into `tb_smalltype`(`id`,`bigId`,`smallName`,`createTime`) values (1,3,'显示器','2013-01-01 00:00:00'),(2,2,'衣服','2013-01-02 00:00:00'),(3,1,'洗衣机','2013-01-03 00:00:00'),(4,1,'电视机','2013-01-04 00:00:00'),(5,5,'杯子','2013-01-05 00:00:00'),(6,4,'自行车','2013-01-06 00:00:00'),(7,6,'电动类','2013-01-07 00:00:00'),(8,7,'唐代','2013-01-08 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
