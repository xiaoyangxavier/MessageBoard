DROP DATABASE IF EXISTS board;

CREATE DATABASE board DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE board;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS permission;
DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS message_type;
 
 

 
/*==============================================================*/
/* Table: user     用户表                                     */
/*==============================================================*/
create table user
(
   user_id		int		not null	AUTO_INCREMENT	COMMENT '用户编号',
   user_name		varchar(45)     not null			COMMENT '用户名',
   password		varchar(45)     not null			COMMENT '密码',
   permission_id		int             not null		COMMENT '权限编号：0为普通用户，-1为超级管理员，1+为普通管理员，数字一一对应消息类别',
   name			varchar(45)	default NULL			COMMENT '角色名',
   sno			varchar(45)	default NULL			COMMENT '学号',
   real_name			varchar(45)	default NULL			COMMENT '真实姓名',
   college	varchar(45)	default NULL			COMMENT '学院',
   sex			VARCHAR(2)	default '男'			COMMENT '性别',
   phone		varchar(11)	default NULL			COMMENT '手机号',
   email		varchar(45)	default NULL			COMMENT '邮箱地址',
   last_login_date      datetime					COMMENT '最后登录时间',
   primary key (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '用户表';





/*==============================================================*/
/* Table: permission   权限表                           */
/*==============================================================*/
create table permission
(
   permission_id	int		not null			COMMENT '权限编号',
   permission_name	varchar(45)	default NULL			COMMENT '权限名',
   description		varchar(255)					COMMENT '描述：0可以发表留言、对回复评分；-1可以回复全部板块的留言、管理数据；1+可以回复所属板块的留言' ,
   primary key (permission_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '权限表';



/*==============================================================*/
/* Table: message       消息内容表                           */
/*==============================================================*/
create table message
(
   message_id		    int		      not null	AUTO_INCREMENT	COMMENT '消息编号',
   super_message_id	int		      default NULL	        	COMMENT '父消息编号，对应message_id',
   message_title        	  varchar(255)				default NULL	 		                    COMMENT '标题',
   message_content	text						                    COMMENT '消息内容',
   message_date		  datetime					                  COMMENT '消息发布时间',
   image_url		    varchar(1024)		default NULL				              COMMENT '图片地址',
   voice_url		    varchar(1024)		default NULL				              COMMENT '音频地址',
   video_url		    varchar(1024)		default NULL				              COMMENT '视频地址',
   user_id		      int		          not null	 COMMENT '用户编号',
   message_grade	  decimal(10,1)	default NULL					COMMENT '用户评分，默认为null',
   is_replay		boolean						   default false 	               COMMENT '是否是管理员回复的内容',
   exit_replay		boolean						   default false 	               COMMENT '是否被管理员回复',
   type_id    int              not null	 COMMENT'消息类别ID，与message_type的ID相同',
   primary key (message_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '消息内容表';


/*==============================================================*/
/* Table: message_type       消息类别表                           */
/*==============================================================*/
create table message_type
(
   type_id		int		not null	AUTO_INCREMENT	COMMENT '消息类型编号，数字递增',
   type_name		varchar(255)		not null	        	COMMENT '消息类型名称',
   primary key (type_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = '消息类别表';
  

/*插入正式数据==============================================================*/

INSERT INTO user (user_id,user_name,password,permission_id,name)
VALUES (1,'admin','admin','-1','超级管理员');
INSERT INTO user (user_id,user_name,password,permission_id,name,sno,real_name,college,sex,phone,email,last_login_date)
VALUES (2,'user','user','0','普通用户','001','小明','信息学院','男','15111111110','user@qq.com','2006-08-10 17:32:50');
INSERT INTO user (user_id,user_name,password,permission_id,name)
VALUES (3,'jiaowujiaoxue','jiaowujiaoxue','1','普通管理员');
INSERT INTO user (user_id,user_name,password,permission_id,name)
VALUES (4,'houqinfuwu','houqinfuwu','2','普通管理员');
INSERT INTO user (user_id,user_name,password,permission_id,name)
VALUES (5,'xueshengguanli','xueshengguanli','3','普通管理员');
INSERT INTO user (user_id,user_name,password,permission_id,name)
VALUES (6,'shujixinxiang','shujixinxiang','4','普通管理员');
INSERT INTO user (user_id,user_name,password,permission_id,name)
VALUES (7,'xiaozhangxinxiang','xiaozhangxinxiang','5','普通管理员');
 

INSERT INTO permission (permission_id,permission_name,description)  VALUES (-1,'超级管理员权限','可以回复全部板块的留言、管理数据');
INSERT INTO permission (permission_id,permission_name,description)  VALUES (0,'普通用户权限','可以发表留言、对回复评分');
INSERT INTO permission (permission_id,permission_name,description)  VALUES (1,'普通管理员权限','可以回复所属板块的留言');

INSERT INTO message_type (type_name)  VALUES ('教务教学'),('后勤服务'),('学生管理'),('书记信箱'),('校长信箱'); 


/*插入测试数据==============================================================*/



 




