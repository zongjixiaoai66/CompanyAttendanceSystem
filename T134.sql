/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t134`;
CREATE DATABASE IF NOT EXISTS `t134` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t134`;

DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE IF NOT EXISTS `bumenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumenmingcheng` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `bumenjieshao` longtext COMMENT '部门介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumenbianhao` (`bumenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621500054448 DEFAULT CHARSET=utf8mb3 COMMENT='部门信息';

DELETE FROM `bumenxinxi`;
INSERT INTO `bumenxinxi` (`id`, `addtime`, `bumenbianhao`, `bumenmingcheng`, `bumenjieshao`) VALUES
	(31, '2021-05-20 08:37:20', '部门编号1', '部门名称1', '部门介绍1'),
	(32, '2021-05-20 08:37:20', '部门编号2', '部门名称2', '部门介绍2'),
	(33, '2021-05-20 08:37:20', '部门编号3', '部门名称3', '部门介绍3'),
	(34, '2021-05-20 08:37:20', '部门编号4', '部门名称4', '部门介绍4'),
	(35, '2021-05-20 08:37:20', '部门编号5', '部门名称5', '部门介绍5'),
	(36, '2021-05-20 08:37:20', '部门编号6', '部门名称6', '部门介绍6'),
	(1621500054447, '2021-05-20 08:40:54', '1621499926219', '个地方g', '<p>地方给对方给对方给对方答复地方电饭锅地方</p><p><img src="http://localhost:8080/springbootqi5ww/upload/1621500053596.png"></p>');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootqi5ww/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootqi5ww/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootqi5ww/upload/picture3.jpg');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `nianling` int NOT NULL COMMENT '年龄',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221420317 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `jiaoshizhanghao`, `mima`, `jiaoshixingming`, `nianling`, `zhicheng`, `xingbie`, `shouji`, `zhaopian`) VALUES
	(21, '2021-05-17 03:04:11', '教师1', '123456', '教师姓名1', 1, '职称1', '男', '13823888881', 'http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian1.jpg'),
	(22, '2021-05-17 03:04:11', '教师2', '123456', '教师姓名2', 2, '职称2', '男', '13823888882', 'http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian2.jpg'),
	(23, '2021-05-17 03:04:11', '教师3', '123456', '教师姓名3', 3, '职称3', '男', '13823888883', 'http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian3.jpg'),
	(24, '2021-05-17 03:04:11', '教师4', '123456', '教师姓名4', 4, '职称4', '男', '13823888884', 'http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian4.jpg'),
	(25, '2021-05-17 03:04:11', '教师5', '123456', '教师姓名5', 5, '职称5', '男', '13823888885', 'http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian5.jpg'),
	(26, '2021-05-17 03:04:11', '教师6', '123456', '教师姓名6', 6, '职称6', '男', '13823888886', 'http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian6.jpg'),
	(1621221420316, '2021-05-17 03:17:00', '22', '22', '发给', 22, '的想法', '男', '11122233333', 'http://localhost:8080/springbootawwm9/upload/1621221452007.jpg');

DROP TABLE IF EXISTS `kaoqinjidian`;
CREATE TABLE IF NOT EXISTS `kaoqinjidian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jidianbianhao` varchar(200) DEFAULT NULL COMMENT '基点编号',
  `jidianmingcheng` varchar(200) DEFAULT NULL COMMENT '基点名称',
  `jidiandizhi` varchar(200) DEFAULT NULL COMMENT '基点地址',
  `shijiandian` varchar(200) DEFAULT NULL COMMENT '时间点',
  `jidianxiangqing` longtext COMMENT '基点详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jidianbianhao` (`jidianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621500067729 DEFAULT CHARSET=utf8mb3 COMMENT='考勤基点';

