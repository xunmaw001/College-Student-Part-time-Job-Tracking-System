DROP DATABASE IF EXISTS ssmf1203;

CREATE DATABASE ssmf1203 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmf1203;

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangjiazhanghao` varchar(200) NOT NULL UNIQUE   COMMENT '商家账号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`shangjiamingcheng` varchar(200) NOT NULL   COMMENT '商家名称',
	`jingyingfanwei` varchar(200)    COMMENT '经营范围',
	`shangjiaguimo` varchar(200)    COMMENT '商家规模',
	`farendaibiao` varchar(200)    COMMENT '法人代表',
	`lianxifangshi` varchar(200)    COMMENT '联系方式',
	`shangjiadizhi` varchar(200)    COMMENT '商家地址',
	`yingyezhizhao` varchar(200)    COMMENT '营业执照',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家';

INSERT INTO shangjia(shangjiazhanghao,mima,shangjiamingcheng,jingyingfanwei,shangjiaguimo,farendaibiao,lianxifangshi,shangjiadizhi,yingyezhizhao) VALUES('商家1','123456','商家名称1','经营范围1','小型企业','法人代表1','13823888881','商家地址1','http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao1.jpg');
INSERT INTO shangjia(shangjiazhanghao,mima,shangjiamingcheng,jingyingfanwei,shangjiaguimo,farendaibiao,lianxifangshi,shangjiadizhi,yingyezhizhao) VALUES('商家2','123456','商家名称2','经营范围2','小型企业','法人代表2','13823888882','商家地址2','http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao2.jpg');
INSERT INTO shangjia(shangjiazhanghao,mima,shangjiamingcheng,jingyingfanwei,shangjiaguimo,farendaibiao,lianxifangshi,shangjiadizhi,yingyezhizhao) VALUES('商家3','123456','商家名称3','经营范围3','小型企业','法人代表3','13823888883','商家地址3','http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao3.jpg');
INSERT INTO shangjia(shangjiazhanghao,mima,shangjiamingcheng,jingyingfanwei,shangjiaguimo,farendaibiao,lianxifangshi,shangjiadizhi,yingyezhizhao) VALUES('商家4','123456','商家名称4','经营范围4','小型企业','法人代表4','13823888884','商家地址4','http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao4.jpg');
INSERT INTO shangjia(shangjiazhanghao,mima,shangjiamingcheng,jingyingfanwei,shangjiaguimo,farendaibiao,lianxifangshi,shangjiadizhi,yingyezhizhao) VALUES('商家5','123456','商家名称5','经营范围5','小型企业','法人代表5','13823888885','商家地址5','http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao5.jpg');
INSERT INTO shangjia(shangjiazhanghao,mima,shangjiamingcheng,jingyingfanwei,shangjiaguimo,farendaibiao,lianxifangshi,shangjiadizhi,yingyezhizhao) VALUES('商家6','123456','商家名称6','经营范围6','小型企业','法人代表6','13823888886','商家地址6','http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao6.jpg');

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` int    COMMENT '年龄',
	`xueyuan` varchar(200)    COMMENT '学院',
	`zhuanye` varchar(200)    COMMENT '专业',
	`dianhua` varchar(200)    COMMENT '电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`zhaopian` varchar(200)    COMMENT '照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,nianling,xueyuan,zhuanye,dianhua,youxiang,shenfenzheng,zhaopian) VALUES('学生1','123456','姓名1','男',1,'学院1','专业1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian1.jpg');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,nianling,xueyuan,zhuanye,dianhua,youxiang,shenfenzheng,zhaopian) VALUES('学生2','123456','姓名2','男',2,'学院2','专业2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian2.jpg');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,nianling,xueyuan,zhuanye,dianhua,youxiang,shenfenzheng,zhaopian) VALUES('学生3','123456','姓名3','男',3,'学院3','专业3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian3.jpg');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,nianling,xueyuan,zhuanye,dianhua,youxiang,shenfenzheng,zhaopian) VALUES('学生4','123456','姓名4','男',4,'学院4','专业4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian4.jpg');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,nianling,xueyuan,zhuanye,dianhua,youxiang,shenfenzheng,zhaopian) VALUES('学生5','123456','姓名5','男',5,'学院5','专业5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian5.jpg');
