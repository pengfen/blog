-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 11 月 14 日 09:35
-- 服务器版本: 5.6.24
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- 表的结构 `blog_advice`
--

CREATE TABLE IF NOT EXISTS `blog_advice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `title` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COMMENT '内容',
  `views` int(10) unsigned DEFAULT '0' COMMENT '阅读量',
  `reviews` int(10) unsigned DEFAULT '0' COMMENT '回复量',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `isread` tinyint(1) unsigned DEFAULT '0' COMMENT '是否已读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_advice`
--

INSERT INTO `blog_advice` (`id`, `uid`, `title`, `content`, `views`, `reviews`, `addtime`, `isread`) VALUES
(1, 53, '你好', '&lt;p&gt;你好到消息没有&lt;/p&gt;', 4, 1, 1439544078, 1),
(2, 52, 'wert', '&lt;p&gt;qwe&lt;/p&gt;', 0, 0, 1439726292, 0),
(3, 52, 'dfghjkl', '&lt;p&gt;dfghjkl;&amp;#39;&lt;/p&gt;', 1, 1, 1439780548, 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_advice_reviews`
--

CREATE TABLE IF NOT EXISTS `blog_advice_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT NULL COMMENT '建议id',
  `mid` int(10) unsigned DEFAULT NULL COMMENT '管理员id',
  `content` text CHARACTER SET utf8 COMMENT '回复内容',
  `addtime` int(10) unsigned DEFAULT NULL,
  `flag` tinyint(1) unsigned DEFAULT '0' COMMENT '0 为管理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_advice_reviews`
--

INSERT INTO `blog_advice_reviews` (`id`, `cid`, `mid`, `content`, `addtime`, `flag`) VALUES
(1, 1, 1, '收到了', 1439544286, 0),
(2, 3, 1, 'fghjkl;''\r\n', 1439780571, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_album`
--

CREATE TABLE IF NOT EXISTS `blog_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(255) CHARACTER SET utf8 DEFAULT '默认相册',
  `create_time` int(11) DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8 DEFAULT '未添加描述',
  `uid` int(11) DEFAULT NULL,
  `scan` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `good` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `class` enum('z','r','f','y','k','s','q') NOT NULL,
  `power` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '权限',
  `first` varchar(255) NOT NULL DEFAULT '1.png' COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `blog_album`
--

INSERT INTO `blog_album` (`id`, `album_name`, `create_time`, `des`, `uid`, `scan`, `good`, `class`, `power`, `first`) VALUES
(94, '默认相册', 1439515777, '未添加描述', 52, 3, 0, 'z', '0', '1.png'),
(95, '默认相册', 1439532035, '未添加描述', 53, 0, 0, 'z', '0', '1.png'),
(96, '默认相册', 1439532114, '未添加描述', 54, 0, 0, 'z', '0', '1.png'),
(97, '默认相册', 1439532184, '未添加描述', 55, 0, 0, 'z', '0', '1.png'),
(98, '默认相册', 1439532215, '未添加描述', 56, 0, 0, 'z', '0', '1.png'),
(99, '默认相册', 1439532271, '未添加描述', 57, 0, 0, 'z', '0', '1.png'),
(100, '默认相册', 1439532331, '未添加描述', 58, 0, 0, 'z', '0', '1.png'),
(101, '默认相册', 1439532370, '未添加描述', 59, 0, 0, 'z', '0', '1.png'),
(102, '默认相册', 1439532400, '未添加描述', 59, 0, 0, 'z', '0', '1.png'),
(103, '默认相册', 1439548344, '未添加描述', 61, 16, 0, 'z', '0', 'First2015-08-14/thumb_55cdc4318d24d.jpg'),
(104, '美好时光', 1439555018, '总有一些值得记忆的日子', 61, 13, 0, 'z', '0', 'First2015-08-14/thumb_55cddf044c4b4.jpg'),
(105, '亲亲宝贝', 1439555538, '和宝贝一起的日子', 61, 14, 0, 's', '0', 'First2015-08-14/thumb_55cde01200000.jpg'),
(106, '我自己', 1439773791, '', 52, 1, 0, 'z', '0', '1.png');

-- --------------------------------------------------------

--
-- 表的结构 `blog_album_question`
--

CREATE TABLE IF NOT EXISTS `blog_album_question` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `album_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '相册id',
  `question` text COMMENT '权限问题',
  `answer` text COMMENT '答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `blog_auth`
--

CREATE TABLE IF NOT EXISTS `blog_auth` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '权限名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `controller` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  `path` varchar(32) NOT NULL DEFAULT '' COMMENT '全路径',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '权限级别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `blog_auth`
--

INSERT INTO `blog_auth` (`id`, `name`, `pid`, `controller`, `action`, `path`, `level`) VALUES
(1, '权限管理', 0, '', '', '1', 0),
(2, '权限列表', 1, 'Auth', 'index', '1-2', 1),
(3, '管理员列表', 1, 'Manager', 'index', '1-3', 1),
(4, '会员管理', 0, '', '', '4', 0),
(5, '会员列表', 4, 'User', 'index', '4-5', 1),
(7, '角色列表', 1, 'Role', 'index', '1-7', 1),
(9, '后台目录列表', 8, 'Dir', 'index', '8-9', 1),
(11, '前台目录列表', 8, 'Dir', 'showlist', '8-11', 1),
(12, '日志分类列表', 4, 'LogCate', 'index', '4-12', 1),
(13, '说说列表', 4, 'Mood', 'index', '4-13', 1),
(14, '建议列表', 4, 'Advice', 'index', '4-14', 1),
(15, '公告管理', 0, '', '', '15', 0),
(16, '公告列表', 15, 'News', 'index', '15-16', 1),
(17, '添加权限', 2, 'Auth', 'add', '1-2-17', 2),
(18, '修改权限', 2, 'Auth', 'edit', '1-2-18', 2),
(19, '删除权限', 2, 'Auth', 'delete', '1-2-19', 2),
(20, '分配权限', 7, 'Role', 'distribute', '1-7-20', 2),
(21, '删除角色', 7, 'Role', 'delete', '1-7-21', 2),
(22, '添加角色', 7, 'Role', 'add', '1-7-22', 2),
(23, '相册分类列表', 4, 'Album', 'index', '4-23', 1),
(24, '资源列表', 9, 'resource', 'index', '8-9-24', 2),
(25, '资源列表', 4, 'resource', 'index', '4-25', 1),
(27, '后台目录列表', 26, 'Dir', 'index', '26-27', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_dir`
--

CREATE TABLE IF NOT EXISTS `blog_dir` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '表名',
  `controller` varchar(50) DEFAULT NULL COMMENT '控制器名',
  `method` text COMMENT '所有方法',
  `model` varchar(50) DEFAULT NULL COMMENT '模型名',
  `template` text COMMENT '模板',
  `modmet` text COMMENT '模型-方法',
  `struct` varchar(255) DEFAULT NULL COMMENT '表结构',
  `des` text COMMENT '描述',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `flag` tinyint(1) unsigned DEFAULT '0' COMMENT '前后台标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `blog_dir`
--

INSERT INTO `blog_dir` (`id`, `name`, `controller`, `method`, `model`, `template`, `modmet`, `struct`, `des`, `note`, `flag`) VALUES
(1, '后台首页', 'IndexController', 'index 首页(判断用户是否登录)', '', 'index.html 首页(所有列表的父模板), menu.html 导航菜单(Nav/menu 调用此模板)', '', '', '左边导航使用{:W(''Nav/menu'')}', '', 0),
(2, '角色表', 'RoleController', 'index 角色列表,insert 添加数据, distribute 分配权限界面, updDist 修改权限数据(调用模型中saveAuth), delete 删除角色, message 成功失败跳转', 'RoleModel', 'index.html 权限列表, add.html 添加界面, distribute.html 分配权限界面', 'saveAuth 分配权限', 'create table blog_role(\r\n	id tinyint(3) unsigned not null primary key auto_increment,\r\n	name varchar(20) not null default '''' comment ''角色名'',\r\n	aids varchar(128) not null default '''' comment ''权限ids 1,2,...'',\r\n	aac text comment ''控制器-操作''\r\n)engine=innodb defaul', '', '1  为董事长(所有权限) 2 为经理(权限管理) 3 主管(会员管理) 4 员工(资源管理)', 0),
(3, '后台基类', 'BaseController', '__construct 拦截权限', '', '', '', '', '1 获取当前请求中 Controller/action 2 根据当前用户获取对应的角色及对应的角色拥有的权限 3 拦截', '', 0),
(4, '导航组件', 'NavWidget', 'menu 导航菜单(加载顶级 次顶级权限)', '', 'menu.html 导航菜单', '', '', '', '', 0),
(5, '权限表', 'AuthController', 'index 权限列表(所有权限), add 添加界面(项级 次顶级权限), insert 添加数据(调用模型中addAuth方法), edit 修改界面(顶级 次顶级权限), update 修改数据(调用模型中updAuth方法), delete   删除权限, message 成功失败跳转, getInfo 获取权限信息', 'AuthModel', 'index.html 权限列表, add.html 添加界面(父模板), edit.html 修改界面(继承add.html模板)', 'addAuth 添加权限方法, updAuth 修改权限方法, getPath 获取全路径', 'create table blog_auth(\r\n	id smallint(6) unsigned not null primary key auto_increment,\r\n	name varchar(20) not null default '''' comment ''权限名'',\r\n	pid smallint(6) not null default 0 comment ''父id'',\r\n	controller varchar(32) not null default '''' comment ''控制器'',\r\n	', 'addAuth中 添加name pid controller action字段 再修改记录添加path level二字段 $res = array(\r\n			''id'' =&gt; $new_id,\r\n			''path'' =&gt; $path,\r\n			''level'' =&gt; $level\r\n			);$this -&gt; save($res);', '', 0),
(6, '日志分类表', 'LogCateController', 'index 显示当前用户日志分类列表', '', 'index.html 日志分类界面', '', 'create table blog_log_cate(\r\n	id int unsigned not null primary key auto_increment,\r\n	name varchar(32) not null default ''个人日记'' comment ''日志分类名'',\r\n	uid int unsigned not null comment ''用户id'',\r\n	total smallint(6) not null default ''0'' comment ''日志总数'',\r\n	flag tiny', '', '', 0),
(7, '日志表', 'LogController', 'index 要查询用户的日志列表, detail 日志详细表, delete 删除日志', '', 'index.html 日志列表界面, detail.html 日志详情界面', '', 'create table blog_log(\r\n	id int unsigned not null primary key auto_increment,\r\n	title varchar(50) not null default '''' comment ''日志标题'',\r\n	content text comment ''日志内容'',\r\n	issuetime int unsigned comment ''发布时间'',\r\n	uid int unsigned comment ''用户id'',\r\n	cid int unsi', '', '权限(auth) 0 公开 1 好友可见 2 指定好友可见 3 仅自己可见 删除标志(flag) 0 不删除 1 删除', 0),
(8, '目录表', 'DirController', 'index 后台目录列表, showlist 前台目录列表, add 添加界面, insert 添加数据, edit 修改界面, update 修改数据, detail 目录详情, delete 删除目录,\r\nmessae 成功失败信息提示', '', 'index.html 目录列表界面, edit.html 修改界面, add.html 添加界面, detail.html 目录详情界面', '', 'create table blog_dir(\r\n	id int unsigned not null primary key auto_increment,\r\n	name varchar(20) not null default '''' comment ''表名'',\r\n	controller varchar(50) not null default '''' comment ''控制器'',\r\n	model varchar(50) comment ''模型名'',\r\n	method text comment ''方法 ...', '', '标志(flag) 0 后台 1 前台', 0),
(10, '日志分类表', 'LogCateController', 'index 显示当前用户的日志分类, insert 根据当前用户添加日志分类, update 根据日志分类id来修改, delete 将分类下所有日志的cid改为个人日志 再执行删除, message 成功失败信息提示', '', 'index.html 日志分类列表界面(添加修改删除 用js 动态调用)', '', '', '', '', 1),
(11, '会员表', 'UserController', 'index 会员列表, edit 修改界面, update 修改数据, detail 详情界面', '', '', '', '', '', '状态(state) 0 禁用 1 启用', 0),
(12, '用户表', 'UserController', 'myhome 我的主页, editInfo 修改用户信息, doedit 执行修改', 'UserModel', 'myhome.html 我的主页, editInfo.html 用户信息修改, info 用户基本信息', 'getUserListByCondition 根据条件获取用户信息, getUserInfo 获取某一用户信息, editInfo 修改用户信息, getUserInfoById 根据用户id获取用户信息, edit 修改用户信息, experience 经验值累计', '', '', '', 1),
(13, '前台首页', 'IndexController', 'index 主页, isuploadHead 是否上传头像, uploadImg 上传头像 cropImg 裁剪并保存头像', '', 'headupload.html 头像上传, index.html 主页', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_friend`
--

CREATE TABLE IF NOT EXISTS `blog_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fidlist` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `blog_friend`
--

INSERT INTO `blog_friend` (`id`, `uid`, `fidlist`) VALUES
(57, 52, ',56,53,61,61'),
(58, 53, ',52'),
(59, 54, NULL),
(60, 55, NULL),
(61, 56, ',52'),
(62, 57, NULL),
(63, 58, NULL),
(64, 59, NULL),
(65, 59, NULL),
(66, 61, ',52,52');

-- --------------------------------------------------------

--
-- 表的结构 `blog_head_img`
--

CREATE TABLE IF NOT EXISTS `blog_head_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `head_img_big` varchar(255) CHARACTER SET utf8 DEFAULT 'default_big.jpg',
  `head_img_small` varchar(255) CHARACTER SET utf8 DEFAULT 'default_small.jpg',
  `head_img_middle` varchar(255) CHARACTER SET utf8 DEFAULT 'default.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `blog_head_img`
--

INSERT INTO `blog_head_img` (`id`, `uid`, `head_img_big`, `head_img_small`, `head_img_middle`) VALUES
(25, 52, '52avatar_250.jpg', '52avatar_40.jpg', '52avatar_150.jpg'),
(26, 53, '53avatar_250.jpg', '53avatar_40.jpg', '53avatar_150.jpg'),
(27, 54, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(28, 55, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(29, 56, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(30, 57, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(31, 58, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(32, 59, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(33, 59, 'default_big.jpg', 'default_small.jpg', 'default.jpg'),
(34, 61, '61avatar_250.jpg', '61avatar_40.jpg', '61avatar_150.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `blog_log`
--

CREATE TABLE IF NOT EXISTS `blog_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text COMMENT '日志内容',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '发布时间',
  `flag` tinyint(1) unsigned DEFAULT '0' COMMENT '删除标志',
  `cid` int(10) unsigned DEFAULT NULL COMMENT '所属分类',
  `auth` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '权限',
  `pids` varchar(255) DEFAULT NULL COMMENT '图片ids 1,2...',
  `views` int(10) unsigned DEFAULT '0' COMMENT '阅读量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `blog_log`
--

INSERT INTO `blog_log` (`id`, `title`, `content`, `addtime`, `flag`, `cid`, `auth`, `pids`, `views`) VALUES
(1, '写日志', '&lt;p&gt;今天天气不错&lt;/p&gt;', 1439539612, 0, 38, 0, NULL, 11),
(3, '测试日志系统', '&lt;p&gt;&amp;nbsp;今天我测试了日志系统,同时学到了很多东西...........&lt;/p&gt;', 1439543872, 0, 39, 0, NULL, 2),
(4, '测试日志', '&lt;p&gt;测试日志一&lt;/p&gt;', 1439777697, 0, 48, 0, NULL, 0),
(5, 'dkjlj', '&lt;p&gt;dfghjkl;&amp;#39;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1439780339, 0, 47, 3, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_log_cate`
--

CREATE TABLE IF NOT EXISTS `blog_log_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '个人日记' COMMENT '日志分类名',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `total` smallint(6) NOT NULL DEFAULT '0' COMMENT '日志总数',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `blog_log_cate`
--

INSERT INTO `blog_log_cate` (`id`, `name`, `uid`, `total`, `flag`) VALUES
(38, '个人日记', 52, 1, 1),
(39, '个人日记', 53, 2, 1),
(40, '个人日记', 54, 0, 1),
(41, '个人日记', 55, 0, 1),
(42, '个人日记', 56, 0, 1),
(43, '个人日记', 57, 0, 1),
(44, '个人日记', 58, 0, 1),
(45, '个人日记', 59, 0, 1),
(46, '个人日记', 59, 0, 1),
(47, '个人日记', 61, 1, 1),
(49, '测试分类一', 61, 0, 0),
(50, 'hjjjj', 52, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_manager`
--

CREATE TABLE IF NOT EXISTS `blog_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理名称',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '管理密码',
  `regtime` int(10) unsigned DEFAULT NULL COMMENT '注册时间',
  `logtime` int(10) unsigned DEFAULT NULL COMMENT '登录时间',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `blog_manager`
--

INSERT INTO `blog_manager` (`id`, `username`, `password`, `regtime`, `logtime`, `rid`, `email`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1438178140, 1438178140, 0, 'admin@qq.com'),
(11, 'apeng1', 'e10adc3949ba59abbe56e057f20f883e', 1438178140, 1438178140, 6, 'apeng1@qq.com'),
(12, 'apeng2', 'e10adc3949ba59abbe56e057f20f883e', 1438178140, 1438178140, 7, 'apeng2@qq.com'),
(13, 'apeng3', 'e10adc3949ba59abbe56e057f20f883e', 1438178140, 1438178140, 8, 'apeng3@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `blog_message`
--

CREATE TABLE IF NOT EXISTS `blog_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sender` int(11) NOT NULL,
  `receiver` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `blog_message`
--

INSERT INTO `blog_message` (`id`, `uid`, `vid`, `content`, `addtime`, `state`, `pid`, `sender`, `receiver`) VALUES
(1, 52, 53, '我来踩踩', 1439540442, 0, 0, 53, 52);

-- --------------------------------------------------------

--
-- 表的结构 `blog_mood`
--

CREATE TABLE IF NOT EXISTS `blog_mood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `blog_mood`
--

INSERT INTO `blog_mood` (`id`, `uid`, `content`, `addtime`, `state`) VALUES
(1, 53, '今天天气很好', 1439537738, 0),
(2, 53, '我去', 1439537878, 0),
(3, 52, '第一次发布说说', 1439538013, 0),
(4, 52, '我说说', 1439538828, 0),
(5, 52, '你好', 1439538895, 0),
(6, 52, '测试跳转', 1439538922, 0),
(7, 52, '测试跳转二', 1439538940, 0),
(8, 61, 'akjlkj', 1439780260, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_msg_cate`
--

CREATE TABLE IF NOT EXISTS `blog_msg_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_msg_cate`
--

INSERT INTO `blog_msg_cate` (`id`, `catename`) VALUES
(1, '站内信'),
(2, '系统消息'),
(3, '好友请求');

-- --------------------------------------------------------

--
-- 表的结构 `blog_news`
--

CREATE TABLE IF NOT EXISTS `blog_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `addtime` int(11) NOT NULL,
  `hot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_news`
--

INSERT INTO `blog_news` (`id`, `title`, `content`, `addtime`, `hot`) VALUES
(1, '广场播不雅视频', '241', 111, 3),
(2, '纽约爆发军团菌病', '23232', 222, 7),
(3, '周杰伦播英雄联盟', 'tdkhfyh', 0, 7);

-- --------------------------------------------------------

--
-- 表的结构 `blog_notice`
--

CREATE TABLE IF NOT EXISTS `blog_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '0',
  `sid` int(11) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `blog_notice`
--

INSERT INTO `blog_notice` (`id`, `uid`, `message`, `flag`, `sid`, `state`) VALUES
(1, 52, '我想加你为好友', 3, 56, 1),
(2, 52, '我想加你为好友', 3, 53, 1),
(3, 52, '我想加你为好友', 3, 61, 1),
(4, 52, '我想加你为好友', 3, 61, 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_photo`
--

CREATE TABLE IF NOT EXISTS `blog_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `photo_name_thumb` varchar(255) NOT NULL,
  `photo_des` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `flag` tinyint(1) DEFAULT '0',
  `good` tinyint(4) NOT NULL DEFAULT '0' COMMENT '点赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `blog_photo`
--

INSERT INTO `blog_photo` (`id`, `photo_name`, `photo_name_thumb`, `photo_des`, `aid`, `addtime`, `flag`, `good`) VALUES
(48, 'Photo2015-08-14/55cdc47fe4e1c.jpg', 'Photo2015-08-14/thumb_55cdc47fe4e1c.jpg', '花卉1', 103, 1439548543, 0, 7),
(49, 'Photo2015-08-14/55cdc5275f5e1.jpg', 'Photo2015-08-14/thumb_55cdc5275f5e1.jpg', '这是什么花', 103, 1439548711, 0, 3),
(50, 'Photo2015-08-14/55cddef2a4083.jpg', 'Photo2015-08-14/thumb_55cddef2a4083.jpg', '快乐的日子。。。', 104, 1439555314, 0, 6),
(51, 'Photo2015-08-14/55cddf2e22551.jpg', 'Photo2015-08-14/thumb_55cddf2e22551.jpg', '顾村公园', 104, 1439555374, 0, 2),
(52, 'Photo2015-08-14/55cddf4894c5f.jpg', 'Photo2015-08-14/thumb_55cddf4894c5f.jpg', '犀牛化石', 104, 1439555400, 0, 1),
(53, 'Photo2015-08-14/55cddf6d66ff3.jpg', 'Photo2015-08-14/thumb_55cddf6d66ff3.jpg', '顾村公园', 104, 1439555437, 0, 0),
(55, 'Photo2015-08-14/55cddf9857bcf.jpg', 'Photo2015-08-14/thumb_55cddf9857bcf.jpg', '花卉2', 103, 1439555480, 0, 8),
(58, 'Photo2015-08-14/55cde11b44aa2.jpg', 'Photo2015-08-14/thumb_55cde11b44aa2.jpg', 'baobao', 105, 1439555867, 0, 0),
(59, 'Photo2015-08-14/55cde1493567e.jpg', 'Photo2015-08-14/thumb_55cde1493567e.jpg', 'happy', 105, 1439555913, 0, 0),
(61, 'Photo2015-08-14/55cde1db53ec6.jpg', 'Photo2015-08-14/thumb_55cde1db53ec6.jpg', '美丽的菊花', 103, 1439556059, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_photo_good`
--

CREATE TABLE IF NOT EXISTS `blog_photo_good` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL COMMENT '用户id',
  `photo_id` tinyint(3) unsigned NOT NULL COMMENT '照片id',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `photogood_photoid` (`photo_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

--
-- 转存表中的数据 `blog_photo_good`
--

INSERT INTO `blog_photo_good` (`id`, `user_id`, `photo_id`, `addtime`) VALUES
(97, 61, 48, 1439548550),
(98, 61, 48, 1439548550),
(99, 61, 48, 1439548550),
(100, 61, 48, 1439548551),
(101, 61, 50, 1439555404),
(102, 61, 50, 1439555405),
(103, 61, 50, 1439555405),
(104, 61, 50, 1439555405),
(105, 61, 51, 1439555406),
(106, 61, 51, 1439555407),
(107, 61, 52, 1439555408),
(108, 61, 55, 1439555489),
(109, 61, 55, 1439555490),
(110, 61, 55, 1439555490),
(111, 61, 55, 1439555490),
(112, 61, 49, 1439555491),
(113, 61, 49, 1439555491),
(114, 61, 49, 1439555493),
(115, 61, 48, 1439555495),
(116, 61, 48, 1439555496),
(117, 61, 48, 1439555496),
(118, 61, 55, 0),
(119, 61, 55, 0),
(120, 61, 55, 0),
(121, 61, 55, 0),
(122, 61, 50, 0),
(123, 61, 50, 0);

-- --------------------------------------------------------

--
-- 表的结构 `blog_photo_review`
--

CREATE TABLE IF NOT EXISTS `blog_photo_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(60) NOT NULL DEFAULT '' COMMENT '拥有者',
  `sender` varchar(60) NOT NULL DEFAULT '' COMMENT '评论者',
  `content` text NOT NULL COMMENT '评论内容',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '照片id',
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '相册id',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `blog_photo_review`
--

INSERT INTO `blog_photo_review` (`id`, `owner`, `sender`, `content`, `pid`, `rid`, `addtime`) VALUES
(22, '61', '61', '好喜欢这束手捧花！！', 48, 103, 1439548581),
(23, '61', '61', '大家还记的吗，我们第一次一起HAPPY..', 50, 104, 1439555751),
(24, '61', '61', '和女儿一起的日子总是那么美好', 59, 105, 1439555940),
(25, '61', '61', 'dasdsad', 55, 103, 1439779893);

-- --------------------------------------------------------

--
-- 表的结构 `blog_record`
--

CREATE TABLE IF NOT EXISTS `blog_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `oper` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `blog_record`
--

INSERT INTO `blog_record` (`id`, `uid`, `oper`, `addtime`) VALUES
(1, 53, 0, 1439537738),
(2, 53, 0, 1439537878),
(3, 52, 0, 1439538013),
(4, 52, 0, 1439538828),
(5, 52, 0, 1439538896),
(6, 52, 0, 1439538922),
(7, 52, 0, 1439538940),
(8, 52, 1, 1439539612),
(9, 53, 1, 1439542025),
(10, 53, 1, 1439543872),
(11, 52, 1, 1439777697),
(12, 61, 0, 1439780261),
(13, 61, 1, 1439780339);

-- --------------------------------------------------------

--
-- 表的结构 `blog_resource`
--

CREATE TABLE IF NOT EXISTS `blog_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('文学','技术','教育') NOT NULL COMMENT '文章属性',
  `main` text NOT NULL COMMENT '文章简介',
  `uid` int(10) unsigned NOT NULL COMMENT '作者',
  `click` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '点击数',
  `download` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '下载数',
  `score` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '积分',
  `addtime` varchar(20) NOT NULL,
  `zip_name` varchar(1000) NOT NULL,
  `header` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `blog_resource`
--

INSERT INTO `blog_resource` (`id`, `type`, `main`, `uid`, `click`, `download`, `score`, `addtime`, `zip_name`, `header`) VALUES
(17, '教育', '&lt;p&gt;初一 &lt;span style=&quot;color: rgb(79, 129, 189);&quot;&gt;数学&lt;/span&gt;、&lt;span style=&quot;color: rgb(155, 187, 89);&quot;&gt;英语&lt;/span&gt;、&lt;span style=&quot;color: rgb(227, 108, 9);&quot;&gt;语文&lt;/span&gt;，初二 &lt;span style=&quot;color: rgb(149, 55, 52);&quot;&gt;政治&lt;/span&gt;、&lt;span style=&quot;color: rgb(95, 73, 122);&quot;&gt;生物&lt;/span&gt;，初三 &lt;span style=&quot;color: rgb(192, 0, 0);&quot;&gt;物理&lt;/span&gt;、&lt;span style=&quot;color: rgb(23, 54, 93);&quot;&gt;化学&lt;/span&gt;，各种教学资料，欢迎小伙伴们下载！&lt;br/&gt;&lt;/p&gt;', 61, 1, 8, 2, '1439552081', 'Resource2015-08-14/55cdcae9aba95.zip', '中学教育课程资料'),
(13, '技术', '&lt;p&gt;三天学会PHP，想学的欢迎下载&lt;/p&gt;', 61, 1, 4, 5, '1439550295', 'Resource2015-08-14/55cdcb5707a12.zip', 'PHP学习宝典'),
(14, '教育', '&lt;p&gt;父母是最好的老师，让我们一起来跟我孩子的小玩伴把&lt;/p&gt;', 61, 1, 3, 0, '1439550362', 'Resource2015-08-14/55cdcb9a0b71b.zip', '亲子教育手册'),
(15, '教育', '&lt;p style=&quot;text-align: left;&quot;&gt;本资源是笔者收集百位童鞋大学&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;期末考试小抄&lt;/strong&gt;&lt;/span&gt;，想要吗？下载吧&lt;/p&gt;', 61, 1, 2, 2, '1439550783', 'Resource2015-08-14/55cdcd3f3d090.zip', '大学计算机专业期末考试小抄'),
(16, '技术', '&lt;p&gt;&lt;span style=&quot;background-color: rgb(192, 80, 77); color: rgb(255, 255, 255);&quot;&gt;单反相机&lt;/span&gt;&lt;span style=&quot;font-family: 黑体, SimHei;&quot;&gt;傻瓜式&lt;/span&gt;应用，让你&lt;span style=&quot;color: rgb(227, 108, 9);&quot;&gt;&lt;strong&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;分分钟&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;成为&lt;strong&gt;&lt;span style=&quot;background-color: rgb(251, 213, 181); color: rgb(95, 73, 122);&quot;&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(251, 213, 181); text-decoration: underline;&quot;&gt;艺术家&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/strong&gt;！&lt;/p&gt;', 61, 1, 1, 2, '1439551685', 'Resource2015-08-14/55cdd0c522551.zip', '单反相机傻瓜式应用'),
(18, '技术', '&lt;p&gt;下&lt;span style=&quot;color: rgb(0, 112, 192);&quot;&gt;水&lt;/span&gt;&lt;span style=&quot;color: rgb(146, 208, 80);&quot;&gt;&lt;strong&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;三次&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;就可学会&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;color: rgb(227, 108, 9);&quot;&gt;游泳&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;，只要你按照资料上的&lt;span style=&quot;background-color: rgb(178, 162, 199);&quot;&gt;一招一式&lt;/span&gt;的&lt;span style=&quot;background-color: rgb(242, 220, 219);&quot;&gt;&lt;em&gt;比划&lt;/em&gt;&lt;/span&gt;。让我们一起去&lt;span style=&quot;color: rgb(95, 73, 122);&quot;&gt;畅游&lt;/span&gt;&lt;span style=&quot;color: rgb(84, 141, 212);&quot;&gt;吧&lt;/span&gt;！&lt;/p&gt;', 61, 1, 1, 0, '1439554693', 'Resource2015-08-14/55cddc85baeb9.zip', '游泳技术篇'),
(19, '文学', '&lt;p&gt;&lt;span style=&quot;color: rgb(227, 108, 9);&quot;&gt;&lt;strong&gt;童年&lt;/strong&gt;&lt;/span&gt;的记忆，有个&lt;span style=&quot;color: rgb(95, 73, 122);&quot;&gt;拇指大小的姑娘&lt;/span&gt;，很&lt;span style=&quot;color: rgb(0, 176, 80);&quot;&gt;善良&lt;/span&gt;，&lt;span style=&quot;color: rgb(0, 112, 192);&quot;&gt;大家都很喜欢她&lt;/span&gt;，&lt;span style=&quot;color: rgb(255, 192, 0);&quot;&gt;喜欢请下载资源包！&lt;/span&gt;&lt;/p&gt;', 61, 1, 5, 0, '1439554939', 'Resource2015-08-14/55cddd7bd9701.zip', '拇指姑娘'),
(20, '文学', '&lt;p&gt;fsdfdsfsdfdsf&lt;/p&gt;', 52, 1, 1, 2, '1439779595', 'Resource2015-08-17/55d14b0bef023.zip', 'fdsfsd');

-- --------------------------------------------------------

--
-- 表的结构 `blog_review`
--

CREATE TABLE IF NOT EXISTS `blog_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cateid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_review`
--

INSERT INTO `blog_review` (`id`, `owner`, `sender`, `receiver`, `addtime`, `content`, `cateid`, `pid`, `path`) VALUES
(1, 53, 52, 53, 1439540832, 'sdfghj', 1, 1, '0'),
(2, 61, 61, 61, 1439780276, 'ajkljlk', 0, 8, '0');

-- --------------------------------------------------------

--
-- 表的结构 `blog_role`
--

CREATE TABLE IF NOT EXISTS `blog_role` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名',
  `aids` varchar(128) NOT NULL DEFAULT '' COMMENT '权限ids',
  `aac` text COMMENT '控制器-操作方法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `blog_role`
--

INSERT INTO `blog_role` (`id`, `name`, `aids`, `aac`) VALUES
(6, '主管', '4,5,12,13,14,8,9,11,15,16', 'User-index,Dir-index,Dir-showlist,LogCate-index,Mood-index,Advice-index,News-index'),
(7, '经理', '1,2,17,18,19,3,7,20,21,22,4,5,12,13,14,8,9,11', 'Auth-index,Manager-index,User-index,Role-index,Dir-index,Dir-showlist,LogCate-index,Mood-index,Advice-index,Auth-add,Auth-edit,Auth-delete,Role-distribute,Role-delete,Role-add'),
(8, '员工', '7,4,5,12,13,14', 'User-index,Role-index,LogCate-index,Mood-index,Advice-index');

-- --------------------------------------------------------

--
-- 表的结构 `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 DEFAULT 'user',
  `password` char(32) CHARACTER SET utf8 NOT NULL,
  `sex` tinyint(1) DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `telphone` char(11) CHARACTER SET utf8 DEFAULT NULL,
  `grade` varchar(20) CHARACTER SET utf8 DEFAULT '1',
  `score` int(11) DEFAULT '10',
  `experience` int(11) DEFAULT '100',
  `addtime` int(11) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `vocation` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `onlinetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `blog_user`
--

INSERT INTO `blog_user` (`id`, `username`, `password`, `sex`, `email`, `telphone`, `grade`, `score`, `experience`, `addtime`, `state`, `address`, `birthday`, `vocation`, `department`, `status`, `onlinetime`) VALUES
(52, 'apeng1', 'e10adc3949ba59abbe56e057f20f883e', 2, 'apeng1@qq.com', '13585593461', '1', 1, 200, 1439515776, 1, NULL, '1987-03-01 ', 'php程序员 ', '江西 ', 0, NULL),
(53, 'apeng2', 'e10adc3949ba59abbe56e057f20f883e', 2, 'apeng2@qq.com', '13585593461', '1', 10, 115, 1439532034, 1, NULL, '??? ', '未填写 ', '未填写 ', 0, NULL),
(54, 'apeng3', 'e10adc3949ba59abbe56e057f20f883e', 2, 'apeng3@qq.com', '13585593461', '1', 10, 105, 1439532114, 1, NULL, '1987-03-01', 'php程序员', '上海', 0, NULL),
(55, '王者归来', 'e10adc3949ba59abbe56e057f20f883e', 2, 'apeng4@qq.com', '未填写', '1', 10, 110, 1439532183, 1, NULL, '??? ', '未填写 ', '未填写 ', 0, NULL),
(56, '我来也', 'e10adc3949ba59abbe56e057f20f883e', 2, 'apeng5@qq.com', '未填写', '1', 10, 110, 1439532214, 1, NULL, '??? ', '未填写 ', '未填写 ', 0, NULL),
(57, 'user', 'e10adc3949ba59abbe56e057f20f883e', 0, 'apeng6@qq.com', NULL, '1', 10, 100, 1439532270, 1, NULL, NULL, NULL, NULL, 0, NULL),
(58, 'user', 'e10adc3949ba59abbe56e057f20f883e', 0, 'apeng7@qq.com', NULL, '1', 10, 100, 1439532331, 1, NULL, NULL, NULL, NULL, 0, NULL),
(59, 'user', 'e10adc3949ba59abbe56e057f20f883e', 0, 'apeng8@qq.com', NULL, '1', 10, 105, 1439532370, 1, NULL, NULL, NULL, NULL, 0, NULL),
(60, 'user', 'e10adc3949ba59abbe56e057f20f883e', 0, 'apeng9@qq.com', NULL, '1', 10, 100, 1439532399, 1, NULL, NULL, NULL, NULL, 0, NULL),
(61, '山水', 'e10adc3949ba59abbe56e057f20f883e', 2, 'lishuoshuo225@163.com', '未填写', '1', 41, 130, 1439548343, 1, NULL, '??? ', '未填写 ', '未填写 ', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `blog_visitor`
--

CREATE TABLE IF NOT EXISTS `blog_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `visitor` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `blog_visitor`
--

INSERT INTO `blog_visitor` (`id`, `uid`, `visitor`, `addtime`) VALUES
(1, 52, 53, 1439540010),
(2, 52, 53, 1439540049),
(3, 53, 52, 1439540324),
(4, 52, 53, 1439540331),
(5, 52, 53, 1439540343),
(6, 52, 53, 1439540372),
(7, 52, 53, 1439540408),
(8, 52, 53, 1439540474),
(9, 53, 52, 1439540781),
(10, 52, 61, 1439780299);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