DELETE FROM `kaoqinjidian`;
INSERT INTO `kaoqinjidian` (`id`, `addtime`, `jidianbianhao`, `jidianmingcheng`, `jidiandizhi`, `shijiandian`, `jidianxiangqing`, `clicktime`, `clicknum`) VALUES
	(41, '2021-05-20 08:37:20', '基点编号1', '基点名称1', '基点地址1', '时间点1', '基点详情1', '2024-04-18 20:57:36', 3),
	(42, '2021-05-20 08:37:20', '基点编号2', '基点名称2', '基点地址2', '时间点2', '基点详情2', '2021-05-20 16:37:20', 2),
	(43, '2021-05-20 08:37:20', '基点编号3', '基点名称3', '基点地址3', '时间点3', '基点详情3', '2021-05-20 16:37:20', 3),
	(44, '2021-05-20 08:37:20', '基点编号4', '基点名称4', '基点地址4', '时间点4', '基点详情4', '2021-05-20 16:37:20', 4),
	(45, '2021-05-20 08:37:20', '基点编号5', '基点名称5', '基点地址5', '时间点5', '基点详情5', '2021-05-20 16:37:20', 5),
	(46, '2021-05-20 08:37:20', '基点编号6', '基点名称6', '基点地址6', '时间点6', '基点详情6', '2021-05-20 16:37:20', 6),
	(1621500067728, '2021-05-20 08:41:06', '1621499939779', '电饭锅地方', '电饭锅地方', '电饭锅地方地方dfg', '<p> 梵蒂冈梵蒂冈个的非官方的 梵蒂冈梵蒂冈个的非官方的 梵蒂冈梵蒂冈个的非官方的 梵蒂冈梵蒂冈个的非官方的 梵蒂冈梵蒂冈个的非官方的</p>', '2021-05-20 16:42:25', 2);

DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE IF NOT EXISTS `kechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `kechengxuefen` float DEFAULT NULL COMMENT '课程学分',
  `kechengneirong` longtext COMMENT '课程内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221628578 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

DELETE FROM `kechengxinxi`;
INSERT INTO `kechengxinxi` (`id`, `addtime`, `kechengmingcheng`, `kechengfenlei`, `kaikeshijian`, `jieshushijian`, `kechengxuefen`, `kechengneirong`, `fengmian`, `jiaoshizhanghao`, `jiaoshixingming`, `clicktime`, `clicknum`) VALUES
	(41, '2021-05-17 03:04:11', '课程名称1', '课程分类1', '2021-05-17 11:04:11', '2021-05-17 11:04:11', 1, '课程内容1', 'http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian1.jpg', '教师账号1', '教师姓名1', '2021-05-17 11:04:11', 1),
	(42, '2021-05-17 03:04:11', '课程名称2', '课程分类2', '2021-05-17 11:04:11', '2021-05-17 11:04:11', 2, '课程内容2', 'http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian2.jpg', '教师账号2', '教师姓名2', '2021-05-17 11:04:11', 2),
	(43, '2021-05-17 03:04:11', '课程名称3', '课程分类3', '2021-05-17 11:04:11', '2021-05-17 11:04:11', 3, '课程内容3', 'http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian3.jpg', '教师账号3', '教师姓名3', '2021-05-17 11:04:11', 3),
	(44, '2021-05-17 03:04:11', '课程名称4', '课程分类4', '2021-05-17 11:04:11', '2021-05-17 11:04:11', 4, '课程内容4', 'http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian4.jpg', '教师账号4', '教师姓名4', '2021-05-17 11:04:11', 4),
	(45, '2021-05-17 03:04:11', '课程名称5', '课程分类5', '2021-05-17 11:04:11', '2021-05-17 11:04:11', 5, '课程内容5', 'http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian5.jpg', '教师账号5', '教师姓名5', '2021-05-17 11:04:11', 5),
	(46, '2021-05-17 03:04:11', '课程名称6', '课程分类6', '2021-05-17 11:04:11', '2021-05-17 11:04:11', 6, '课程内容6', 'http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian6.jpg', '教师账号6', '教师姓名6', '2021-05-17 11:04:11', 6),
	(1621221628577, '2021-05-17 03:20:28', '第三方收到fs', '士大夫都是', '2021-05-17 11:17:51', '2021-05-17 13:17:51', 5, '<p>电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的</p><p><br></p><p><img src="http://localhost:8080/springbootawwm9/upload/1621221626441.png"></p><p><br></p>', 'http://localhost:8080/springbootawwm9/upload/1621221599450.jpg', '22', '发给', '2021-05-17 11:22:33', 4);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1621499964943, '11', 'yuangong', '员工', '6l4af7vz8vru94yl23e9llh4jcwtmjkp', '2021-05-20 08:39:28', '2021-05-20 09:43:14'),
	(2, 1, 'abo', 'users', '管理员', 'hvlwuva8cyg59hab1clxg8g0z6od0ahr', '2021-05-20 08:40:11', '2024-04-18 13:57:14'),
	(3, 21, '员工1', 'yuangong', '员工', '3fo6fl6o4ouep3s7snj4j0vkpgltf0b7', '2024-04-18 12:57:59', '2024-04-18 13:57:59');

DROP TABLE IF EXISTS `tongzhigonggao`;
CREATE TABLE IF NOT EXISTS `tongzhigonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621500033294 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告';

