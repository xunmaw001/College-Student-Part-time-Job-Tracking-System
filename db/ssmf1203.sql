/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : ssmf1203

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 02/12/2020 15:41:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/ssmf1203/upload/1606894282264.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/ssmf1203/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/ssmf1203/upload/picture3.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/ssmf1203/upload/picture4.jpg');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/ssmf1203/upload/picture5.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for discussjianzhizhaopin
-- ----------------------------
DROP TABLE IF EXISTS `discussjianzhizhaopin`;
CREATE TABLE `discussjianzhizhaopin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894393147 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兼职招聘评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjianzhizhaopin
-- ----------------------------
INSERT INTO `discussjianzhizhaopin` VALUES (1, '2020-12-02 15:15:41', 1, '评论内容1', 1);
INSERT INTO `discussjianzhizhaopin` VALUES (2, '2020-12-02 15:15:41', 2, '评论内容2', 2);
INSERT INTO `discussjianzhizhaopin` VALUES (3, '2020-12-02 15:15:41', 3, '评论内容3', 3);
INSERT INTO `discussjianzhizhaopin` VALUES (4, '2020-12-02 15:15:41', 4, '评论内容4', 4);
INSERT INTO `discussjianzhizhaopin` VALUES (5, '2020-12-02 15:15:41', 5, '评论内容5', 5);
INSERT INTO `discussjianzhizhaopin` VALUES (6, '2020-12-02 15:15:41', 6, '评论内容6', 6);
INSERT INTO `discussjianzhizhaopin` VALUES (1606894393146, '2020-12-02 15:33:12', 1606894225950, '测试', 1606894361878);

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894467330 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1, '2020-12-02 15:15:41', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放');
INSERT INTO `forum` VALUES (2, '2020-12-02 15:15:41', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放');
INSERT INTO `forum` VALUES (3, '2020-12-02 15:15:41', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放');
INSERT INTO `forum` VALUES (4, '2020-12-02 15:15:41', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放');
INSERT INTO `forum` VALUES (5, '2020-12-02 15:15:41', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放');
INSERT INTO `forum` VALUES (1606894450943, '2020-12-02 15:34:10', '发布交流帖子', '<p>发布交流帖子发布交流帖子发布交流帖子发布交流帖子</p>', 0, 1606894361878, '001', '开放');
INSERT INTO `forum` VALUES (1606894467329, '2020-12-02 15:34:27', NULL, '回帖/跟帖', 1606894450943, 1606894361878, '001', NULL);

-- ----------------------------
-- Table structure for jianzhiyingpin
-- ----------------------------
DROP TABLE IF EXISTS `jianzhiyingpin`;
CREATE TABLE `jianzhiyingpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `jianzhigangwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '兼职岗位',
  `gangweixinchou` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位薪酬',
  `gongzuotianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作天数',
  `gongzuoshizhang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作时长',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `zhuanye` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `yingpinshijian` datetime(0) NULL DEFAULT NULL COMMENT '应聘时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894428516 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兼职应聘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianzhiyingpin
-- ----------------------------
INSERT INTO `jianzhiyingpin` VALUES (1, '2020-12-02 15:15:41', '商家账号1', '商家名称1', '兼职岗位1', '岗位薪酬1', '工作天数1', '工作时长1', '学号1', '姓名1', '性别1', '年龄1', '专业1', '电话1', '2020-12-02 15:15:41', '否', '');
INSERT INTO `jianzhiyingpin` VALUES (2, '2020-12-02 15:15:41', '商家账号2', '商家名称2', '兼职岗位2', '岗位薪酬2', '工作天数2', '工作时长2', '学号2', '姓名2', '性别2', '年龄2', '专业2', '电话2', '2020-12-02 15:15:41', '否', '');
INSERT INTO `jianzhiyingpin` VALUES (3, '2020-12-02 15:15:41', '商家账号3', '商家名称3', '兼职岗位3', '岗位薪酬3', '工作天数3', '工作时长3', '学号3', '姓名3', '性别3', '年龄3', '专业3', '电话3', '2020-12-02 15:15:41', '否', '');
INSERT INTO `jianzhiyingpin` VALUES (4, '2020-12-02 15:15:41', '商家账号4', '商家名称4', '兼职岗位4', '岗位薪酬4', '工作天数4', '工作时长4', '学号4', '姓名4', '性别4', '年龄4', '专业4', '电话4', '2020-12-02 15:15:41', '否', '');
INSERT INTO `jianzhiyingpin` VALUES (5, '2020-12-02 15:15:41', '商家账号5', '商家名称5', '兼职岗位5', '岗位薪酬5', '工作天数5', '工作时长5', '学号5', '姓名5', '性别5', '年龄5', '专业5', '电话5', '2020-12-02 15:15:41', '否', '');
INSERT INTO `jianzhiyingpin` VALUES (6, '2020-12-02 15:15:41', '商家账号6', '商家名称6', '兼职岗位6', '岗位薪酬6', '工作天数6', '工作时长6', '学号6', '姓名6', '性别6', '年龄6', '专业6', '电话6', '2020-12-02 15:15:41', '否', '');
INSERT INTO `jianzhiyingpin` VALUES (1606894428515, '2020-12-02 15:33:48', '001', '星娱互娱有限公司', '销售', '2000', '5', '六小时', '001', '张三', '男', '19', '计算机', '13800000000', '2020-12-02 15:33:47', '是', '欢迎');

-- ----------------------------
-- Table structure for jianzhizhaopin
-- ----------------------------
DROP TABLE IF EXISTS `jianzhizhaopin`;
CREATE TABLE `jianzhizhaopin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `zhaopinbiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘标题',
  `jianzhigangwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '兼职岗位',
  `zhaopinrenshu` int(11) NULL DEFAULT NULL COMMENT '招聘人数',
  `gangweixinchou` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位薪酬',
  `gongzuotianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作天数',
  `gongzuoshizhang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作时长',
  `shangjiaguimo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家规模',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `shangjiadizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家地址',
  `zhaopinfengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘封面',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  `zhaopinxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招聘详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894225951 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兼职招聘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianzhizhaopin
