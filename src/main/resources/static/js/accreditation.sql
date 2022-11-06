/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 8.0.29 : Database - accreditation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`accreditation` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `accreditation`;

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(50) DEFAULT NULL,
  `section_name` varchar(50) DEFAULT NULL,
  `project_owner` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `client_unit` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `compile_institution` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `review_sort` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `inventory_norm` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `quota_system` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `approval_time` date DEFAULT NULL,
  `project_condition` varchar(1000) DEFAULT NULL,
  `project_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `approval_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `client_username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `institution_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `industry_sort` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `price_gist` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `approval_price` float DEFAULT NULL,
  `technical_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `user_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `client_number` int DEFAULT NULL,
  `compile_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `invest_price` float DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `state` int DEFAULT '0',
  `user_username` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `suggestion` varchar(1000) DEFAULT NULL,
  `date` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`user_id`,`username`),
  KEY `user` (`user_id`,`user_username`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`, `user_username`) REFERENCES `user` (`id`, `username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

/*Data for the table `project` */

insert  into `project`(`id`,`project_name`,`section_name`,`project_owner`,`client_unit`,`compile_institution`,`review_sort`,`inventory_norm`,`quota_system`,`approval_time`,`project_condition`,`project_address`,`approval_number`,`username`,`client_username`,`institution_number`,`industry_sort`,`price_gist`,`approval_price`,`technical_number`,`user_number`,`client_number`,`compile_name`,`invest_price`,`submit_time`,`state`,`user_username`,`user_id`,`suggestion`,`date`) values (1,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付',NULL,'都江堰市天马镇圣寿社区村民委员会',NULL,'深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢',NULL,'91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061','13568818730',NULL,'卓航如',649997,'2022-11-01 00:00:00',-1,'10086',1,'地方睡大床',NULL),(19,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','','都江堰市天马镇圣寿社区村民委员会','','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-03 00:00:00',-1,'10086',1,'废墟废墟',NULL),(20,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','','都江堰市天马镇圣寿社区村民委员会','','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-03 00:00:00',-1,'10086',1,'风格的徐','马福钢3-210I0152637.jpg*马福钢360wallpaper_dt.jpg*马福钢52568267200287094871636039297020.jpg'),(21,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','42','都江堰市天马镇圣寿社区村民委员会','','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',1,'10086',1,'现代风格的','马福钢IMG_20211007_123123.jpg'),(22,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','fbgf','都江堰市天马镇圣寿社区村民委员会','dgnffx','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',-1,'10086',1,'侠盗高飞','马福钢IMG_20211105_123034.jpg*马福钢IMG_20211105_123131.jpg*马福钢IMG_20211105_123216.jpg*马福钢IMG_20211105_123218.jpg'),(23,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','fbgf','都江堰市天马镇圣寿社区村民委员会','gn','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',1,'10086',1,'等荣誉','马福钢IMG_20211105_123515.jpg*马福钢IMG_20211105_123607.jpg*马福钢IMG_20211105_123630.jpg'),(24,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','fbgf','都江堰市天马镇圣寿社区村民委员会','gn','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',1,'10086',1,'豆腐乳官方的','马福钢IMG_20211108_121727.jpg*马福钢IMG_20211108_121810.jpg*马福钢IMG_20211108_122230.jpg'),(25,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','42','都江堰市天马镇圣寿社区村民委员会','','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',0,'10086',1,NULL,'马福钢IMG_20211105_125105.jpg'),(26,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','42','都江堰市天马镇圣寿社区村民委员会','复古红','深圳市腾达工程顾问有限公司','招标控制价个黄金分割好几年','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','发个互粉好','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',0,'10086',1,NULL,'马福钢1.jpg*马福钢1a544645e04fd349d8134625426417.jpg*马福钢2.jpg*马福钢3.jpg*马福钢5aa21ee482645.jpg*马福钢9621ce7e132397751726e05093e27ce760521ad1fe5d57d71.JPG*马福钢a3a1b4c2daf91936ee76755aa99d0bb7.mp4*马福钢b4e6228e534851f00b1854fcf89fa9e7.jpg*马福钢bef5c7245170a0f341074384b9cdc662.mp4'),(27,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','42','都江堰市天马镇圣寿社区村民委员会','','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福钢','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-05 00:00:00',1,'10086',1,'cvb','马福钢7265d7f4ad058912034082371e21c055-12bce32d9579259e06555b4794617e8429f697d6.zip'),(29,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','42','都江堰市天马镇圣寿社区村民委员会','大风刮大风刮','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','马福','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-06 16:22:40',0,'10086',1,NULL,'马福OIP-C (2).jpg*马福OIP-C (3).jfif'),(32,'都江堰市天马镇圣寿社区2022年四川财政乡村振兴转移支付','42','都江堰市天马镇圣寿社区村民委员会','大风刮大风刮','深圳市腾达工程顾问有限公司','招标控制价','清单计价规范(GB50500-2013)','四川建设工程计价定额2020','2022-07-11','该项目主要建设内容为: 1.环境提升整治:在蒲阳河圣寿社区3组改造宽2米游步道约285米，节点周边安放分类垃圾桶20个，新建河边护栏约420米，安装铁皮集装箱2套(共约50平方米) ,增设休闲设施8套; 2.乡 村旅游设施配套:在圣寿社区3组安装休闲廊亭2处，增设标识标牌10个，改造厕所1座，改造生态停车位50个，3.在圣寿社区3组公共区域环境改造及露营地打造约600平方米。','都江堰市天马镇圣寿社区3组','都发改审批[2022] 48号','刮大','','91440300596782153H','房屋建筑与市政工程','都江堰市2022年第06期信息价及现行市场价格计算',650000,'都技评南2022061',NULL,0,'卓航如',649997,'2022-11-06 16:30:09',0,'10086',1,NULL,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL DEFAULT 'user',
  `name` varchar(10) NOT NULL,
  `email` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`position`,`name`,`email`) values (1,'10086','123','user','马福钢',NULL),(2,'10000','123456','admin','管理员',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