DELETE FROM `tongzhigonggao`;
INSERT INTO `tongzhigonggao` (`id`, `addtime`, `biaoti`, `jianjie`, `neirong`, `fabushijian`, `fengmian`) VALUES
	(11, '2021-05-20 08:37:20', '标题1', '简介1', '内容1', '2021-05-20', 'http://localhost:8080/springbootqi5ww/upload/tongzhigonggao_fengmian1.jpg'),
	(12, '2021-05-20 08:37:20', '标题2', '简介2', '内容2', '2021-05-20', 'http://localhost:8080/springbootqi5ww/upload/tongzhigonggao_fengmian2.jpg'),
	(13, '2021-05-20 08:37:20', '标题3', '简介3', '内容3', '2021-05-20', 'http://localhost:8080/springbootqi5ww/upload/tongzhigonggao_fengmian3.jpg'),
	(14, '2021-05-20 08:37:20', '标题4', '简介4', '内容4', '2021-05-20', 'http://localhost:8080/springbootqi5ww/upload/tongzhigonggao_fengmian4.jpg'),
	(15, '2021-05-20 08:37:20', '标题5', '简介5', '内容5', '2021-05-20', 'http://localhost:8080/springbootqi5ww/upload/tongzhigonggao_fengmian5.jpg'),
	(16, '2021-05-20 08:37:20', '标题6', '简介6', '内容6', '2021-05-20', 'http://localhost:8080/springbootqi5ww/upload/tongzhigonggao_fengmian6.jpg'),
	(1621500033293, '2021-05-20 08:40:33', '士大夫都是发多少', ' 发过的个梵蒂冈过过过过过过过过过过过过过过过过滚滚滚灌灌灌灌灌过过过过过过过过', '<p>&nbsp;发过的个梵蒂冈过过过过过过过过过过过过过过过过滚滚滚灌灌灌灌灌过过过过过过过过&nbsp;发过的个梵蒂冈过过过过过过过过过过过过过过过过滚滚滚灌灌灌灌灌过过过过过过过过&nbsp;发过的个梵蒂冈过过过过过过过过过过过过过过过过滚滚滚灌灌灌灌灌过过过过过过过过</p><p><img src="http://localhost:8080/springbootqi5ww/upload/1621500031575.png"></p>', '2021-05-06', 'http://localhost:8080/springbootqi5ww/upload/1621500024117.jpg');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-20 08:37:20');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int NOT NULL COMMENT '年龄',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221505747 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `nianling`, `zhuanye`, `xingbie`, `shouji`, `zhaopian`) VALUES
	(11, '2021-05-17 03:04:11', '学生1', '123456', '姓名1', 1, '化学专业', '男', '13823888881', 'http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian1.jpg'),
	(12, '2021-05-17 03:04:11', '学生2', '123456', '姓名2', 2, '专业2', '男', '13823888882', 'http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian2.jpg'),
	(13, '2021-05-17 03:04:11', '学生3', '123456', '姓名3', 3, '专业3', '男', '13823888883', 'http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian3.jpg'),
	(14, '2021-05-17 03:04:11', '学生4', '123456', '姓名4', 4, '专业4', '男', '13823888884', 'http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian4.jpg'),
	(15, '2021-05-17 03:04:11', '学生5', '123456', '姓名5', 5, '专业5', '男', '13823888885', 'http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian5.jpg'),
	(16, '2021-05-17 03:04:11', '学生6', '123456', '姓名6', 6, '专业6', '男', '13823888886', 'http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian6.jpg'),
	(1621221410042, '2021-05-17 03:16:50', '11', '11', '惹的事', 11, '专业名称3', '男', '11122211111', 'http://localhost:8080/springbootawwm9/upload/1621221437324.jpg'),
	(1621221505746, '2021-05-17 03:18:25', '3333', '3333', '电饭锅发给', 33, '专业名称1', '女', '11122233322', 'http://localhost:8080/springbootawwm9/upload/1621221497897.png');