INSERT INTO xuesheng(xuehao,mima,xingming,xingbie,nianling,xueyuan,zhuanye,dianhua,youxiang,shenfenzheng,zhaopian) VALUES('学生6','123456','姓名6','男',6,'学院6','专业6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian6.jpg');

DROP TABLE IF EXISTS `jianzhizhaopin`;

CREATE TABLE `jianzhizhaopin` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangjiazhanghao` varchar(200)    COMMENT '商家账号',
	`shangjiamingcheng` varchar(200)    COMMENT '商家名称',
	`zhaopinbiaoti` varchar(200)    COMMENT '招聘标题',
	`jianzhigangwei` varchar(200)    COMMENT '兼职岗位',
	`zhaopinrenshu` int    COMMENT '招聘人数',
	`gangweixinchou` varchar(200)    COMMENT '岗位薪酬',
	`gongzuotianshu` varchar(200)    COMMENT '工作天数',
	`gongzuoshizhang` varchar(200)    COMMENT '工作时长',
	`shangjiaguimo` varchar(200)    COMMENT '商家规模',
	`lianxifangshi` varchar(200)    COMMENT '联系方式',
	`shangjiadizhi` varchar(200)    COMMENT '商家地址',
	`zhaopinfengmian` varchar(200)    COMMENT '招聘封面',
	`faburiqi` date    COMMENT '发布日期',
	`zhaopinxiangqing` longtext    COMMENT '招聘详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兼职招聘';

INSERT INTO jianzhizhaopin(shangjiazhanghao,shangjiamingcheng,zhaopinbiaoti,jianzhigangwei,zhaopinrenshu,gangweixinchou,gongzuotianshu,gongzuoshizhang,shangjiaguimo,lianxifangshi,shangjiadizhi,zhaopinfengmian,faburiqi,zhaopinxiangqing) VALUES('商家账号1','商家名称1','招聘标题1','文员',1,'岗位薪酬1','工作天数1','两小时','商家规模1','联系方式1','商家地址1','http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian1.jpg',CURRENT_TIMESTAMP,'招聘详情1');
INSERT INTO jianzhizhaopin(shangjiazhanghao,shangjiamingcheng,zhaopinbiaoti,jianzhigangwei,zhaopinrenshu,gangweixinchou,gongzuotianshu,gongzuoshizhang,shangjiaguimo,lianxifangshi,shangjiadizhi,zhaopinfengmian,faburiqi,zhaopinxiangqing) VALUES('商家账号2','商家名称2','招聘标题2','文员',2,'岗位薪酬2','工作天数2','两小时','商家规模2','联系方式2','商家地址2','http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian2.jpg',CURRENT_TIMESTAMP,'招聘详情2');
INSERT INTO jianzhizhaopin(shangjiazhanghao,shangjiamingcheng,zhaopinbiaoti,jianzhigangwei,zhaopinrenshu,gangweixinchou,gongzuotianshu,gongzuoshizhang,shangjiaguimo,lianxifangshi,shangjiadizhi,zhaopinfengmian,faburiqi,zhaopinxiangqing) VALUES('商家账号3','商家名称3','招聘标题3','文员',3,'岗位薪酬3','工作天数3','两小时','商家规模3','联系方式3','商家地址3','http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian3.jpg',CURRENT_TIMESTAMP,'招聘详情3');
INSERT INTO jianzhizhaopin(shangjiazhanghao,shangjiamingcheng,zhaopinbiaoti,jianzhigangwei,zhaopinrenshu,gangweixinchou,gongzuotianshu,gongzuoshizhang,shangjiaguimo,lianxifangshi,shangjiadizhi,zhaopinfengmian,faburiqi,zhaopinxiangqing) VALUES('商家账号4','商家名称4','招聘标题4','文员',4,'岗位薪酬4','工作天数4','两小时','商家规模4','联系方式4','商家地址4','http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian4.jpg',CURRENT_TIMESTAMP,'招聘详情4');
INSERT INTO jianzhizhaopin(shangjiazhanghao,shangjiamingcheng,zhaopinbiaoti,jianzhigangwei,zhaopinrenshu,gangweixinchou,gongzuotianshu,gongzuoshizhang,shangjiaguimo,lianxifangshi,shangjiadizhi,zhaopinfengmian,faburiqi,zhaopinxiangqing) VALUES('商家账号5','商家名称5','招聘标题5','文员',5,'岗位薪酬5','工作天数5','两小时','商家规模5','联系方式5','商家地址5','http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian5.jpg',CURRENT_TIMESTAMP,'招聘详情5');
INSERT INTO jianzhizhaopin(shangjiazhanghao,shangjiamingcheng,zhaopinbiaoti,jianzhigangwei,zhaopinrenshu,gangweixinchou,gongzuotianshu,gongzuoshizhang,shangjiaguimo,lianxifangshi,shangjiadizhi,zhaopinfengmian,faburiqi,zhaopinxiangqing) VALUES('商家账号6','商家名称6','招聘标题6','文员',6,'岗位薪酬6','工作天数6','两小时','商家规模6','联系方式6','商家地址6','http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian6.jpg',CURRENT_TIMESTAMP,'招聘详情6');

DROP TABLE IF EXISTS `jianzhiyingpin`;

CREATE TABLE `jianzhiyingpin` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangjiazhanghao` varchar(200)    COMMENT '商家账号',
	`shangjiamingcheng` varchar(200)    COMMENT '商家名称',
	`jianzhigangwei` varchar(200)    COMMENT '兼职岗位',
	`gangweixinchou` varchar(200)    COMMENT '岗位薪酬',
	`gongzuotianshu` varchar(200)    COMMENT '工作天数',
	`gongzuoshizhang` varchar(200)    COMMENT '工作时长',
	`xuehao` varchar(200)    COMMENT '学号',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` varchar(200)    COMMENT '年龄',
	`zhuanye` varchar(200)    COMMENT '专业',
	`dianhua` varchar(200)    COMMENT '电话',
	`yingpinshijian` datetime    COMMENT '应聘时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兼职应聘';

INSERT INTO jianzhiyingpin(shangjiazhanghao,shangjiamingcheng,jianzhigangwei,gangweixinchou,gongzuotianshu,gongzuoshizhang,xuehao,xingming,xingbie,nianling,zhuanye,dianhua,yingpinshijian,sfsh,shhf) VALUES('商家账号1','商家名称1','兼职岗位1','岗位薪酬1','工作天数1','工作时长1','学号1','姓名1','性别1','年龄1','专业1','电话1',CURRENT_TIMESTAMP,'否','');
INSERT INTO jianzhiyingpin(shangjiazhanghao,shangjiamingcheng,jianzhigangwei,gangweixinchou,gongzuotianshu,gongzuoshizhang,xuehao,xingming,xingbie,nianling,zhuanye,dianhua,yingpinshijian,sfsh,shhf) VALUES('商家账号2','商家名称2','兼职岗位2','岗位薪酬2','工作天数2','工作时长2','学号2','姓名2','性别2','年龄2','专业2','电话2',CURRENT_TIMESTAMP,'否','');
INSERT INTO jianzhiyingpin(shangjiazhanghao,shangjiamingcheng,jianzhigangwei,gangweixinchou,gongzuotianshu,gongzuoshizhang,xuehao,xingming,xingbie,nianling,zhuanye,dianhua,yingpinshijian,sfsh,shhf) VALUES('商家账号3','商家名称3','兼职岗位3','岗位薪酬3','工作天数3','工作时长3','学号3','姓名3','性别3','年龄3','专业3','电话3',CURRENT_TIMESTAMP,'否','');
INSERT INTO jianzhiyingpin(shangjiazhanghao,shangjiamingcheng,jianzhigangwei,gangweixinchou,gongzuotianshu,gongzuoshizhang,xuehao,xingming,xingbie,nianling,zhuanye,dianhua,yingpinshijian,sfsh,shhf) VALUES('商家账号4','商家名称4','兼职岗位4','岗位薪酬4','工作天数4','工作时长4','学号4','姓名4','性别4','年龄4','专业4','电话4',CURRENT_TIMESTAMP,'否','');
INSERT INTO jianzhiyingpin(shangjiazhanghao,shangjiamingcheng,jianzhigangwei,gangweixinchou,gongzuotianshu,gongzuoshizhang,xuehao,xingming,xingbie,nianling,zhuanye,dianhua,yingpinshijian,sfsh,shhf) VALUES('商家账号5','商家名称5','兼职岗位5','岗位薪酬5','工作天数5','工作时长5','学号5','姓名5','性别5','年龄5','专业5','电话5',CURRENT_TIMESTAMP,'否','');
INSERT INTO jianzhiyingpin(shangjiazhanghao,shangjiamingcheng,jianzhigangwei,gangweixinchou,gongzuotianshu,gongzuoshizhang,xuehao,xingming,xingbie,nianling,zhuanye,dianhua,yingpinshijian,sfsh,shhf) VALUES('商家账号6','商家名称6','兼职岗位6','岗位薪酬6','工作天数6','工作时长6','学号6','姓名6','性别6','年龄6','专业6','电话6',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `shangjiatousu`;

CREATE TABLE `shangjiatousu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200)    COMMENT '学号',
	`xingming` varchar(200)    COMMENT '姓名',
	`dianhua` varchar(200)    COMMENT '电话',
	`shangjiazhanghao` varchar(200)    COMMENT '商家账号',
	`shangjiamingcheng` varchar(200)    COMMENT '商家名称',
	`tousuleixing` varchar(200)    COMMENT '投诉类型',
	`tousushijian` datetime    COMMENT '投诉时间',
	`tousushuoming` longtext    COMMENT '投诉说明',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家投诉';

