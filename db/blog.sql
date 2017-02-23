-- 案例表
CREATE TABLE `t_case` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,	-- 标题
  `content` mediumtext NOT NULL, 	-- 正文文字
  `case_type` int(1) not null,		-- 案例类型 0:PC，1:移动
  `case_order` int(5) default 0 not null,		-- 案例顺序
  `list_pic1_path` varchar(500)  NULL, 	-- 列表图片1
  `list_pic2_path` varchar(500)  NULL, 	-- 列表图片2
  `html_title`	varchar(200) null,	-- html页面中title
  `html_keywords` varchar(200) null,-- html页面，meta name="keywords"内容
  `html_desc`	varchar(1000) null,	-- html页面，meta name="description"内容
  `remark`		varchar(1000) null,	-- 备注
  `created_date` date not null,		-- 案例创建时间
  `modified_date` date not null,		-- 案例修改时间
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*新闻列表*/
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL auto_increment,
  `list_title`	   varchar(200) NOT NULL,	-- 列表标题
  `news_order` int(5) default 0 not null,	-- 新闻顺序
  `list_link`   	varchar(500) NOT NULL, 	-- 列表链接
  `list_pic1_path` varchar(500) NOT NULL, 	-- 列表图片1
  `list_pic2_path` varchar(500) NOT NULL, 	-- 列表图片2
  `list_content`   varchar(2000) NOT NULL, 	-- 列表正文文字
  `list_date` 	   date not null,			-- 列表日期
  `title` varchar(500) NOT NULL, 			-- 正文标题
  `html_title`	varchar(200) null,			-- 正文html页面中title
  `html_keywords` varchar(200) null,-- html页面，meta name="keywords"内容
  `html_desc`	varchar(1000) null,	-- html页面，meta name="description"内容
  `read_count` int(11) default 0 NOT NULL, 	-- 阅读数量
  `publish_date`	date NOT NULL,			-- 发布日期
  `content`   mediumtext NOT NULL, 			-- 列表正文文字
  `remark`		varchar(1000) null,			-- 备注
  `created_date` date not null,				-- 新闻创建时间
  `modified_date` date not null,			-- 新闻修改时间
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