DROP TABLE IF EXISTS `xueshengchengji`;
CREATE TABLE IF NOT EXISTS `xueshengchengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chengji` int DEFAULT NULL COMMENT '成绩',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `pingyu` longtext COMMENT '评语',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221717172 DEFAULT CHARSET=utf8mb3 COMMENT='学生成绩';

DELETE FROM `xueshengchengji`;
INSERT INTO `xueshengchengji` (`id`, `addtime`, `kechengmingcheng`, `xuehao`, `xingming`, `chengji`, `shifouhege`, `pingyu`, `jiaoshizhanghao`, `jiaoshixingming`) VALUES
	(61, '2021-05-17 03:04:11', '课程名称1', '学号1', '姓名1', 1, '是', '评语1', '教师账号1', '教师姓名1'),
	(62, '2021-05-17 03:04:11', '课程名称2', '学号2', '姓名2', 2, '是', '评语2', '教师账号2', '教师姓名2'),
	(63, '2021-05-17 03:04:11', '课程名称3', '学号3', '姓名3', 3, '是', '评语3', '教师账号3', '教师姓名3'),
	(64, '2021-05-17 03:04:11', '课程名称4', '学号4', '姓名4', 4, '是', '评语4', '教师账号4', '教师姓名4'),
	(65, '2021-05-17 03:04:11', '课程名称5', '学号5', '姓名5', 5, '是', '评语5', '教师账号5', '教师姓名5'),
	(66, '2021-05-17 03:04:11', '课程名称6', '学号6', '姓名6', 6, '是', '评语6', '教师账号6', '教师姓名6'),
	(1621221717171, '2021-05-17 03:21:56', '第三方收到fs', '11', '惹的事', 55, '是', '发给房东刚发的给对方给对方发给房东刚发的给对方给对方发给房东刚发的给对方给对方发给房东刚发的给对方给对方发给房东刚发的给对方给对方', '22', '发给');

DROP TABLE IF EXISTS `xueshengxuanke`;
CREATE TABLE IF NOT EXISTS `xueshengxuanke` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `shifouxuanze` varchar(200) DEFAULT NULL COMMENT '是否选择',
  `xuanzeshijian` datetime DEFAULT NULL COMMENT '选择时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221675739 DEFAULT CHARSET=utf8mb3 COMMENT='学生选课';

