-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmjan7f
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bowenleixing`
--

DROP TABLE IF EXISTS `bowenleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bowenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bowenleixing` varchar(200) NOT NULL COMMENT '博文类型',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615859887978 DEFAULT CHARSET=utf8 COMMENT='博文类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bowenleixing`
--

LOCK TABLES `bowenleixing` WRITE;
/*!40000 ALTER TABLE `bowenleixing` DISABLE KEYS */;
INSERT INTO `bowenleixing` VALUES (11,'2021-03-16 01:51:25','博文类型1','标题1','内容1','2021-03-16 09:51:25','http://localhost:8080/jspmjan7f/upload/bowenleixing_tupian1.jpg',1,1),(12,'2021-03-16 01:51:25','博文类型2','标题2','内容2','2021-03-16 09:51:25','http://localhost:8080/jspmjan7f/upload/bowenleixing_tupian2.jpg',3,2),(13,'2021-03-16 01:51:25','博文类型3','标题3','内容3','2021-03-16 09:51:25','http://localhost:8080/jspmjan7f/upload/bowenleixing_tupian3.jpg',3,3),(14,'2021-03-16 01:51:25','博文类型4','标题4','内容4','2021-03-16 09:51:25','http://localhost:8080/jspmjan7f/upload/bowenleixing_tupian4.jpg',4,4),(16,'2021-03-16 01:51:25','博文类型6','标题6','内容6','2021-03-16 09:51:25','http://localhost:8080/jspmjan7f/upload/bowenleixing_tupian6.jpg',6,6),(1615859674440,'2021-03-16 01:54:34','大家','发发','<p>请输入内<img src=\"../../..//upload/1615859670350.png\" alt=\"\" width=\"1889\" height=\"836\" />容</p>','2021-03-03 00:00:00','http://localhost:8080/jspmjan7f/upload/1615859655622.png',2,4),(1615859887977,'2021-03-16 01:58:07','博文类型5','标题01','地方的\r\n','2021-03-18 14:46:47','http://localhost:8080/jspmjan7f/upload/1615859873988.png',0,0);
/*!40000 ALTER TABLE `bowenleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-03-16 01:51:25',1,1,'‍提问1\r\n','回复12\r\n',0),(42,'2021-03-16 01:51:25',2,2,'提问2','回复2',2),(43,'2021-03-16 01:51:25',3,3,'提问3','回复3',3),(44,'2021-03-16 01:51:25',4,4,'提问4','回复4',4),(45,'2021-03-16 01:51:25',5,5,'提问5','回复5',5),(46,'2021-03-16 01:51:25',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmjan7f/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmjan7f/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmjan7f/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (61,'2021-03-16 01:51:25','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/jspmjan7f/upload/defaultuser_picture1.jpg','773890001@qq.com'),(62,'2021-03-16 01:51:25','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/jspmjan7f/upload/defaultuser_picture2.jpg','773890002@qq.com'),(63,'2021-03-16 01:51:25','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/jspmjan7f/upload/defaultuser_picture3.jpg','773890003@qq.com'),(64,'2021-03-16 01:51:25','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/jspmjan7f/upload/defaultuser_picture4.jpg','773890004@qq.com'),(65,'2021-03-16 01:51:25','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/jspmjan7f/upload/defaultuser_picture5.jpg','773890005@qq.com'),(66,'2021-03-16 01:51:25','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/jspmjan7f/upload/defaultuser_picture6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussbowenleixing`
--

DROP TABLE IF EXISTS `discussbowenleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussbowenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='博文类型评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussbowenleixing`
--

LOCK TABLES `discussbowenleixing` WRITE;
/*!40000 ALTER TABLE `discussbowenleixing` DISABLE KEYS */;
INSERT INTO `discussbowenleixing` VALUES (101,'2021-03-16 01:51:25',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-16 01:51:25',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-16 01:51:25',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-16 01:51:25',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-16 01:51:25',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-16 01:51:25',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussbowenleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxueshengboke`
--

DROP TABLE IF EXISTS `discussxueshengboke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxueshengboke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='学生博客评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxueshengboke`
--

LOCK TABLES `discussxueshengboke` WRITE;
/*!40000 ALTER TABLE `discussxueshengboke` DISABLE KEYS */;
INSERT INTO `discussxueshengboke` VALUES (111,'2021-03-16 01:51:25',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-16 01:51:25',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-16 01:51:25',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-16 01:51:25',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-16 01:51:25',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-16 01:51:25',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxueshengboke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615859731434 DEFAULT CHARSET=utf8 COMMENT='论坛信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (51,'2021-03-16 01:51:25','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(52,'2021-03-16 01:51:25','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-03-16 01:51:25','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-03-16 01:51:25','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-03-16 01:51:25','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-03-16 01:51:25','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615859714465,'2021-03-16 01:55:14','的地方都','<p>请输入内答复容</p>',0,31,'学生1','开放'),(1615859731433,'2021-03-16 01:55:31',NULL,'请输入评论大法师',1615859714465,31,'学生1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615859746805 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-03-16 01:51:25',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-16 01:51:25',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-16 01:51:25',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-16 01:51:25',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-16 01:51:25',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-16 01:51:25',6,'用户名6','留言内容6','回复内容6'),(1615859746804,'2021-03-16 01:55:46',31,'学生1','你好','hello');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-16 01:51:25','标题1','简介1','http://localhost:8080/jspmjan7f/upload/news_picture1.jpg','内容1'),(82,'2021-03-16 01:51:25','标题2','简介2','http://localhost:8080/jspmjan7f/upload/news_picture2.jpg','内容2'),(83,'2021-03-16 01:51:25','标题3','简介3','http://localhost:8080/jspmjan7f/upload/news_picture3.jpg','内容3'),(84,'2021-03-16 01:51:25','标题4','简介4','http://localhost:8080/jspmjan7f/upload/news_picture4.jpg','内容4'),(85,'2021-03-16 01:51:25','标题5','简介5','http://localhost:8080/jspmjan7f/upload/news_picture5.jpg','内容5'),(86,'2021-03-16 01:51:25','标题6','简介6','http://localhost:8080/jspmjan7f/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615859623718 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615859623717,'2021-03-16 01:53:43',31,12,'bowenleixing','博文类型2','http://localhost:8080/jspmjan7f/upload/bowenleixing_tupian2.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'学生1','xuesheng','学生','sdnrcalo92tzymjbnkpzbugb877a0ael','2021-03-16 01:52:02','2021-03-16 02:52:03'),(2,1,'abo','users','管理员','woymao20a20ffxqynacc3sajpyvcm8nr','2021-03-16 01:56:28','2021-03-16 02:56:29');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-16 01:51:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2021-03-16 01:51:25','学生1','123456','姓名1','男',1,'学院1','专业1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspmjan7f/upload/xuesheng_zhaopian1.jpg'),(32,'2021-03-16 01:51:25','学生2','123456','姓名2','男',2,'学院2','专业2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspmjan7f/upload/xuesheng_zhaopian2.jpg'),(33,'2021-03-16 01:51:25','学生3','123456','姓名3','男',3,'学院3','专业3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspmjan7f/upload/xuesheng_zhaopian3.jpg'),(34,'2021-03-16 01:51:25','学生4','123456','姓名4','男',4,'学院4','专业4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/jspmjan7f/upload/xuesheng_zhaopian4.jpg'),(35,'2021-03-16 01:51:25','学生5','123456','姓名5','男',5,'学院5','专业5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/jspmjan7f/upload/xuesheng_zhaopian5.jpg'),(36,'2021-03-16 01:51:25','学生6','123456','姓名6','男',6,'学院6','专业6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/jspmjan7f/upload/xuesheng_zhaopian6.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengboke`
--

DROP TABLE IF EXISTS `xueshengboke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengboke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `jianshu` varchar(200) DEFAULT NULL COMMENT '简述',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生博客';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengboke`
--

LOCK TABLES `xueshengboke` WRITE;
/*!40000 ALTER TABLE `xueshengboke` DISABLE KEYS */;
INSERT INTO `xueshengboke` VALUES (21,'2021-03-16 01:51:25','文章标题1','分类1','http://localhost:8080/jspmjan7f/upload/xueshengboke_fengmiantupian1.jpg','简述1','文章内容1','2021-03-16 09:51:25','学号1','姓名1','',1,1),(22,'2021-03-16 01:51:25','文章标题2','分类2','http://localhost:8080/jspmjan7f/upload/xueshengboke_fengmiantupian2.jpg','简述2','文章内容2','2021-03-16 09:51:25','学号2','姓名2','',2,2),(23,'2021-03-16 01:51:25','文章标题3','分类3','http://localhost:8080/jspmjan7f/upload/xueshengboke_fengmiantupian3.jpg','简述3','文章内容3','2021-03-16 09:51:25','学号3','姓名3','',3,3),(24,'2021-03-16 01:51:25','文章标题4','分类4','http://localhost:8080/jspmjan7f/upload/xueshengboke_fengmiantupian4.jpg','简述4','文章内容4','2021-03-16 09:51:25','学号4','姓名4','',5,4),(25,'2021-03-16 01:51:25','文章标题5','分类5','http://localhost:8080/jspmjan7f/upload/xueshengboke_fengmiantupian5.jpg','简述5','文章内容5','2021-03-16 09:51:25','学号5','姓名5','',5,5),(26,'2021-03-16 01:51:25','文章标题6','分类6','http://localhost:8080/jspmjan7f/upload/xueshengboke_fengmiantupian6.jpg','简述6','文章内容6','2021-03-16 09:51:25','学号6','姓名6','',6,6);
/*!40000 ALTER TABLE `xueshengboke` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 11:06:55