-- ----------------------------
INSERT INTO `jianzhizhaopin` VALUES (1, '2020-12-02 15:15:41', '商家账号1', '商家名称1', '招聘标题1', '文员', 1, '岗位薪酬1', '工作天数1', '两小时', '商家规模1', '联系方式1', '商家地址1', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian1.jpg', '2020-12-02', '招聘详情1');
INSERT INTO `jianzhizhaopin` VALUES (2, '2020-12-02 15:15:41', '商家账号2', '商家名称2', '招聘标题2', '文员', 2, '岗位薪酬2', '工作天数2', '两小时', '商家规模2', '联系方式2', '商家地址2', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian2.jpg', '2020-12-02', '招聘详情2');
INSERT INTO `jianzhizhaopin` VALUES (3, '2020-12-02 15:15:41', '商家账号3', '商家名称3', '招聘标题3', '文员', 3, '岗位薪酬3', '工作天数3', '两小时', '商家规模3', '联系方式3', '商家地址3', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian3.jpg', '2020-12-02', '招聘详情3');
INSERT INTO `jianzhizhaopin` VALUES (4, '2020-12-02 15:15:41', '商家账号4', '商家名称4', '招聘标题4', '文员', 4, '岗位薪酬4', '工作天数4', '两小时', '商家规模4', '联系方式4', '商家地址4', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian4.jpg', '2020-12-02', '招聘详情4');
INSERT INTO `jianzhizhaopin` VALUES (5, '2020-12-02 15:15:41', '商家账号5', '商家名称5', '招聘标题5', '文员', 5, '岗位薪酬5', '工作天数5', '两小时', '商家规模5', '联系方式5', '商家地址5', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian5.jpg', '2020-12-02', '招聘详情5');
INSERT INTO `jianzhizhaopin` VALUES (6, '2020-12-02 15:15:41', '商家账号6', '商家名称6', '招聘标题6', '文员', 6, '岗位薪酬6', '工作天数6', '两小时', '商家规模6', '联系方式6', '商家地址6', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian6.jpg', '2020-12-02', '招聘详情6');
INSERT INTO `jianzhizhaopin` VALUES (1606894225950, '2020-12-02 15:30:25', '001', '星娱互娱有限公司', '招聘销售精英两名', '销售', 2, '2000', '5', '六小时', '中型企业', '13800000000', 'xx省xx市xx县', 'http://localhost:8080/ssmf1203/upload/1606894207061.jpg', '2020-12-02', '<p>编辑器可上传图片/文字<img src=\"http://localhost:8080/ssmf1203/upload/1606894224134.jpg\"></p>');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894318447 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '2020-12-02 15:15:41', '标题1', 'http://localhost:8080/ssmf1203/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES (2, '2020-12-02 15:15:41', '标题2', 'http://localhost:8080/ssmf1203/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES (3, '2020-12-02 15:15:41', '标题3', 'http://localhost:8080/ssmf1203/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES (4, '2020-12-02 15:15:41', '标题4', 'http://localhost:8080/ssmf1203/upload/news_picture4.jpg', '内容4');
INSERT INTO `news` VALUES (5, '2020-12-02 15:15:41', '标题5', 'http://localhost:8080/ssmf1203/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES (6, '2020-12-02 15:15:41', '标题6', 'http://localhost:8080/ssmf1203/upload/news_picture6.jpg', '内容6');
INSERT INTO `news` VALUES (1606894318446, '2020-12-02 15:31:57', '2020/12/2系统公告', 'http://localhost:8080/ssmf1203/upload/1606894309178.jpg', '<p>近日，市教育局致信全市师生及家长，就秋冬季做好个人防护和校园疫情防控工作提出倡议。</p><p><br></p><p>信中称，进入秋冬季以来，国外新冠肺炎疫情加速蔓延，近期国内一些省（市、自治区）陆续报告本土确诊病例，新冠肺炎疫情零星散发、部分地区聚集性和中高风险区不断呈现。此外，目前国内已有10余个省份进口冷链食品新冠病毒核酸检测呈阳性，加之秋冬季流感、诺如病毒等传染病与新冠肺炎疫情风险叠加，疫情防控形势仍然十分严峻。广大师生及家长朋友不能放松警惕，要始终绷紧疫情防控这根弦，坚决克服麻痹思想、厌战情绪、侥幸心理，切实做好个人防护和校园疫情防控。校园是人员集聚场所，学生来自千家万户，守护校园的安全、守护广大师生的健康，离不开每位学生、家长与学校的相互配合和共同努力。</p><p><br></p><p>一、切实提升防控意识。疫情防控应从个人防护做起，全体师生及家长应坚持“非必需，不外出”，做到不聚集、不扎堆。不到人员密集场所，特别是空气流动性差的地方，保持安全社交距离。不到国外</p><p><br></p><p>和国内中、高风险地区，不接触国内中、高风险地区和境外返邯未满隔离期限的人员。</p><p><br></p><p>二、切实加强健康管理。做好师生及家庭成员的健康监测，坚持晨、午检，如有异常，应向所在单位或学校报告，并及时就医，不带病上班或上课，不隐瞒、谎报病情。身体不适时，尽量减少与其他人直接接触，减少去人员聚集场所。来自或途经国内疫情中、高风险地区师生、家长及境外返邯的师生、家长应主动向所在社区及学校报告，按照要求严格落实各项防控措施，按要求进行核酸检测并接受社区健康管理。</p><p><br></p><p>三、切实保持良好习惯。勤通风。建议每天通风至少3次（早、中、晚），每次至少30分钟。寒冷季节开窗通风要注意保暖，定期对送风口等设备和部件进行清洗、消毒或更换。戴口罩。师生在校园内应当佩戴口罩，家长接送孩子上下学途中和等待过程中要全程佩戴口罩。与他人接触时尽量保持1米以上的社交距离，随身携带一次性医用口罩、消毒湿巾或免洗手消毒剂。常洗手。饭前便后、咳嗽或者打喷嚏后、接触</p><p><br></p><p>公共物品后、运动后，从户外进入室内后务必洗手。家长要以身作则，帮助孩子养成良好的卫生习惯。叮嘱孩子用肥皂或洗手液在流动水下按照正确洗手方法彻底洗净双手。注意个人卫生。勤洗澡、勤换衣服、勤晒被褥。家庭成员不共用日常生活用品，不随地吐痰，咳嗽和打喷嚏时使用纸巾或弯曲手肘掩盖口鼻，不直接面向他人，鼻涕或痰液用纸巾包好，弃置于有盖垃圾箱内。不要用不干净的手触摸口、眼、鼻。保持环境整洁：保持校园及家庭生活、学习场所环境卫生整洁。打扫卫生时要坚持湿式打扫，避免尘埃飞扬。门把手、电话机、手机、电视遥控器、桌面、地面等家人经常接触的公共物品表面，要经常用干净的湿毛巾擦拭或清洗。必要时（如家中有患传染病者或有身体健康状况不明客人来访等）进行消毒，主要的方式有煮沸消毒或化学消毒。物体表面可选择含氯消毒剂（“84”消毒液或消毒湿巾擦拭）。</p><p><br></p><p>四、切实强化饮食卫生。请密切关注政府权威部门发布的进口食品检疫信息，购置冷冻食品时，做到佩戴口罩，避免用手直接接触</p><p><br></p><p>冷冻食品，回家后及时进行手部消毒。强化食品安全意识，做到生熟分开，及时清洗砧板、菜刀、餐具，食物煮熟煮透，使用公筷、公勺或分餐。食用后一旦出现发热、腹泻等症状，要及时到医疗机构就医，并主动提供食用时间、食品种类和食材来源等信息。</p><p><br></p><p>五、切实开展多病同防。当前正值流行性感冒、肺结核、诺如病毒性腹泻等传染病流行季节，师生及家长朋友们在学习、工作、生活中一定注意保持合理膳食、戒烟限酒、适量运动、充足睡眠、心情舒畅，提高自身免疫力，鼓励和提倡接种相应疫苗，必要时进行预防性服药，杜绝带病坚持工作和上学，防止疾病加重和一些传染病流行蔓延。</p><p><br></p><p>六、切实树立战胜疫情的信心。全体师生和家长朋友要适应疫情防控新常态。通过各级党委、政府等官方渠道了解和掌握疫情动态、防治知识，做到不信谣、不传谣、不造谣。严格执行“外防输入、内防反弹”防控策略，坚持“人物同防、多病同防”的防控原则，严把“境外输入、市外输入、冷链输入”三个关口，同舟共济、科学防治，坚定战胜疫情的信心。（记者常慧杰）</p>');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家名称',
  `jingyingfanwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `shangjiaguimo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家规模',
  `farendaibiao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `shangjiadizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家地址',
  `yingyezhizhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业执照',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangjiazhanghao`(`shangjiazhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606893924726 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (1, '2020-12-02 15:15:41', '商家1', '123456', '商家名称1', '经营范围1', '小型企业', '法人代表1', '13823888881', '商家地址1', 'http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao1.jpg');
INSERT INTO `shangjia` VALUES (2, '2020-12-02 15:15:41', '商家2', '123456', '商家名称2', '经营范围2', '小型企业', '法人代表2', '13823888882', '商家地址2', 'http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao2.jpg');
INSERT INTO `shangjia` VALUES (3, '2020-12-02 15:15:41', '商家3', '123456', '商家名称3', '经营范围3', '小型企业', '法人代表3', '13823888883', '商家地址3', 'http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao3.jpg');
INSERT INTO `shangjia` VALUES (4, '2020-12-02 15:15:41', '商家4', '123456', '商家名称4', '经营范围4', '小型企业', '法人代表4', '13823888884', '商家地址4', 'http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao4.jpg');
INSERT INTO `shangjia` VALUES (5, '2020-12-02 15:15:41', '商家5', '123456', '商家名称5', '经营范围5', '小型企业', '法人代表5', '13823888885', '商家地址5', 'http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao5.jpg');
INSERT INTO `shangjia` VALUES (6, '2020-12-02 15:15:41', '商家6', '123456', '商家名称6', '经营范围6', '小型企业', '法人代表6', '13823888886', '商家地址6', 'http://localhost:8080/ssmf1203/upload/shangjia_yingyezhizhao6.jpg');
INSERT INTO `shangjia` VALUES (1606893924725, '2020-12-02 15:25:24', '001', '001', '星娱互娱有限公司', '食品', '中型企业', '张三', '13800000000', 'xx省xx市xx县', 'http://localhost:8080/ssmf1203/upload/1606894094833.jpg');

-- ----------------------------
-- Table structure for shangjiatousu
-- ----------------------------
DROP TABLE IF EXISTS `shangjiatousu`;
CREATE TABLE `shangjiatousu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `tousuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉类型',
  `tousushijian` datetime(0) NULL DEFAULT NULL COMMENT '投诉时间',
  `tousushuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '投诉说明',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894540038 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家投诉' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjiatousu
-- ----------------------------
INSERT INTO `shangjiatousu` VALUES (1, '2020-12-02 15:15:41', '学号1', '姓名1', '电话1', '商家账号1', '商家名称1', '虚假商家信息', '2020-12-02 15:15:41', '投诉说明1', '否', '');
INSERT INTO `shangjiatousu` VALUES (2, '2020-12-02 15:15:41', '学号2', '姓名2', '电话2', '商家账号2', '商家名称2', '虚假商家信息', '2020-12-02 15:15:41', '投诉说明2', '否', '');
INSERT INTO `shangjiatousu` VALUES (3, '2020-12-02 15:15:41', '学号3', '姓名3', '电话3', '商家账号3', '商家名称3', '虚假商家信息', '2020-12-02 15:15:41', '投诉说明3', '否', '');
INSERT INTO `shangjiatousu` VALUES (4, '2020-12-02 15:15:41', '学号4', '姓名4', '电话4', '商家账号4', '商家名称4', '虚假商家信息', '2020-12-02 15:15:41', '投诉说明4', '否', '');
INSERT INTO `shangjiatousu` VALUES (5, '2020-12-02 15:15:41', '学号5', '姓名5', '电话5', '商家账号5', '商家名称5', '虚假商家信息', '2020-12-02 15:15:41', '投诉说明5', '否', '');
INSERT INTO `shangjiatousu` VALUES (6, '2020-12-02 15:15:41', '学号6', '姓名6', '电话6', '商家账号6', '商家名称6', '虚假商家信息', '2020-12-02 15:15:41', '投诉说明6', '否', '');
INSERT INTO `shangjiatousu` VALUES (1606894540037, '2020-12-02 15:35:39', '001', '张三', '13800000000', '001', '星娱互娱有限公司', '虚假商家信息', '2020-12-02 15:35:35', '测试测试测试', '是', '欢迎');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894388597 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1606894380269, '2020-12-02 15:32:59', 1606894361878, 3, 'jianzhizhaopin', '招聘标题3', 'http://localhost:8080/ssmf1203/upload/jianzhizhaopin_zhaopinfengmian3.jpg');
INSERT INTO `storeup` VALUES (1606894388596, '2020-12-02 15:33:08', 1606894361878, 1606894225950, 'jianzhizhaopin', '招聘销售精英两名', 'http://localhost:8080/ssmf1203/upload/1606894207061.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', '85efh0ophkmvkgnx0ysiehgoj1ct3iss', '2020-12-02 15:17:08', '2020-12-02 16:35:53');
INSERT INTO `token` VALUES (2, 1606893924725, '001', 'shangjia', '商家', '5i9i1o0ece05852lh6aofm8mtril8tgp', '2020-12-02 15:26:28', '2020-12-02 16:36:55');
INSERT INTO `token` VALUES (3, 1606894361878, '001', 'xuesheng', '学生', 'r6o1em7mhriwkk2wi85xroe3n8splata', '2020-12-02 15:32:48', '2020-12-02 16:35:23');

-- ----------------------------
-- Table structure for tousuchuli
-- ----------------------------
DROP TABLE IF EXISTS `tousuchuli`;
CREATE TABLE `tousuchuli`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `tousuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉类型',
  `chufajieguo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处罚结果',
  `fakuanjine` int(11) NULL DEFAULT NULL COMMENT '罚款金额',
  `chulishijian` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `xiangqingshuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情说明',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894598651 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投诉处理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tousuchuli
-- ----------------------------
INSERT INTO `tousuchuli` VALUES (1, '2020-12-02 15:15:41', '商家账号1', '商家名称1', '投诉类型1', '警告', 1, '2020-12-02 15:15:41', '详情说明1', '未支付');
INSERT INTO `tousuchuli` VALUES (2, '2020-12-02 15:15:41', '商家账号2', '商家名称2', '投诉类型2', '警告', 2, '2020-12-02 15:15:41', '详情说明2', '未支付');
INSERT INTO `tousuchuli` VALUES (3, '2020-12-02 15:15:41', '商家账号3', '商家名称3', '投诉类型3', '警告', 3, '2020-12-02 15:15:41', '详情说明3', '未支付');
INSERT INTO `tousuchuli` VALUES (4, '2020-12-02 15:15:41', '商家账号4', '商家名称4', '投诉类型4', '警告', 4, '2020-12-02 15:15:41', '详情说明4', '未支付');
INSERT INTO `tousuchuli` VALUES (5, '2020-12-02 15:15:41', '商家账号5', '商家名称5', '投诉类型5', '警告', 5, '2020-12-02 15:15:41', '详情说明5', '未支付');
INSERT INTO `tousuchuli` VALUES (6, '2020-12-02 15:15:41', '商家账号6', '商家名称6', '投诉类型6', '警告', 6, '2020-12-02 15:15:41', '详情说明6', '未支付');
INSERT INTO `tousuchuli` VALUES (1606894598650, '2020-12-02 15:36:37', '001', '星娱互娱有限公司', '虚假商家信息', '罚款', 500, '2020-12-02 15:36:32', '测试 ', '已支付');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2020-12-02 15:15:42');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606894361879 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (1, '2020-12-02 15:15:41', '学生1', '123456', '姓名1', '男', 1, '学院1', '专业1', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian1.jpg');
INSERT INTO `xuesheng` VALUES (2, '2020-12-02 15:15:41', '学生2', '123456', '姓名2', '男', 2, '学院2', '专业2', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian2.jpg');
INSERT INTO `xuesheng` VALUES (3, '2020-12-02 15:15:41', '学生3', '123456', '姓名3', '男', 3, '学院3', '专业3', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian3.jpg');
INSERT INTO `xuesheng` VALUES (4, '2020-12-02 15:15:41', '学生4', '123456', '姓名4', '男', 4, '学院4', '专业4', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian4.jpg');
INSERT INTO `xuesheng` VALUES (5, '2020-12-02 15:15:41', '学生5', '123456', '姓名5', '男', 5, '学院5', '专业5', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian5.jpg');
INSERT INTO `xuesheng` VALUES (6, '2020-12-02 15:15:41', '学生6', '123456', '姓名6', '男', 6, '学院6', '专业6', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/ssmf1203/upload/xuesheng_zhaopian6.jpg');
INSERT INTO `xuesheng` VALUES (1606894361878, '2020-12-02 15:32:41', '001', '001', '张三', '男', 19, '家大学院', '计算机', '13800000000', '123@qq.com', '441400000000000000', 'http://localhost:8080/ssmf1203/upload/1606894407437.png');

SET FOREIGN_KEY_CHECKS = 1;