DELETE FROM `xueshengxuanke`;
INSERT INTO `xueshengxuanke` (`id`, `addtime`, `kechengmingcheng`, `shifouxuanze`, `xuanzeshijian`, `jiaoshizhanghao`, `jiaoshixingming`, `xuehao`, `xingming`, `sfsh`, `shhf`) VALUES
	(51, '2021-05-17 03:04:11', '课程名称1', '是', '2021-05-17 11:04:11', '教师账号1', '教师姓名1', '学号1', '姓名1', '是', ''),
	(52, '2021-05-17 03:04:11', '课程名称2', '是', '2021-05-17 11:04:11', '教师账号2', '教师姓名2', '学号2', '姓名2', '是', ''),
	(53, '2021-05-17 03:04:11', '课程名称3', '是', '2021-05-17 11:04:11', '教师账号3', '教师姓名3', '学号3', '姓名3', '是', ''),
	(54, '2021-05-17 03:04:11', '课程名称4', '是', '2021-05-17 11:04:11', '教师账号4', '教师姓名4', '学号4', '姓名4', '是', ''),
	(55, '2021-05-17 03:04:11', '课程名称5', '是', '2021-05-17 11:04:11', '教师账号5', '教师姓名5', '学号5', '姓名5', '是', ''),
	(56, '2021-05-17 03:04:11', '课程名称6', '是', '2021-05-17 11:04:11', '教师账号6', '教师姓名6', '学号6', '姓名6', '是', ''),
	(1621221675738, '2021-05-17 03:21:15', '第三方收到fs', '是', '2021-05-17 11:19:15', '22', '发给', '11', '惹的事', '是', '同意');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gerenzhiwei` varchar(200) DEFAULT NULL COMMENT '个人职位',
  `zaizhiqingkuang` varchar(200) DEFAULT NULL COMMENT '在职情况',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621499964944 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangonggonghao`, `mima`, `yuangongxingming`, `xingbie`, `nianling`, `lianxidianhua`, `youxiang`, `bumen`, `gerenzhiwei`, `zaizhiqingkuang`, `tupian`, `jiatingzhuzhi`) VALUES
	(21, '2021-05-20 08:37:20', '员工1', '123456', '员工姓名1', '男', '年龄1', '13823888881', '773890001@qq.com', '部门1', '个人职位1', '在职', 'http://localhost:8080/springbootqi5ww/upload/yuangong_tupian1.jpg', '家庭住址1'),
	(22, '2021-05-20 08:37:20', '员工2', '123456', '员工姓名2', '男', '年龄2', '13823888882', '773890002@qq.com', '部门2', '个人职位2', '在职', 'http://localhost:8080/springbootqi5ww/upload/yuangong_tupian2.jpg', '家庭住址2'),
	(23, '2021-05-20 08:37:20', '员工3', '123456', '员工姓名3', '男', '年龄3', '13823888883', '773890003@qq.com', '部门3', '个人职位3', '在职', 'http://localhost:8080/springbootqi5ww/upload/yuangong_tupian3.jpg', '家庭住址3'),
	(24, '2021-05-20 08:37:20', '员工4', '123456', '员工姓名4', '男', '年龄4', '13823888884', '773890004@qq.com', '部门4', '个人职位4', '在职', 'http://localhost:8080/springbootqi5ww/upload/yuangong_tupian4.jpg', '家庭住址4'),
	(25, '2021-05-20 08:37:20', '员工5', '123456', '员工姓名5', '男', '年龄5', '13823888885', '773890005@qq.com', '部门5', '个人职位5', '在职', 'http://localhost:8080/springbootqi5ww/upload/yuangong_tupian5.jpg', '家庭住址5'),
	(26, '2021-05-20 08:37:20', '员工6', '123456', '员工姓名6', '男', '年龄6', '13823888886', '773890006@qq.com', '部门6', '个人职位6', '在职', 'http://localhost:8080/springbootqi5ww/upload/yuangong_tupian6.jpg', '家庭住址6'),
	(1621499964943, '2021-05-20 08:39:24', '11', '11', '士大夫', '男', '11', '11122211112', '11@qq.com', '部门名称4', '电风扇', '在职', 'http://localhost:8080/springbootqi5ww/upload/1621499980654.jpg', '第三方收到士大夫收到发送到');