INSERT INTO shangjiatousu(xuehao,xingming,dianhua,shangjiazhanghao,shangjiamingcheng,tousuleixing,tousushijian,tousushuoming,sfsh,shhf) VALUES('学号1','姓名1','电话1','商家账号1','商家名称1','虚假商家信息',CURRENT_TIMESTAMP,'投诉说明1','否','');
INSERT INTO shangjiatousu(xuehao,xingming,dianhua,shangjiazhanghao,shangjiamingcheng,tousuleixing,tousushijian,tousushuoming,sfsh,shhf) VALUES('学号2','姓名2','电话2','商家账号2','商家名称2','虚假商家信息',CURRENT_TIMESTAMP,'投诉说明2','否','');
INSERT INTO shangjiatousu(xuehao,xingming,dianhua,shangjiazhanghao,shangjiamingcheng,tousuleixing,tousushijian,tousushuoming,sfsh,shhf) VALUES('学号3','姓名3','电话3','商家账号3','商家名称3','虚假商家信息',CURRENT_TIMESTAMP,'投诉说明3','否','');
INSERT INTO shangjiatousu(xuehao,xingming,dianhua,shangjiazhanghao,shangjiamingcheng,tousuleixing,tousushijian,tousushuoming,sfsh,shhf) VALUES('学号4','姓名4','电话4','商家账号4','商家名称4','虚假商家信息',CURRENT_TIMESTAMP,'投诉说明4','否','');
INSERT INTO shangjiatousu(xuehao,xingming,dianhua,shangjiazhanghao,shangjiamingcheng,tousuleixing,tousushijian,tousushuoming,sfsh,shhf) VALUES('学号5','姓名5','电话5','商家账号5','商家名称5','虚假商家信息',CURRENT_TIMESTAMP,'投诉说明5','否','');
INSERT INTO shangjiatousu(xuehao,xingming,dianhua,shangjiazhanghao,shangjiamingcheng,tousuleixing,tousushijian,tousushuoming,sfsh,shhf) VALUES('学号6','姓名6','电话6','商家账号6','商家名称6','虚假商家信息',CURRENT_TIMESTAMP,'投诉说明6','否','');