DROP TABLE IF EXISTS `yuangonggongzi`;
CREATE TABLE IF NOT EXISTS `yuangonggongzi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `jibengongzi` int DEFAULT NULL COMMENT '基本工资',
  `jiabangongzi` int DEFAULT NULL COMMENT '加班工资',
  `qingjiakouchu` int DEFAULT NULL COMMENT '请假扣除',
  `chidaozaotuikouchu` int DEFAULT NULL COMMENT '迟到早退扣除',
  `kuanggongkouchu` int DEFAULT NULL COMMENT '旷工扣除',
  `koukuanyuanyin` longtext COMMENT '扣款原因',
  `shifagongzi` int DEFAULT NULL COMMENT '实发工资',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621500123936 DEFAULT CHARSET=utf8mb3 COMMENT='员工工资';

DELETE FROM `yuangonggongzi`;
INSERT INTO `yuangonggongzi` (`id`, `addtime`, `yuefen`, `yuangonggonghao`, `yuangongxingming`, `bumen`, `jibengongzi`, `jiabangongzi`, `qingjiakouchu`, `chidaozaotuikouchu`, `kuanggongkouchu`, `koukuanyuanyin`, `shifagongzi`, `dengjiriqi`) VALUES
	(71, '2021-05-20 08:37:20', '月份1', '员工工号1', '员工姓名1', '部门1', 1, 1, 1, 1, 1, '扣款原因1', 1, '2021-05-20'),
	(72, '2021-05-20 08:37:20', '月份2', '员工工号2', '员工姓名2', '部门2', 2, 2, 2, 2, 2, '扣款原因2', 2, '2021-05-20'),
	(73, '2021-05-20 08:37:20', '月份3', '员工工号3', '员工姓名3', '部门3', 3, 3, 3, 3, 3, '扣款原因3', 3, '2021-05-20'),
	(74, '2021-05-20 08:37:20', '月份4', '员工工号4', '员工姓名4', '部门4', 4, 4, 4, 4, 4, '扣款原因4', 4, '2021-05-20'),
	(75, '2021-05-20 08:37:20', '月份5', '员工工号5', '员工姓名5', '部门5', 5, 5, 5, 5, 5, '扣款原因5', 5, '2021-05-20'),
	(76, '2021-05-20 08:37:20', '月份6', '员工工号6', '员工姓名6', '部门6', 6, 6, 6, 6, 6, '扣款原因6', 6, '2021-05-20'),
	(1621500123935, '2021-05-20 08:42:03', '8月份', '11', '士大夫', '部门名称4', 1111, 2211, 11, 2222, 221, '发给个地方给对方给对方鬼地方个房东给对方给对方给对方', 868, '2021-05-20');

DROP TABLE IF EXISTS `yuangongkaoqin`;
CREATE TABLE IF NOT EXISTS `yuangongkaoqin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `kaoqinjidian` varchar(200) DEFAULT NULL COMMENT '考勤基点',
  `kaoqinshijian` datetime DEFAULT NULL COMMENT '考勤时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621500160351 DEFAULT CHARSET=utf8mb3 COMMENT='员工考勤';

DELETE FROM `yuangongkaoqin`;
INSERT INTO `yuangongkaoqin` (`id`, `addtime`, `yuangonggonghao`, `yuangongxingming`, `bumen`, `leixing`, `kaoqinjidian`, `kaoqinshijian`) VALUES
	(61, '2021-05-20 08:37:20', '员工工号1', '员工姓名1', '部门1', '签到', '考勤基点1', '2021-05-20 16:37:20'),
	(62, '2021-05-20 08:37:20', '员工工号2', '员工姓名2', '部门2', '签到', '考勤基点2', '2021-05-20 16:37:20'),
	(63, '2021-05-20 08:37:20', '员工工号3', '员工姓名3', '部门3', '签到', '考勤基点3', '2021-05-20 16:37:20'),
	(64, '2021-05-20 08:37:20', '员工工号4', '员工姓名4', '部门4', '签到', '考勤基点4', '2021-05-20 16:37:20'),
	(65, '2021-05-20 08:37:20', '员工工号5', '员工姓名5', '部门5', '签到', '考勤基点5', '2021-05-20 16:37:20'),
	(66, '2021-05-20 08:37:20', '员工工号6', '员工姓名6', '部门6', '签到', '考勤基点6', '2021-05-20 16:37:20'),
	(1621500005973, '2021-05-20 08:40:05', '11', '士大夫', '部门名称4', '签到', '基点名称3', '2021-05-20 16:38:02'),
	(1621500160350, '2021-05-20 08:42:40', '11', '士大夫', '部门名称4', '签退', '电饭锅地方', '2021-05-20 16:40:34');

DROP TABLE IF EXISTS `yuangongqingjia`;
CREATE TABLE IF NOT EXISTS `yuangongqingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `qingjiayuanyin` longtext COMMENT '请假原因',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621499998279 DEFAULT CHARSET=utf8mb3 COMMENT='员工请假';

DELETE FROM `yuangongqingjia`;
INSERT INTO `yuangongqingjia` (`id`, `addtime`, `yuangonggonghao`, `yuangongxingming`, `bumen`, `qingjiashijian`, `qingjiatianshu`, `qingjiayuanyin`, `beizhu`, `sfsh`, `shhf`) VALUES
	(51, '2021-05-20 08:37:20', '员工工号1', '员工姓名1', '部门1', '2021-05-20 16:37:20', '请假天数1', '请假原因1', '备注1', '是', ''),
	(52, '2021-05-20 08:37:20', '员工工号2', '员工姓名2', '部门2', '2021-05-20 16:37:20', '请假天数2', '请假原因2', '备注2', '是', ''),
	(53, '2021-05-20 08:37:20', '员工工号3', '员工姓名3', '部门3', '2021-05-20 16:37:20', '请假天数3', '请假原因3', '备注3', '是', ''),
	(54, '2021-05-20 08:37:20', '员工工号4', '员工姓名4', '部门4', '2021-05-20 16:37:20', '请假天数4', '请假原因4', '备注4', '是', ''),
	(55, '2021-05-20 08:37:20', '员工工号5', '员工姓名5', '部门5', '2021-05-20 16:37:20', '请假天数5', '请假原因5', '备注5', '是', ''),
	(56, '2021-05-20 08:37:20', '员工工号6', '员工姓名6', '部门6', '2021-05-20 16:37:20', '请假天数6', '请假原因6', '备注6', '是', ''),
	(1621499998278, '2021-05-20 08:39:58', '11', '士大夫', '部门名称4', '2021-05-20 16:37:53', '33', '第三方都是第三方都是发多少', '发过的都是些', '是', '收到股份收到给对方给对方');

DROP TABLE IF EXISTS `zhuanyexinxi`;
CREATE TABLE IF NOT EXISTS `zhuanyexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221573658 DEFAULT CHARSET=utf8mb3 COMMENT='专业信息';

DELETE FROM `zhuanyexinxi`;
INSERT INTO `zhuanyexinxi` (`id`, `addtime`, `zhuanyemingcheng`) VALUES
	(31, '2021-05-17 03:04:11', '专业名称1'),
	(32, '2021-05-17 03:04:11', '专业名称2'),
	(33, '2021-05-17 03:04:11', '专业名称3'),
	(34, '2021-05-17 03:04:11', '专业名称4'),
	(35, '2021-05-17 03:04:11', '专业名称5'),
	(36, '2021-05-17 03:04:11', '专业名称6'),
	(1621221573657, '2021-05-17 03:19:33', '化学专业');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