DROP TABLE IF EXISTS `tousuchuli`;

CREATE TABLE `tousuchuli` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangjiazhanghao` varchar(200)    COMMENT '商家账号',
	`shangjiamingcheng` varchar(200)    COMMENT '商家名称',
	`tousuleixing` varchar(200)    COMMENT '投诉类型',
	`chufajieguo` varchar(200)    COMMENT '处罚结果',
	`fakuanjine` int    COMMENT '罚款金额',
	`chulishijian` datetime    COMMENT '处理时间',
	`xiangqingshuoming` longtext    COMMENT '详情说明',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉处理';

INSERT INTO tousuchuli(shangjiazhanghao,shangjiamingcheng,tousuleixing,chufajieguo,fakuanjine,chulishijian,xiangqingshuoming,ispay) VALUES('商家账号1','商家名称1','投诉类型1','警告',1,CURRENT_TIMESTAMP,'详情说明1','未支付');
INSERT INTO tousuchuli(shangjiazhanghao,shangjiamingcheng,tousuleixing,chufajieguo,fakuanjine,chulishijian,xiangqingshuoming,ispay) VALUES('商家账号2','商家名称2','投诉类型2','警告',2,CURRENT_TIMESTAMP,'详情说明2','未支付');
INSERT INTO tousuchuli(shangjiazhanghao,shangjiamingcheng,tousuleixing,chufajieguo,fakuanjine,chulishijian,xiangqingshuoming,ispay) VALUES('商家账号3','商家名称3','投诉类型3','警告',3,CURRENT_TIMESTAMP,'详情说明3','未支付');
INSERT INTO tousuchuli(shangjiazhanghao,shangjiamingcheng,tousuleixing,chufajieguo,fakuanjine,chulishijian,xiangqingshuoming,ispay) VALUES('商家账号4','商家名称4','投诉类型4','警告',4,CURRENT_TIMESTAMP,'详情说明4','未支付');
INSERT INTO tousuchuli(shangjiazhanghao,shangjiamingcheng,tousuleixing,chufajieguo,fakuanjine,chulishijian,xiangqingshuoming,ispay) VALUES('商家账号5','商家名称5','投诉类型5','警告',5,CURRENT_TIMESTAMP,'详情说明5','未支付');
INSERT INTO tousuchuli(shangjiazhanghao,shangjiamingcheng,tousuleixing,chufajieguo,fakuanjine,chulishijian,xiangqingshuoming,ispay) VALUES('商家账号6','商家名称6','投诉类型6','警告',6,CURRENT_TIMESTAMP,'详情说明6','未支付');

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题3','帖子内容3',3,3,'用户名3','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题4','帖子内容4',4,4,'用户名4','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题5','帖子内容5',5,5,'用户名5','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题6','帖子内容6',6,6,'用户名6','开放');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/ssmf1203/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/ssmf1203/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/ssmf1203/upload/news_picture3.jpg','内容3');
INSERT INTO news(title,picture,content) VALUES('标题4','http://localhost:8080/ssmf1203/upload/news_picture4.jpg','内容4');
INSERT INTO news(title,picture,content) VALUES('标题5','http://localhost:8080/ssmf1203/upload/news_picture5.jpg','内容5');
INSERT INTO news(title,picture,content) VALUES('标题6','http://localhost:8080/ssmf1203/upload/news_picture6.jpg','内容6');

DROP TABLE IF EXISTS `discussjianzhizhaopin`;

CREATE TABLE `discussjianzhizhaopin` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兼职招聘评论表';

INSERT INTO discussjianzhizhaopin(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussjianzhizhaopin(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussjianzhizhaopin(refid,content,userid) VALUES(3,'评论内容3',3);
INSERT INTO discussjianzhizhaopin(refid,content,userid) VALUES(4,'评论内容4',4);
INSERT INTO discussjianzhizhaopin(refid,content,userid) VALUES(5,'评论内容5',5);
INSERT INTO discussjianzhizhaopin(refid,content,userid) VALUES(6,'评论内容6',6);


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmf1203/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmf1203/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmf1203/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssmf1203/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssmf1203/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

