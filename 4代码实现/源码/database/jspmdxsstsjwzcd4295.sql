USE [master]
GO
/****** Object:  Database [jspmxsstglxtdzkf4295]    Script Date: 03/04/2018 21:10:17 ******/
CREATE DATABASE [jspmxsstglxtdzkf4295] ON  PRIMARY 
( NAME = N'jspmxsstglxtdzkf4295', FILENAME = N'E:\mvc程序\jspm学生社团管理系统dzkf4295程序\database\jspmxsstglxtdzkf4295.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jspmxsstglxtdzkf4295_log', FILENAME = N'E:\mvc程序\jspm学生社团管理系统dzkf4295程序\database\jspmxsstglxtdzkf4295_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jspmxsstglxtdzkf4295].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET ARITHABORT OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET AUTO_CLOSE ON
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET  DISABLE_BROKER
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET  READ_WRITE
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET RECOVERY SIMPLE
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET  MULTI_USER
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jspmxsstglxtdzkf4295] SET DB_CHAINING OFF
GO
USE [jspmxsstglxtdzkf4295]
GO
/****** Object:  Table [dbo].[youqinglianjie]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[youqinglianjie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wangzhanmingcheng] [varchar](50) NULL,
	[wangzhi] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[youqinglianjie] ON
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (1, N'百度', N'http://www.baidu.com', CAST(0x0000A899012CFF78 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (2, N'谷歌', N'http://www.google.cn', CAST(0x0000A899012CFF78 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (3, N'新浪', N'http://www.sina.com', CAST(0x0000A899012CFF78 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (4, N'雅虎', N'http://www.yahoo.cn', CAST(0x0000A899012CFF78 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (5, N'腾讯', N'http://www.qq.com', CAST(0x0000A899012CFF78 AS DateTime))
SET IDENTITY_INSERT [dbo].[youqinglianjie] OFF
/****** Object:  Table [dbo].[yonghuzhuce]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yonghuzhuce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[chushengnianyue] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[shoujihao] [varchar](50) NULL,
	[shengao] [varchar](50) NULL,
	[tizhong] [varchar](50) NULL,
	[jiguan] [varchar](50) NULL,
	[xingquaihao] [varchar](50) NULL,
	[xuexiao] [varchar](50) NULL,
	[zhuanye] [varchar](50) NULL,
	[shenfenzheng] [varchar](50) NULL,
	[touxiang] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[gerenlicheng] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[issh] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yonghuzhuce] ON
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [shoujihao], [shengao], [tizhong], [jiguan], [xingquaihao], [xuexiao], [zhuanye], [shenfenzheng], [touxiang], [dizhi], [gerenlicheng], [addtime], [issh]) VALUES (1, N'555', N'555', N'何升高', N'男', N'2012-07-08', N'429489354', N'gsgs@163.com', N'13186835580', N'175', N'57', N'ab', N'hgf', N'发放表', N'还头一回', N'52353253262', N'upload/1333961148718.jpg', N'龙港龙翔路1170号', N'mfgmfgmfg', CAST(0x0000A899010C09F8 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [shoujihao], [shengao], [tizhong], [jiguan], [xingquaihao], [xuexiao], [zhuanye], [shenfenzheng], [touxiang], [dizhi], [gerenlicheng], [addtime], [issh]) VALUES (2, N'leejie', N'leejie', N'李龙', N'男', N'2012-05-21', N'851781333', N'fege@126.com', N'63474337', N'178', N'78', N'发挥发挥', N'黄飞鸿', N'今天预计', N'很绕', N'623632153', N'upload/1333963398718.gif', N'温州飞翔路2号', N'htrjrtjr', CAST(0x0000A899010C09F8 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [shoujihao], [shengao], [tizhong], [jiguan], [xingquaihao], [xuexiao], [zhuanye], [shenfenzheng], [touxiang], [dizhi], [gerenlicheng], [addtime], [issh]) VALUES (3, N'mygod', N'mygod', N'陈德才', N'男', N'2012-02-02', N'870538338', N'gshf@yahoo.com', N'9696556', N'165', N'50', N'不放过班费个', N'犯桃花', N'发过火', N'黄飞鸿', N'33253636', N'upload/1333963445546.gif', N'杭州四季青广场3号', N'hdhffd', CAST(0x0000A899010C09F8 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [shoujihao], [shengao], [tizhong], [jiguan], [xingquaihao], [xuexiao], [zhuanye], [shenfenzheng], [touxiang], [dizhi], [gerenlicheng], [addtime], [issh]) VALUES (4, N'xwxxmx', N'xwxxmx', N'吴江', N'女', N'2012-03-14', N'609577616', N'jrjtr@163.com', N'34437754', N'175', N'75', N'一统江湖', N'具体研究院', N'鸡同鸭讲', N'还让他和', N'215323262', N'upload/1333963661093.jpg', N'上海浦东区22号', N'gfdhth', CAST(0x0000A899010C09F8 AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [shoujihao], [shengao], [tizhong], [jiguan], [xingquaihao], [xuexiao], [zhuanye], [shenfenzheng], [touxiang], [dizhi], [gerenlicheng], [addtime], [issh]) VALUES (5, N'111', N'111', N'陈卫国', N'男', N'1983-03-09', N'2558', N'5837895@qq.com', N'0563-5887979', N'180', N'80', N'个人', N'将根据规划', N'价格已经个', N'加油添酱', N'330302198406032236', N'upload/1488463547154.jpg', N'都是对的所', N'发鬼地方', CAST(0x0000A899016C2EDC AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [shoujihao], [shengao], [tizhong], [jiguan], [xingquaihao], [xuexiao], [zhuanye], [shenfenzheng], [touxiang], [dizhi], [gerenlicheng], [addtime], [issh]) VALUES (6, N'222', N'222', N'王伟', N'男', N'2016-03-24', N'22558', N'239865@qq.com', N'0563-5887979', N'170', N'70', N'好好干', N'合同号', N'哈哈', N'恢复规划', N'330326201308026124', N'upload/1488469830594.jpg', N'浙江宁波', N'是的的飒飒大幅', CAST(0x0000A8990188EAB8 AS DateTime), N'是')
SET IDENTITY_INSERT [dbo].[yonghuzhuce] OFF
/****** Object:  Table [dbo].[xinwentongzhi]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xinwentongzhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [varchar](300) NULL,
	[leibie] [varchar](50) NULL,
	[neirong] [text] NULL,
	[tianjiaren] [varchar](50) NULL,
	[shouyetupian] [varchar](50) NULL,
	[dianjilv] [int] NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xinwentongzhi] ON
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (1, N'望里社区开展拆除违章建筑专项行动', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 为有效遏制乱搭乱建之风，还广大人民群众一个舒适的居住环境。4月22日，望里社区联合镇综合管理大队、城建、规划等单位开展了拆除违法建筑专项整治行动。对辖区内的罗厝村、马鞍村等村十余处违章点进行依法拆除。<BR>&nbsp;&nbsp;&nbsp; 记者在现场看到，这些违章建筑物，都是些竹子和砖块建构的简易棚，这些违章建筑房屋杂乱无章，生活垃圾遍地，这些违章建筑不仅影响了市容市貌，也给旁边的居民居住环境造成极大的影响。这次社区组织工作人员，出动一台大型的挖掘机和100余人对这些违章建筑进行依法拆除。据了解，此次社区拆除违章建筑十余处，面积约2300平方米。<BR>&nbsp;&nbsp;&nbsp; 此次拆除违章扩建房屋，有效制止了违章建筑和破坏村容镇貌的行为，对广大居民起到了宣传教育作用，维护了社区环境，更是给居民带来舒适、整洁、安全的居住环境。(吴连明)<BR>', N'hsg', N'upload/1317085910921.jpg', 42, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (2, N'赤溪征兵宣传进社区', N'社团新闻', N'<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><SPAN><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/76/10817642_327490.jpg" width=610 height=404></SPAN></SPAN></SPAN></DIV>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><SPAN><SPAN><SPAN><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/76/10817641_972011.jpg" width=610 height=404></SPAN></SPAN></SPAN></SPAN></SPAN></DIV>
<DIV align=center>&nbsp;</DIV>
<P><!--epe-->&nbsp;&nbsp;&nbsp; 苍南新闻网7月11日消息：近日，赤溪镇征兵宣传在炎热的夏天中进行，镇有关领导深入五个社区，利用宣传车、分发宣传单等，对今年征兵的有关事项进行大力宣传，提高广大群众对征兵工作的知晓率。（卢孔祥）<SPAN style="DISPLAY: none">&nbsp;</SPAN></P>', N'hsg', N'upload/1317086069593.jpg', 87, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (3, N'九三学社启动“中国梦”主题教育活动', N'社团新闻', N'<P>&nbsp;&nbsp;&nbsp; 苍南新闻网7月29日消息：7月26日，九三学社苍南县委开展“中国梦”主题学习教育活动。县人大常委会副主任、九三学社县委主委王宗泽主持动员会。</P>
<P>&nbsp;&nbsp;&nbsp; 据悉，此次活动包括国防教育活动、“中国梦”主题学习、“中国梦”主题书画创作交流、爱国主义教育、专题辅导讲座以及服务苍南农业、林业转型升级等调研活动。活动自本月起，将贯穿下半年工作。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 活动要求，广大九三学社委员要以邓小平理论、“三个代表”重要思想和科学发展观为指导，以“同心谋发展·共筑中国梦”为主题，认真学习贯彻党的十八大等会议精神，切实加强民主党派人士的思想建设，引导他们坚持正确的政治方向，进一步树立和践行社会主义核心价值体系，为实现中华民族伟大复兴的“中国梦”作出新贡献。</P>
<P>&nbsp;&nbsp;&nbsp; 会上，委员们集中学习了《九三学社中央关于进一步加强组织建设的若干意见》和韩启德主席在九三学社第十三届中央常务委员会第三次会议上的闭幕讲话。（记者 陈薇拉 实习生 林若滢）</P>', N'hsg', N'upload/1317086056687.jpg', 18, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (4, N'钱库镇社区干部环境整治的一天', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 改善农村生态环境是建设美丽家园的重要任务，也是顺应广大农民愿望的民生工程，今年环境整治工作已经成为各项工作的重点，在当前钱库环境整治各项工作排名落后的情况下，钱库的干部如何扭转不利局面？ 近日，记者来到合作社区跟随合作社区主任王建洪了解一天的环境整治工作。<BR>&nbsp;&nbsp;&nbsp; 合作社区产业以布角料、再生棉纺产业为主，环境整体比较脏乱，环境整治工作难度大、范围广、任务重。由于前段时间已经经过了宣传动员，布角市场仍然存在乱搭乱建、门前无序堆放物品、随意停车导致路堵等情况，这天王建洪联系了钱库综合执法大队来到布角市场再一次进行宣传，并拆除了一个乱搭建的简易棚。随后，他又来到一处垃圾死角，由于民工无法完全铲除垃圾，他马上联系铲车进行彻底清理。在清理过程中，还遇到了一户居民主动要求帮助拆违，王建洪显得非常高兴，他告诉我们，随着活动的深入 ，老百姓也非常积极和配合，新街28户需要拆除违建的群众 ，有25户已经主动进行了拆除，老百姓的认可这是他觉得最开心的。在垃圾死角清理后还要进行绿化和美化，他又来到了前几天刚刚铺设好草坪的两处整治点进行再一次查看，而周边的路段和零散的整治点正在进行绿化这也是不能不关心的。在他的车上，我们还看到了他随时带在车上的警示牌、捡垃圾用的钳子等等工具，非常齐全。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 王建洪的一天只是钱库广大干部全力投入环境整治工作的一个缩影 ，在当前基础差、整治范围大、整治点多、资金困难的情况下，钱库广大干部群众发扬了不怕苦、不怕累的精神，连续作战，为扭转钱库环境脏、乱、差的面貌努力奋斗。(鸯鸯 连明)', N'hsg', N'upload/1317085936937.jpg', 84, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (5, N'夏口社区逐步推进城乡环境整治', N'社团新闻', N'<DIV>&nbsp;&nbsp;&nbsp; 2月2日，夏口社区金孟坚书记和县新闻宣传中心、镇卫生院、教委学区等有关领导一起带领全社区干部下村进行地毯式的寻找垃圾死角，同时发动村两委干部挨家挨户做好宣传教育。经过排查，新发现垃圾死角15处，通过出动垃圾车10车次，雇佣农户20人，现已全部清理垃圾5吨。另外发现1处厂房违章，面积比较大，户主答应三天内自行清理，如不清理，社区将采取强制措施。</DIV>', N'hsg', N'upload/1317085922265.jpg', 92, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (6, N'镇委书记杨雷深入社区巡查城乡环境整治进展情况', N'社团新闻', N'<P>&nbsp;&nbsp;&nbsp; 为确保城乡环境整治工作深入开展，有效改城镇面貌，持续提升城镇形象和品位，日前，镇委书记杨雷、副书记杨志敏等一行深入仙居社区各路段巡查环境整治进展情况。</P>
<P>&nbsp;&nbsp;&nbsp; 杨雷一行先后来到雅前、雅中村视察该村的卫生情况，在雅中公路边发现一处违章简易棚，他要求仙居社区跟相关部门联合起来及时进行清除。随后在安居村发现该村居民门前到处晒着布角料，空气中散发出一种刺鼻的味道，他们还把工业污水直接排放到河里，使河水受到污染，他要求社区尽快制定措施，严厉打击此类行为。</P>
<P>&nbsp;&nbsp;&nbsp; 巡查中，杨雷书记要求仙居社区全体干部要认真负责，紧密结合实际制定实施方案，扎实高效推进创卫工作，全员动员，深入查漏补缺、不留死角，对清理后的垃圾死角点要及时的植绿、护绿，力求实效长效，确保城乡环境综合整治工作的成果。(吴连明)</P>
<P>&nbsp;</P>', N'hsg', NULL, 1, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (7, N'首届苍南县“十佳社区医师”公示', N'社团新闻', N'<P>&nbsp;&nbsp;&nbsp; 首届苍南县“十佳社区医师”评选活动自开展以来，得到广大群众的积极响应和广泛参与，投票非常积极踊跃，在此表示衷心地感谢！本次评选通过群众投票、专家评定及评审委员会综合评测，最后评选出十名获选人，现将首届苍南县“十佳社区医师”获选人名单进行公示，接受社会监督。</P>
<P>&nbsp;&nbsp;&nbsp; 一、公示时间：共7天，从公示之日起计算。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 二、反映问题的方式和要求：在公示期限内，任何个人或单位均可通过来信、来电的形式，向县卫生局反映公示对象存在的问题。以个人名义反映问题的，提倡签署真实姓名。以单位名义反映问题的，应加盖公章。反映问题要实事求是，客观公正，反对借机诽谤诬告。</P>
<P>&nbsp;&nbsp;&nbsp; 三、联系科室：县卫生局纪检监察室，电话：64767000；县卫生局医政科，电话：64763412。</P>
<P align=right>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　苍南县卫生局</P>
<P align=right>　　　　　　　　　　　　　　　　　　　　　　　　　　　 　 　2011年3月28日</P>
<P>&nbsp;&nbsp;&nbsp; 附：获选人名单如下（按姓氏笔画为序）：</P>&nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394934_688138.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial>李初浩简介</FONT></STRONG></P>　　<FONT face=Arial>李初浩，男，汉。出生于1975年1月。中共党员，1998年毕业于温州医学院。从事临床医疗工作12年。2007年本科毕业。现就职于龙港镇社区卫生服务中心，主治医师。曾在温州医学院附属第一医院、第三医院进修。多次参加过省，市级急救培训，以及完成四年全科医学规范化培训。多次在上海、杭州、温州等地参加学术活动。曾在《中华医学研究》杂志发表论文《右侧肋骨骨折伴纵隔巨大血肿1例》。多年来兢兢业业，一丝不苟，认真钻研业务，精益求精，工作作风认真踏实，擅长于普外科疾病诊治及手术治疗。并根据自己多年来的临床经验，根据病人的不同病情，采取规范下的个体化治疗，因人施治，有明显的效果。从而更好的服务社区老百姓。</FONT> 
<P>&nbsp;</P>&nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394935_238750.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial>杨文君简介</FONT></STRONG></P>　　<FONT face=Arial>杨文君，男，苍南县龙港镇人，1968年5月13日出生，1990年参加工作，中共党员，学历本科，执业医师，现任龙港镇站前社区卫生服务站长、县农村卫生协会副会长。<BR>　　作为一名基层医务工作者，坚持以病人为中心，时时处处为病人着想，对患者和蔼可亲，更多的是坚守在社区岗位。兢兢业业，急为病人所急，想病人所想，唯有一份执着，只有一份追求。那就是“踏踏实实做人、端端正正行医。”具有良好的医德医风，受到病人和同行的一致好评，在当地群众中具有较高的声望。<BR>　　2003年春季（非典）防治工作中成绩突出，被评为县个人先进者。2007-2009年度被龙港中心卫生院评为先进理事。2009年度被龙港中心卫生院评为先进党员。1996年第二届全国皮肤性病（中华医学会）交流发表论文一篇。1998年在中华医学会妇产科杂志发表论文一篇。1999年至2000年世界创新医学大会发表论文二篇。</FONT> 
<P>&nbsp;</P>&nbsp; <IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394936_946133.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial>杨伟霖简介</FONT></STRONG></P>　　<FONT face=Arial>杨伟霖，男，大学专科，主治医师，中共党员，新安乡人大代表，现任新安乡卫生院院长。长期奋斗在基层卫生院临床医疗第一线，具有丰富的全科医学临床经验和基层卫生院管理经验，发表论文数篇，曾多次到上级医院进修。2000晋升为主治医师，是当时全县农村卫生院中第一位临床类主治医师。擅长急诊医学、心脑血管疾病、儿童哮喘、中西治疗泌尿糸结石及危急重病人的抢救，曾就地成功抢救了20余例过敏性休克病人和多例濒临死亡的病人。特别是2002年卫生院重建以来，评借“一技多能”的特长，带动内、儿、妇、小外科全面发展，使关闭10多年的卫生院重新焕发生机。行医近30年，从未发生医疗事故和医疗差错，深受广大群众的好评。</FONT> 
<P>&nbsp;</P>&nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394937_783645.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial>陈笑亚简介</FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial>陈笑亚，女，36岁，1997年7月参加工作，大学本科学历，主治医师，中共党员，现任宜山中心卫生院儿科主任，在参加工作十余年中，以博爱之心对待病人，医术精湛，擅长治疗小儿呼吸系统和消化系统疾病，率先在县内掌握新知识新技术，救治无数危重患儿，深受广大患儿家属的信任，在专业上成为医院医生的技术骨干。在工作中兢兢业业，任劳任怨，尽心竭力为广大患儿解决疾病上痛苦，经常为了病人的治疗需要放弃休息时间，加班加点。医德高尚，道德操行在患儿家属心中留下了很好的口碑。2003年曾被评为县抗击非典先进个人，2006年和2008年被评为宜山镇优秀共产党员，2009年被评为宜山镇先进工会积极分子，连年被评为院先进工作者。</FONT>&nbsp; </FONT>
<P>&nbsp;</P>&nbsp; &nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394938_099322.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial>林开春简介</FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial>林开春，男，1955年出生，执业医师，赤溪镇卫生院院长。 <BR>　　林开春医师虽然没有受过医学高等教育，但他出生在中医世家，从小受祖父辈的影响，热爱医学事业，他也是自学成才的典范。在青年时期广拜名师，四处求学，不断充实自己的医学理论知识和临床技能，成为一名中西医结合的农村医学人才，并在1995年取得医师资格，2000年评为执业医师。自1977年9月参加工作以来，林医师不断努力刻苦学习医学知识，应用中西医结合理论为我镇人民的健康事业做出了突出的贡献，得到群众的广泛赞誉，并历年来被评为县卫生系统先进个人。<BR>　　林医师自1996年8月担任卫生院院长以来，凭借科学的领导才能为卫生院的发展做出出色的贡献的同时，身兼数职，关心职工，不辞辛劳的工作，得到医院全体职工的充分肯定。</FONT></FONT> 
<P>&nbsp;</P>&nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394939_890974.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial><FONT face=Arial>易会振简介</FONT></FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial><FONT face=Arial>易会振，男，1959年生，大专学历。一九七七年一月参加工作以来，一直从事医疗卫生工作，在工作期间能认真遵守有关国家政策。法规，法令。努力学习业务知识，在几十年医疗生涯中，兢兢业业，勤勤恳恳，积极为广大人民群众，防病治病，三十多年来在临床医疗中未发生医疗责任事故，得到了广大人民群众的好评。一九八五年以来时任南水头卫生院院长，灵溪镇卫生院副院长，现任灵溪镇城西卫生服务站站长，历任灵溪片区卫生协会理事。一九九一年度被评为“县卫生系统先进工作者”和二零零九年度“灵溪片区卫生系统先进工作者”称号。三十多年来在这条卫生战线上，能积极配合和完成上级下达的一切任务，但我要再接再厉，在我有生之年，能更好的为广大人民群众多作贡献。</FONT></FONT></FONT> 
<P>&nbsp;</P>&nbsp; &nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394940_863468.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial><FONT face=Arial>周贤将简介</FONT></FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial><FONT face=Arial>周贤将，男，1966出生于中医外科世家，1987年温州医学院附属二医医士班毕业。1989年温州附二医附外进修，2005年取得湖南中医学院大专毕业证书，同年取得职业医师资格和全科医学岗位证书，2007年完成省农村中医骨干培训并获得资格证书。2002年担任桥墩镇卫生院副院长，2005年聘任温州市中医药学会外科专业委员会委员，2007年担任桥墩中心卫生院医政（医务）科主任，2009年至今任职桥墩中心卫生院副院长。 </FONT></FONT></FONT>
<P>&nbsp;</P>&nbsp; &nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394941_042093.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial>项芳健简介</FONT></FONT></FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial>项芳健，男，出生于1975年10月，1993年7月毕业于浙江省卫生学校，1998年至2001年在浙江医科大学学习并取得医学专科学历，2004年始于苍南县金乡中心卫生院工作，现为金乡中心卫生院内科主治医师。从事临床工作16年，一直以解除病人疾痛为己任，勤勤恳恳工作，获得患者和同事的一致好评。在担任金乡镇南垟村、郑家垟村的责任医生3年来经常放弃个人休息时间下村开展工作，为每户居民建立健康档案，为60岁以上老人健康体检，听心肺、测血压，整理筛选出高血压、糖尿病、肿瘤、肢残疾、精神残等慢性病人。定期为他们检查，指导治疗和康复方案。及时通知辖区内孕妇去医院体检，做好儿童保健和计划免疫工作，得到了广大居民的认可和信任。</FONT></FONT></FONT></FONT> 
<P>&nbsp;</P>&nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394942_817981.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial>侯华美简介</FONT></FONT></FONT></FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial>侯华美，女，汉族，1970年出生，大学本科学历，妇产科主治医师，从事社区妇幼保健工作，现任钱库中心卫生院副院长、政协八届苍南县委员会委员。自1997年以来，一直工作在社区卫生一线岗位上，因工作成绩突出而多次被评为县卫生防疫、妇幼保健先进工作者，县卫生系统先进个人、县公共卫生工作优秀管理者。<BR>　　作为一名社区医疗卫生工作管理者、社区临床医师，她毅然肩负起管理、指导和临床防治工作，以科学发展观为指导，积极探索，从社区卫生科普、健康宣教、疾病防控、妇幼保健、慢病管理到重大公共卫生项目的开展和实施无不率先垂范，出色地完成各项工作和任务，获得良好的社会口碑。</FONT></FONT></FONT></FONT></FONT> 
<P>&nbsp;</P>&nbsp; &nbsp;<IMG height=150 alt="" hspace=10 src="http://pic2.66wz.com/0/10/39/49/10394943_926008.jpg" width=102 align=left vspace=10> 
<P align=left><STRONG><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial>夏敏简介</FONT></FONT></FONT></FONT></FONT> </STRONG></P>　　<FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial><FONT face=Arial>夏敏，男，1972年出生，本科学历，主治医师。1994年毕业于福建医科大学，从此便扎根于农村。17年来，始终以救死扶伤为己任，忠于职守。<BR>　　2000年，到温州市二医进修。不仅圆满完成了学习任务，也获得了带教老师的一致好评。进修归来后，学以致用，尤其在急危重病人的处理上都起到关键的作用。<BR>　　当2003年“非典”无情的肆虐祖国大地2006年桑美席卷马站时，作为科室带头人的毫不犹豫地战斗在第一线，和同事们一起不分昼夜地抢救伤病员，用无畏和奉献守护着家乡人民。<BR>　　近10年来，一直担任医院的内科主任。在繁忙的工作之余，坚持不断地学习、吸收最新的医学知识，撰写的多篇论文在医学杂志上发表。<FONT face=Arial>&nbsp; </FONT><!--function: content() parse end  0ms cost! --></FONT></FONT></FONT></FONT></FONT>', N'hsg', NULL, 54, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (8, N'704名农村、社区宣传员成为排查火患主力军', N'社团新闻', N'<DIV>
<DIV align=center>
<DIV align=center><SPAN><IMG id=no_img height=351 src="http://pic2.66wz.com/0/10/49/15/10491517_255272.jpg" width=470 border=0></SPAN></DIV>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img height=325 src="http://pic2.66wz.com/0/10/49/15/10491518_951516.jpg" width=470 border=0></SPAN><BR>&nbsp;</DIV></DIV>
<P><!--epe-->&nbsp;&nbsp;&nbsp; 12月19日消息：日前，“清剿火患”战役已进入攻坚阶段，我县高度重视宣传效应，在整治的同时进一步营造宣传氛围，充分利用小网格的704名农村、社区消防宣传员优势和作用，吸纳成为“专业”的消防志愿者队伍，积极组织该队伍开展查找身边火患活动，将“清剿火患”战役并入农村、社区“网格化”消防安全管理工作同步开展，扎实推进“清剿火患”战役工作持续、协调、健康发展。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 连日来，无论在熙熙攘攘的商场超市，还是车水马龙的街道集镇；无论是在机器轰鸣的工厂企业，还是在翰墨飘香的中小学校，总会看到一个个身披绶带或是戴着袖标的消防志愿者在发放消防传单、讲授防火逃生知识，提醒市民注意秋季防火，成为苍南街头、单位一道道靓丽的风景线。为保证查找火患本领及宣传达到一定的效果，苍南消防大队针对性组织农村社区消防宣传员进行专业培训，从宣传消防常识到检查火灾隐患都详细做了讲解。每到周末，这704名农村、社区义务消防宣传员积极配合消防部门，多次深入机关、团体、企业、事业单位以及社区、街道、人员密集场所，为辖区市民免费发送《消防法》、《浙江省消防条例》读本和《消防安全常识》、《逃生宝典》等宣传资料。</P>
<P>&nbsp;&nbsp;&nbsp; 此外，704名“专业”消防志愿者还深入车站、集贸市场、超市、学校、宾馆等人员密集场所开展消防宣传，重点宣传火灾中进行自我保护的方法和逃生的基本常识；消防法律、法规及用火、用电、用气防火常识；火灾报警及处置方法等，并向商人、游客、群众发放消防宣传单，传播平安消防理念，增强社会消防安全意识，提高全民消防安全素质，积极营造全民消防的良好氛围，为坚决打赢“清剿火患”战役提供有力保障。截至目前，704名农村、社区消防宣传员共深入各类场所286次，发放宣传资料35000余份，受教育群众达60000余人。</P>
<P>&nbsp;&nbsp;&nbsp; 704名农村、社区消防宣传员在做好“清剿火患”战役宣传的同时，还积极查找火患，他们重点对辖区的“十小场所”、“三房”（通天房、出租房、家庭小作坊），小吃店、菜市场等易燃建筑群火灾隐患进行逐一的详细排查，对农村、社区内居民用火用电的安全防范措施进行面对面的逐一讲解。检查中，农村、社区消防宣传员按照边检测、边指导，边服务、边培训，边发现问题、边提供解决方案的原则，指导社会单位人员熟练操控消防器材，现场解答所提问题。对发现能够当场改正的问题，督促社会单位立即改正，对不能立即改正的，提出工作建议，指导社会单位制定整改计划。并结合近年来发生的典型火灾案例，强调了人员密集场所存在火灾隐患的危害性，就隐患整改工作同单位负责人进行了交流协商，并表示对隐患整改过程中遇到的困难服务队将及时提供指导和帮助。检查指导结束后，农村、社区消防宣传员还将检查情况及时向消防大队反馈，做到有检查、有记录、有反馈，为下一步工作开展做好铺垫。</P>
<P>&nbsp;&nbsp;&nbsp; 通过小网格704名农村、社区消防宣传员的积极参与，有效的查找和消除火灾隐患，深化了“清剿火患”战役宣传工作，形成了全民积极参与消防工作的新格局。（通讯员 窦怀栋）&nbsp;</P></DIV>', N'hsg', NULL, 0, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (9, N'壹加壹受邀参加全国社会组织能力建设系列培训班', N'社团新闻', N'<DIV id=showvideo><!-- rm url is empty!--></DIV>
<DIV class=lh24 id=topic></DIV>
<DIV class=content id=ftcg><!--function content() parse begin-->
<DIV align=center>
<DIV align=center>
<DIV align=center><SPAN><SPAN><IMG id=no_img height=408 src="http://pic2.66wz.com/0/10/62/98/10629811_975617.jpg" width=610 border=0></SPAN></SPAN></DIV>
<DIV align=center><SPAN><SPAN>培训现场</SPAN></SPAN></DIV>
<DIV align=center>&nbsp;</DIV></DIV>
<DIV align=center><SPAN><IMG id=no_img height=408 src="http://pic2.66wz.com/0/10/62/98/10629810_342445.jpg" width=610 border=0></SPAN></DIV>
<DIV align=center>北京社区参与行动服务中心主任（民政部社区建设司建设专家组成员）宋庆华给学员张炳钩颁发结业证书。</DIV>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img height=458 src="http://pic2.66wz.com/0/10/62/98/10629812_711811.jpg" width=610 border=0></SPAN></DIV>
<DIV align=center><SPAN>壹加壹志愿者张炳钩看望身患重病的成都仁爱志愿者负责人敏姐。</SPAN></DIV>
<DIV align=center>&nbsp;</DIV></DIV>
<P><!--epe-->&nbsp;&nbsp;&nbsp; 苍南新闻网8月28日消息：由北京社区参与行动服务中心主办的“中国社会组织领导力能力建设系列培训班”第一期在成都举行，此次系列培训主要培育NGO领导人成为具有影响力的组织领导和推动社区参与式方法传播和运用的培训师。参加此次培训有40多人，其中，壹加壹志愿者张炳钩将和全国其他社会组织等10名学员参加第二期在香港、第三期在北京的系列培训。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 今年以来壹加壹多次参加县外举办的能力建设培训与会议：5月，壹加壹民防志愿者白希直、陈国栋、郑修泉参加由浙江省应急办在绍兴举行为期七天的“浙江省第六期基层应急队伍骨干培训班”；6月，壹加壹红丝带志愿者李发电、蔡美焦、陈洪玲参加由浙江省卫生厅在杭州举行为期两天的中国全球基金艾滋病项目社区参与相关培训；7月，壹加壹孤儿帮教项目志愿者黄剑霞参加由共青团浙江省委在杭州举行为期三天的首期全省关爱行动项目专员培训班；8月，壹加壹空中搜救队队长陈斌受温州市委宣传部的邀请在市图一楼多功能厅做客“温州好人”网上行网络视频互动讲座第四讲，与市民一起分享他多年的公益航拍之路；8月，壹加壹张炳钩受华夏公益服务中心邀请在YY网络会议上主讲“民间应急救援体系建设”，与全国各地公益组织一起讨论如何建设民间应急救援体系。（通讯员 黄春新 /文 林加帅/摄）<SPAN style="DISPLAY: none">）（通讯员 黄春新 /文 林加帅/摄 </SPAN></P></DIV>', N'hsg', NULL, 96, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (10, N'合作社区开展拆违行动', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 为巩固拆违工作成效，防止各类违法建设行为发生,实现“控新拆违”目标。11月6日，由合作社区牵头，组织钱库综合执法大队、国土、住建等部门140人，对浃底园村及望里至新安社区公路沿线的违章建筑予以强制拆除。<BR><BR>&nbsp;&nbsp;&nbsp; 在浃底园村，记者看到，该处违章建筑是单层钢筋混凝土民房，位于一民房与厂房之间，向着道路的一面，违章建筑被一层篷布遮隐，试图蒙混过关。当执法人员掀开篷布后，记者还惊奇的发现，一根高压线也被业主砌进墙体里面，十分危险。据现场执法人员介绍，这6间新增违章民房是半个月前巡查发现的，起初才立柱钉板还没浇溶，当时执法人员下发了《限期自行拆除通知书》，业主口头答应自行拆除，之后却变本加厉，利用双休日等执法空挡，对一层进行砌砖浇溶。对此，合作社区拆违控违绝不手软，在炮头机的轰鸣声中,这6间违章民房被夷为平地。<BR><BR>&nbsp;&nbsp;&nbsp; 随后，联合执法组又对望里至新安社区公路沿线的违章简易棚和废旧的危房进行强制拆除，推进钱库“四边三化”行动。（缪克梯）<BR><BR>', N'hsg', NULL, 97, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (11, N'改善民生是社会发展必然要求', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 调整的可持续性取决于政治安排与民意的契合，契合度越高，改革和调整的动力越足。而政治倾向于民生，不仅关乎民众的财产福利水平和幸福感的提升，实际上也是对经济和社会发展终极意义的完整阐释。
<P>　　全国政协第十一届委员会第四次会议昨天下午在人民大会堂开幕。在回顾去年工作时，贾庆林表示：民生问题不仅是重要的经济问题、社会问题，也是重大政治问题。这一对于民生性质的三个层面的表述，既点出了民生是经济和社会领域发展的重要考量指标，也表明重视并改善民生，将是今后政治生态的发展方向。实际上，这也是经济和社会发展到一定阶段的必然要求。 </P>
<P>　　今年是“十二五”规划的开局之年，因此，两会所肩负的使命就更加重要，所要描绘的政策蓝图也更加长远。在所有的经济和社会发展议题中，民生和社会管理无疑是今年、也是未来很长时间里分量最重的课题。而继续改进民生，进一步优化社会管理，其实就是极为庞大、复杂的经济和社会总资源的良性分配和调整。 </P>
<P>　　这一调整的重要性和急迫性在于，在过去政策资源和经济资源主要集中投放于增长的情况下，一方面，经济增长的成绩有目共睹，并使得多数人已经受益，但是，随着“蛋糕”的做大，社会已递进至财富积累阶段，民生问题也由过去的能否满足温饱供应这一基本诉求，升级为财富能否持续积累。 </P>
<P>　　另一方面，现实情况是，在公共服务、社会总福利水平仍然处于较低标准，财富的可持续积累和公平分配面临新的挑战，由此部分地造成了贫富、机会的代际传承，以及民生的发展速度跟不上经济增长的速度。在利益格局和价值取向趋向多元的今天，这些问题已非简单的经济问题，同时也可能成为社会问题的源头。 </P>
<P>　　经济和社会发展较为健康和较为持久的前提，是经济增长一定不能是排他性增长而是包容性增长，政治价值取向一定不能是狭隘的政绩取向而是民生取向。优化经济增长方式和社会管理方式的课题之所以提出，实际上要解决的就是这一问题。解答这一重大课题，不仅需要在经济领域和社会领域的自我改进，更需要政治领域提供强大的政策和理论支持。这实际上要求的是政治内涵的深化和政策资源对于民生的全方位倾斜。 </P>
<P>　　今年两会的一个重要特点是，分配议题取代增长议题成为代表委员们的主要关注点，而在微观政策层面，新一轮的改革也已胎动。比如，以提高个税起征点为切入口的财税体制改革，准备加快推进的收入分配改革，对通胀的管理和货币政策的灵活运用，对教育、医疗、水煤气电、交通等公共服务的强化，对社会福利保障水平的提升等等。宏观来看，这些改革既是对民众呼声的响应，也是制度跟进的新开端。 </P>
<P>　　通过改革强化民生早已是社会共识，这实际上意味着利益和财富的再调整。调整的可持续性取决于政治安排与民意的契合。契合度越高，改革和调整的动力越足。而政治倾向于民生，不仅关乎民众的财产福利水平和幸福感的提升，实际上也是对经济和社会发展终极意义的完整阐释。 （徐立凡）</P><!-- end_ct -->', N'hsg', NULL, 73, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (12, N'龙港镇江浦社区规范化建设稳步推进', N'社团新闻', N'<DIV align=center>
<DIV align=center><STRONG><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819117_951906.jpg" width=610 height=499></SPAN></STRONG></DIV>
<DIV align=center><STRONG></STRONG>&nbsp;</DIV>
<DIV align=center><STRONG><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819118_772134.jpg" width=610 height=412></SPAN></STRONG></DIV>
<DIV align=center><STRONG></STRONG>&nbsp;</DIV>
<DIV align=center><STRONG><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819119_117533.jpg" width=610 height=431></SPAN></STRONG></DIV>
<DIV align=center><STRONG></STRONG>&nbsp;</DIV>
<DIV align=center><STRONG><SPAN><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819116_256499.jpg" width=610 height=196></SPAN></SPAN></STRONG></DIV>
<DIV align=center><STRONG></STRONG>&nbsp;</DIV>
<DIV align=center><STRONG><SPAN><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819115_674731.jpg" width=610 height=455></SPAN></SPAN></STRONG></DIV>
<DIV align=center><STRONG></STRONG>&nbsp;</DIV></DIV><!--advertisement code begin--><!--advertisement code end-->
<P><STRONG><!--epe-->江浦社区概况</STRONG></P>
<P>&nbsp;&nbsp;&nbsp; 江浦社区地处龙港镇城乡结合部，下辖3村3居，区域面积2.16平方公里，户籍人口22384人，驻辖区行政事业单位3家，中小学校、幼儿园8家，非公企业83家，商农贸市场3个。建有设施齐全、运转规范的便民服务等6大中心，设有市民学校、图书阅览室、文体小广场等公共文化服务设施，是人口集中、服务便捷、交通便利的宜商宜居社区。通过创建，社区先后获得“全国综合减灾示范社区”、浙江省“减灾示范社区”、浙江省示范便民服务中心、温州市综合示范社区、温州市先进基层党组织、温州市学习型党组织、苍南县五星级社区、苍南县级精品便民服务中心等荣誉。</P>
<P><STRONG>创建情况</STRONG></P>
<P>&nbsp;&nbsp;&nbsp; 江浦社区本着“建设更规范、服务更优质、生活更美好”的理念，以“硬件达标与软件规范相结合、特色示范与星级管理相结合、品牌创建与创新发展相结合”的创建思路，以“同心家园，幸福江浦”为主题，紧扣“党建强区、服务优区、法治安区、文化活区”目标，以“四个打造”为主线，整体推进江浦规范化建设。</P>
<P>&nbsp;&nbsp;&nbsp; （一）打造“先锋江浦”，唱红爱民增辉曲。创新党建工作模式。以区域化党建为抓手，围绕社区大党委、1+3轮值书记、党代表工作室等载体，成立龙港镇首家社区共建理事会，建立社区党建联席、工作询问、党代表接待日等机制。一年来，共召开联席会、询问会7次，征集建议意见37条，解决环境整治等问题29个；党代表工作室接待居民18批次，提交提案议案6件，开展代表视察5次，有效推进社区共筑共建。创新党员争优模式。以“为党旗增辉”为主题，围绕争种“红色责任田”、“一句话承诺”、义工服务等内容，建立社区党员先锋档案，开展“政策宣传入心”、“社区事务关心”、“入户恳谈交心”、“结对帮扶暖心”、“服务群众贴心”等“五心”先锋活动。一年来，共组织开展“四边三化﹒党员先行”、“关爱儿童﹒助学助长”等活动20多次，为雅安灾区、留守儿童等捐献党员关爱基金2.84万元，评出“五心先锋党员”34名。</P>
<P>&nbsp;&nbsp;&nbsp; （二）打造“温暖江浦”，唱好便民关爱曲。依托便民服务中心、志愿者服务工作站及商家服务网络等三大平台，构建独具江浦特色的“3式”便民立体网络。“零距离一站式”服务。以“微笑·零距离”为主题，通过“办事大厅轮值主任”、服务AB岗等活动，代办承办民政、计生等83项公共事务；截止6月，共服务、接待居民5000多人次，办理公共事项2032件，走访贫困户、孤寡老人、病残家庭等97户，发放暖心基金317720元。“面对面参与式”服务。以“我参与、我快乐”为主题，通过服务积分卡、争当志愿星等方式，发动居民参与志愿服务；目前，已有青年、巾帼、夕阳红、民兵应急、党员服务队等志愿组织21个，开展“情系孤寡”、“爱心义诊”等志愿服务50多次。“一刻钟菜单式”服务。以“江浦帮你忙”为主题，整合96345平台、村邮站等资源，通过绘制社区电子地图、开通便民服务热线、公布服务目录、发放便民服务卡等方式，打造一刻钟商家服务网络，使居民就近享受社区服务；目前，已有卫生医疗、家电维修、送气送水、家政服务、代办代缴等20多家网点参与服务。</P>
<P>&nbsp;&nbsp;&nbsp; （三）打造“平安江浦”，唱响安民和谐曲。调解纠纷促平安。以“网格化管理、幢长式服务”为基础，建立由1名驻村干部、1名法律顾问和2名专职调解员参与的“112”调解模式，发挥332名楼幢长信息员、宣传员、调解员等“一人多岗”积极作用，及时掌握信息动态，最大限度的把矛盾纠纷化解在社区、解决在萌芽状态。一年来，共排查调处矛盾纠纷27件、成功27件。巡逻防控保平安。以“幢长为主，居民配合”的格局，组建社区邻里巡逻队，常年在夜间12点到凌晨5点，坚持义务巡逻，节假日则对商农贸市场等重点区域开展全天巡逻，在志愿巡逻、邻里守望中为居民提供响应式保护，为社区治安防控构筑了一道坚固的人民防线。应急演练学平安。以“生命无价﹒关爱不息”为主题，坚持开展每年至少一次的应急疏散演练，通过减灾、防灾、避灾、自救的演习，提高居民的安全意识和逃生能力。一年来，共组织开展抗台防灾、消防安全等演练2次，近1500余名社区居民参与了演练活动。</P>
<P>&nbsp;&nbsp;&nbsp; （四）打造“活力江浦”，唱好乐民融合曲。以“文化宣教滋养居民、文体活动凝聚居民、社团培育惠及居民”为目的，实施社区文化“三大计划”，切实提升居民归属感、融洽度。实施“居民素养”计划。依托社区阅览室、市民学校等平台，开展“书香江浦”主题活动，开辟“春泥园地”、“科普角”，成立浙江省首个“社区禁毒图书角”，社区现有图书4000多册；举办“道德根文化”、“文明社交礼仪”等主题宣讲7次；通过“自学”+“授课”方式，促进居民素质提升，引导居民向市民化转变。实施“多元文体”计划。以满足居民文化需要为切入点，开展形式多样、居民喜闻乐见的文体活动。通过购买服务方式，引进社会培训机构，举办居民实用技能培训，共办电脑、缝纫等培训5班次；通过社区文化节、邻居节、幸福列车进村居等载体，开展乒乓友谊赛、象棋赛等形式多样的文体活动50多次，真正做到让“泥腿子”动起来，“土文化”活起来。实施“队伍培育”计划。从培养居民的兴趣爱好着手，通过挖掘文体骨干、培育文体团队等，不断输入社团新鲜血液，逐步形成具有江浦特色的文化队伍。目前，社区常年活跃着“夕阳红”、“腰鼓队”、“戏曲队”等文体队伍18支。</P>
<P><STRONG>工作设想</STRONG></P>
<P>&nbsp;&nbsp;&nbsp; 江浦社区将围绕“在巩固中提升，在提升中创新，在创新中超越”的工作方针，突出“四个立足”，力求江浦规范化建设新突破。一是立足“融”字，推进社区共建联创。积极尝试社区创建进小区、入企业的联动共建机制，打造“亲和江浦135”项目，全方位、立体式推进人社、村社的融合。二是立足“优”字，提升社区服务功能。深化推进社区“一平台一载体一家园”建设，进一步完善“一刻钟社区服务圈”、邻里关爱互助平台建设。三是立足“稳”字，推进社区有序建设。探索政府行政管理和社区自治管理衔接的有效途径，深化“八网合一”管理模式，推行社区“四个一”平台建设。四是立足“筹”字，探索社区投入机制。积极探索多渠道、多元化投入机制，尝试建立“谁投入、谁受益”的共建共投机制，保障社区建设和运行的资金需求。</P>
<P>&nbsp;&nbsp;&nbsp; 新的起点，新的使命。江浦将以示范社区“互学互比”为契机，以心怀民生不懈怠、创先争优不放松的决心，加倍努力、奋勇前行，力创示范社区工作新局面，为建设和谐、幸福江浦交上一份满意答卷。</P>', N'hsg', NULL, 101, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (13, N'合作社区加大力度排查棉纺厂消防安全', N'社团新闻', N'　　7月10日，合作社区联合望里消防专职队在南北岙村加大对棉纺厂消防安全排查工作，全力排查安全生产隐患。 <BR>　　连日来，钱库镇普遍高温少雨、天气炎热，火灾事故易发、频发，棉纺厂等企业一旦引发火灾，后果将不堪设想。合作社区联合望里消防专职队对南北岙村20多家棉纺厂进行消防安全整改回访中发现其中4家棉纺厂整改力度不到位，仍存在极大隐患。执法人员当场对该类工厂下发整改通知，督促其限期整改。 <BR>　　为坚决遏制火灾多发态势，加强炎热天气火灾防控工作，合作社区坚决从实际出发，保护城乡居民财产安全，提高消防安全意识。（李常&nbsp;杨伟伟）&nbsp;', N'hsg', NULL, 5, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (14, N'合作社区做好平安建设宣传工作', N'社团新闻', N'<DIV>&nbsp;&nbsp;&nbsp; 近日，钱库普遍高温，烈日炙烤着大地，平安建设宣传工作尤显得重要。为提高群众安全意识，避免意外的发生，同时也为深入推进“平安钱库”建设，全面掀起平安创建新高潮。7月31日，合作社区出动各驻村干部和9名社区干部一同下村进行平安建设宣传。宣传平安社区建设，并入户宣传讲解，加深居民对平安建设工作的认识，提醒居民提高自身安全防患意识，严厉打击盗窃等犯罪行为，保障自身和家人的生命财产安全。同时，提醒辖区居民商户积极做好自身治安防范，一旦遇到问题就及时与社区取得联系。虽然烈日炎炎，宣传队伍人人挥汗如雨，但干部们坚持发放完全部宣传单。</DIV>&nbsp;&nbsp;&nbsp; 据悉，此次活动，社区共发放宣传资料3000余份，入户入店700余户。通过宣传进一步增强了广大群众的平安建设意识，推进了平安建设常识普及化,同时也进一步提升了平安建设宣传工作社会化水平。宣传单的内容还附录了“平安三率”调查测评问题，以此来评测各村居民们对安全意识的重视程度，切实增强群众安全感满意度、知晓率、参与率和政府守信度满意率。', N'hsg', NULL, 30, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (15, N'望里社区开展环境综合整治暨拆违大行动', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 9月4日，望里社区组织开展“四边三化”环境综合整治行动暨拆违行动，对位于南茶寮村菜市场周边的违章搭建简易棚、雨棚等现象进行集中整治。<BR>&nbsp;&nbsp;&nbsp; 为巩固前阶段环境整治工作成效与有效遏制违法违章用地行为，望里社区联合镇村规划建设、城镇综合管理执法大队、望里城建执法中队、望里环卫所、南茶寮村两委干部等约70余人，对位于南茶寮村望里二小边的违法占地经营的水果摊及菜市场外周边违法搭建的铁板雨棚开展整治行动。<BR>&nbsp;&nbsp;&nbsp; 记者在现场看到，二小边的水果摊搭建在小巷子里面，在四栋民房的包围之中，空间有限、安全隐患大。据了解，二小边水果摊的违法占地经营现象是已经存在了二十多年，对周边房屋的逃生通道造成了极大的影响，通过前期发放通知单和做相关的思想工作，拆违行动较顺利的完成，也得到了周围群众的支持。（许方椽、吴连明）', N'hsg', NULL, 8, CAST(0x0000A899015287AC AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (91, N'切实规范残疾车营运', N'规章制度', N'<P>&nbsp;&nbsp;&nbsp; 近几天在县城随便走走，到处可见残疾车在大街小巷窜来窜去，这个现象和我们的城市形象大相径庭。前些年整治后，残疾车几乎到了绝迹的地步，可如今残疾车营运卷土重来，越演越烈，当年整治成果已经不保。同时，一些残疾车随意闯红灯、占道超车、掉头拐弯，造成大量刮擦拥堵，严重影响了正常交通秩序。希望有关部门认真管一管。 （小陈）</P>', N'hsg', N'upload/1317085910921.jpg', 49, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (92, N'营业性演出管理条例（国务院令第439号）', N'规章制度', N'<TABLE height=293 width=834 border=0>
<TBODY>
<TR>
<TD class=s-18 align=middle height=53><B><FONT class=s-18-z color=#006666><FONT color=#000707 size=6>营业性演出管理条例（国务院令第439号）</FONT> </FONT></B></TD></TR>
<TR>
<TD class=s-18 align=middle><B><FONT class=s-14 color=#006666></FONT></B></TD></TR>
<TR align=middle>
<TD class=s-12></TD></TR>
<TR>
<TD class=s-12>
<TABLE width="100%" border=0>
<TBODY>
<TR>
<TD><FONT id=zoom>
<P>&nbsp;<SPAN>　　（</SPAN><SPAN>2005</SPAN><SPAN>年</SPAN><SPAN>7</SPAN><SPAN>月</SPAN><SPAN>7</SPAN><SPAN>日</SPAN><SPAN>中华人民共和国国务院令第</SPAN><SPAN>439</SPAN><SPAN>号公布　根据</SPAN><SPAN>2008</SPAN><SPAN>年</SPAN><SPAN>7</SPAN><SPAN>月</SPAN><SPAN>22</SPAN><SPAN>日</SPAN><SPAN>《国务院关于修改〈营业性演出管理条例〉的决定》修订）</SPAN></P>
<P align=center><SPAN>第一章　总　　则</SPAN></P>
<P><SPAN>　　第一条　为了加强对营业性演出的管理，促进文化产业的发展，繁荣社会主义文艺事业，满足人民群众文化生活的需要，促进社会主义精神文明建设，制定本条例。</SPAN></P>
<P><SPAN>　　第二条　本条例所称营业性演出，是指以营利为目的为公众举办的现场文艺表演活动。</SPAN></P>
<P><SPAN>　　第三条　营业性演出必须坚持为人民服务、为社会主义服务的方向，把社会效益放在首位、实现社会效益和经济效益的统一，丰富人民群众的文化生活。</SPAN></P>
<P><SPAN>　　第四条　国家鼓励文艺表演团体、演员创作和演出思想性艺术性统一、体现民族优秀文化传统、受人民群众欢迎的优秀节目，鼓励到农村、工矿企业演出和为少年儿童提供免费或者优惠的演出。</SPAN></P>
<P><SPAN>　　第五条　国务院文化主管部门主管全国营业性演出的监督管理工作。国务院公安部门、工商行政管理部门在各自职责范围内，主管营业性演出的监督管理工作。</SPAN></P>
<P><SPAN>　　县级以上地方人民政府文化主管部门负责本行政区域内营业性演出的监督管理工作。县级以上地方人民政府公安部门、工商行政管理部门在各自职责范围内，负责本行政区域内营业性演出的监督管理工作。</SPAN></P>
<P align=center><SPAN>第二章　营业性演出经营主体的设立</SPAN></P>
<P><SPAN>　　第六条　设立文艺表演团体，应当有与其演出业务相适应的专职演员和器材设备。</SPAN></P>
<P><SPAN>　　设立演出经纪机构，应当有</SPAN><SPAN>3</SPAN><SPAN>名以上专职演出经纪人员和与其业务相适应的资金。</SPAN></P>
<P><SPAN>　　第七条　设立文艺表演团体，应当向县级人民政府文化主管部门提出申请；设立演出经纪机构，应当向省、自治区、直辖市人民政府文化主管部门提出申请。文化主管部门应当自受理申请之日起</SPAN><SPAN>20</SPAN><SPAN>日内作出决定。批准的，颁发营业性演出许可证；不批准的，应当书面通知申请人并说明理由。</SPAN></P>
<P><SPAN>　　申请人取得营业性演出许可证后，应当持许可证依法到工商行政管理部门办理注册登记，领取营业执照。</SPAN></P>
<P><SPAN>　　第八条　设立演出场所经营单位，应当依法到工商行政管理部门办理注册登记，领取营业执照，并依照有关消防、卫生管理等法律、行政法规的规定办理审批手续。</SPAN></P>
<P><SPAN>　　演出场所经营单位应当自领取营业执照之日起</SPAN><SPAN>20</SPAN><SPAN>日内向所在地县级人民政府文化主管部门备案。</SPAN></P>
<P><SPAN>　　第九条　文艺表演团体和演出经纪机构变更名称、住所、法定代表人或者主要负责人、营业性演出经营项目，应当向原发证机关申请换发营业性演出许可证，并依法到工商行政管理部门办理变更登记。</SPAN></P>
<P><SPAN>　　演出场所经营单位变更名称、住所、法定代表人或者主要负责人，应当依法到工商行政管理部门办理变更登记，并向原备案机关重新备案。</SPAN></P>
<P><SPAN>　　第十条　以从事营业性演出为职业的个体演员（以下简称个体演员）和以从事营业性演出的居间、代理活动为职业的个体演出经纪人（以下简称个体演出经纪人），应当依法到工商行政管理部门办理注册登记，领取营业执照。</SPAN></P>
<P><SPAN>　　个体演员、个体演出经纪人应当自领取营业执照之日起</SPAN><SPAN>20</SPAN><SPAN>日内向所在地县级人民政府文化主管部门备案。</SPAN></P>
<P><SPAN>　　第十一条　外国投资者可以与中国投资者依法设立中外合资经营、中外合作经营的演出经纪机构、演出场所经营单位；不得设立中外合资经营、中外合作经营、外资经营的文艺表演团体，不得设立外资经营的演出经纪机构、演出场所经营单位。</SPAN></P>
<P><SPAN>　　设立中外合资经营的演出经纪机构、演出场所经营单位，中国合营者的投资比例应当不低于</SPAN><SPAN>51%</SPAN><SPAN>；设立中外合作经营的演出经纪机构、演出场所经营单位，中国合作者应当拥有经营主导权。</SPAN></P>
<P><SPAN>　　设立中外合资经营、中外合作经营的演出经纪机构、演出场所经营单位，应当通过省、自治区、直辖市人民政府文化主管部门向国务院文化主管部门提出申请；省、自治区、直辖市人民政府文化主管部门应当自收到申请之日起</SPAN><SPAN>20</SPAN><SPAN>日内出具审查意见报国务院文化主管部门审批。国务院文化主管部门应当自收到省、自治区、直辖市人民政府文化主管部门的审查意见之日起</SPAN><SPAN>20</SPAN><SPAN>日内作出决定。批准的，颁发营业性演出许可证；不批准的，应当书面通知申请人并说明理由。申请人应当在取得营业性演出许可证后，依照有关外商投资的法律、法规的规定办理审批手续。</SPAN></P>
<P><SPAN>　　第十二条　香港特别行政区、澳门特别行政区的投资者可以在内地投资设立合资、合作、独资经营的演出经纪机构、演出场所经营单位；香港特别行政区、澳门特别行政区的演出经纪机构可以在内地设立分支机构。</SPAN></P>
<P><SPAN>　　台湾地区的投资者可以在内地投资设立合资、合作经营的演出经纪机构、演出场所经营单位，但内地合营者的投资比例应当不低于</SPAN><SPAN>51%</SPAN><SPAN>，内地合作者应当拥有经营主导权；不得设立合资、合作、独资经营的文艺表演团体和独资经营的演出经纪机构、演出场所经营单位。</SPAN></P>
<P><SPAN>　　本条规定的审批手续依照本条例第十一条第三款的规定办理。</SPAN></P>
<P align=center><SPAN>第三章　营业性演出规范</SPAN></P>
<P><SPAN>　　第十三条　文艺表演团体、个体演员可以自行举办营业性演出，也可以参加营业性组台演出。</SPAN></P>
<P><SPAN>　　营业性组台演出应当由演出经纪机构举办；但是，演出场所经营单位可以在本单位经营的场所内举办营业性组台演出。</SPAN></P>
<P><SPAN>　　演出经纪机构可以从事营业性演出的居间、代理、行纪活动；个体演出经纪人只能从事营业性演出的居间、代理活动。</SPAN></P>
<P><SPAN>　　第十四条　举办营业性演出，应当向演出所在地县级人民政府文化主管部门提出申请。县级人民政府文化主管部门应当自受理申请之日起</SPAN><SPAN>3</SPAN><SPAN>日内作出决定。对符合本条例第二十六条规定的，发给批准文件；对不符合本条例第二十六条规定的，不予批准，书面通知申请人并说明理由。</SPAN></P>
<P><SPAN>　　第十五条　除演出经纪机构外，其他任何单位或者个人不得举办外国的或者香港特别行政区、澳门特别行政区、台湾地区的文艺表演团体、个人参加的营业性演出。但是，文艺表演团体自行举办营业性演出，可以邀请外国的或者香港特别行政区、澳门特别行政区、台湾地区的文艺表演团体、个人参加。</SPAN></P>
<P><SPAN>　　举办外国的或者香港特别行政区、澳门特别行政区、台湾地区的文艺表演团体、个人参加的营业性演出，应当符合下列条件：</SPAN></P>
<P><SPAN>　　（一）有与其举办的营业性演出相适应的资金；</SPAN></P>
<P><SPAN>　　（二）有</SPAN><SPAN>2</SPAN><SPAN>年以上举办营业性演出的经历；</SPAN></P>
<P><SPAN>　　（三）举办营业性演出前</SPAN><SPAN>2</SPAN><SPAN>年内无违反本条例规定的记录。</SPAN></P>
<P><SPAN>　　第十六条　举办外国的文艺表演团体、个人参加的营业性演出，在非歌舞娱乐场所进行的，演出举办单位应当向国务院文化主管部门提出申请；在歌舞娱乐场所进行的，演出举办单位应当向演出所在地省、自治区、直辖市人民政府文化主管部门提出申请。</SPAN></P>
<P><SPAN>　　举办香港特别行政区、澳门特别行政区的文艺表演团体、个人参加的营业性演出，演出举办单位应当向演出所在地省、自治区、直辖市人民政府文化主管部门提出申请；举办台湾地区的文艺表演团体、个人参加的营业性演出，演出举办单位应当向国务院文化主管部门会同国务院有关部门规定的审批机关提出申请。</SPAN></P>
<P><SPAN>　　国务院文化主管部门或者省、自治区、直辖市人民政府文化主管部门应当自受理申请之日起</SPAN><SPAN>20</SPAN><SPAN>日内作出决定。对符合本条例第二十六条规定的，发给批准文件；对不符合本条例第二十六条规定的，不予批准，书面通知申请人并说明理由。</SPAN></P>
<P><SPAN>　　第十七条　申请举办营业性演出，提交的申请材料应当包括下列内容：</SPAN></P>
<P><SPAN>　　（一）演出名称、演出举办单位和参加演出的文艺表演团体、演员；</SPAN></P>
<P><SPAN>　　（二）演出时间、地点、场次；</SPAN></P>
<P><SPAN>　　（三）节目及其视听资料。</SPAN></P>
<P><SPAN>　　申请举办营业性组台演出，还应当提交文艺表演团体、演员同意参加演出的书面函件。</SPAN></P>
<P><SPAN>　　营业性演出需要变更申请材料所列事项的，应当分别依照本条例第十四条、第十六条规定重新报批。</SPAN></P>
<P><SPAN>　　第十八条　演出场所经营单位提供演出场地，应当核验演出举办单位取得的批准文件；不得为未经批准的营业性演出提供演出场地。</SPAN></P>
<P><SPAN>　　第十九条　演出场所经营单位应当确保演出场所的建筑、设施符合国家安全标准和消防安全规范，定期检查消防安全设施状况，并及时维护、更新。</SPAN></P>
<P><SPAN>　　演出场所经营单位应当制定安全保卫工作方案和灭火、应急疏散预案。</SPAN></P>
<P><SPAN>　　演出举办单位在演出场所进行营业性演出，应当核验演出场所经营单位的消防安全设施检查记录、安全保卫工作方案和灭火、应急疏散预案，并与演出场所经营单位就演出活动中突发安全事件的防范、处理等事项签订安全责任协议。</SPAN></P>
<P><SPAN>　　第二十条　在公共场所举办营业性演出，演出举办单位应当依照有关安全、消防的法律、行政法规和国家有关规定办理审批手续，并制定安全保卫工作方案和灭火、应急疏散预案。演出场所应当配备应急广播、照明设施，在安全出入口设置明显标识，保证安全出入口畅通；需要临时搭建舞台、看台的，演出举办单位应当按照国家有关安全标准搭建舞台、看台，确保安全。</SPAN></P>
<P><SPAN>　　第二十一条　审批临时搭建舞台、看台的营业性演出时，文化主管部门应当核验演出举办单位的下列文件：</SPAN></P>
<P><SPAN>　　（一）依法验收后取得的演出场所合格证明；</SPAN></P>
<P><SPAN>　　（二）安全保卫工作方案和灭火、应急疏散预案；</SPAN></P>
<P><SPAN>　　（三）依法取得的安全、消防批准文件。</SPAN></P>
<P><SPAN>　　第二十二条　演出场所容纳的观众数量应当报公安部门核准；观众区域与缓冲区域应当由公安部门划定，缓冲区域应当有明显标识。</SPAN></P>
<P><SPAN>　　演出举办单位应当按照公安部门核准的观众数量、划定的观众区域印制和出售门票。</SPAN></P>
<P><SPAN>　　验票时，发现进入演出场所的观众达到核准数量仍有观众等待入场的，应当立即终止验票并同时向演出所在地县级人民政府公安部门报告；发现观众持有观众区域以外的门票或者假票的，应当拒绝其入场并同时向演出所在地县级人民政府公安部门报告。</SPAN></P>
<P><SPAN>　　第二十三条　任何人不得携带传染病病原体和爆炸性、易燃性、放射性、腐蚀性等危险物质或者非法携带枪支、弹药、管制器具进入营业性演出现场。</SPAN></P>
<P><SPAN>　　演出场所经营单位应当根据公安部门的要求，配备安全检查设施，并对进入营业性演出现场的观众进行必要的安全检查；观众不接受安全检查或者有前款禁止行为的，演出场所经营单位有权拒绝其进入。</SPAN></P>
<P><SPAN>　　第二十四条　演出举办单位应当组织人员落实营业性演出时的安全、消防措施，维护营业性演出现场秩序。</SPAN></P>
<P><SPAN>　　演出举办单位和演出场所经营单位发现营业性演出现场秩序混乱，应当立即采取措施并同时向演出所在地县级人民政府公安部门报告。</SPAN></P>
<P><SPAN>　　第二十五条　演出举办单位不得以政府或者政府部门的名义举办营业性演出。</SPAN></P>
<P><SPAN>　　营业性演出不得冠以“中国”、“中华”、“全国”、“国际”等字样。</SPAN></P>
<P><SPAN>　　营业性演出广告内容必须真实、合法，不得误导、欺骗公众。</SPAN></P>
<P><SPAN>　　第二十六条　营业性演出不得有下列情形：</SPAN></P>
<P><SPAN>　　（一）反对宪法确定的基本原则的；</SPAN></P>
<P><SPAN>　　（二）危害国家统一、主权和领土完整，危害国家安全，或者损害国家荣誉和利益的；</SPAN></P>
<P><SPAN>　　（三）煽动民族仇恨、民族歧视，侵害民族风俗习惯，伤害民族感情，破坏民族团结，违反宗教政策的；</SPAN></P>
<P><SPAN>　　（四）扰乱社会秩序，破坏社会稳定的；</SPAN></P>
<P><SPAN>　　（五）危害社会公德或者民族优秀文化传统的；</SPAN></P>
<P><SPAN>　　（六）宣扬淫秽、色情、邪教、迷信或者渲染暴力的；</SPAN></P>
<P><SPAN>　　（七）侮辱或者诽谤他人，侵害他人合法权益的；</SPAN></P>
<P><SPAN>　　（八）表演方式恐怖、残忍，摧残演员身心健康的；</SPAN></P>
<P><SPAN>　　（九）利用人体缺陷或者以展示人体变异等方式招徕观众的；</SPAN></P>
<P><SPAN>　　（十）法律、行政法规禁止的其他情形。</SPAN></P>
<P><SPAN>　　第二十七条　演出场所经营单位、演出举办单位发现营业性演出有本条例第二十六条禁止情形的，应当立即采取措施予以制止并同时向演出所在地县级人民政府文化主管部门、公安部门报告。</SPAN></P>
<P><SPAN>　　第二十八条　参加营业性演出的文艺表演团体、主要演员或者主要节目内容等发生变更的，演出举办单位应当及时告知观众并说明理由。观众有权退票。</SPAN></P>
<P><SPAN>　　演出过程中，除因不可抗力不能演出的外，演出举办单位不得中止或者停止演出，演员不得退出演出。</SPAN></P>
<P><SPAN>　　第二十九条　演员不得以假唱欺骗观众，演出举办单位不得组织演员假唱。任何单位或者个人不得为假唱提供条件。</SPAN></P>
<P><SPAN>　　演出举办单位应当派专人对演出进行监督，防止假唱行为的发生。</SPAN></P>
<P><SPAN>　　第三十条　营业性演出经营主体应当对其营业性演出的经营收入依法纳税。</SPAN></P>
<P><SPAN>　　演出举办单位在支付演员、职员的演出报酬时应当依法履行税款代扣代缴义务。</SPAN></P>
<P><SPAN>　　第三十一条　募捐义演的演出收入，除必要的成本开支外，必须全部交付受捐单位；演出举办单位、参加演出的文艺表演团体和演员、职员，不得获取经济利益。</SPAN></P>
<P><SPAN>　　第三十二条　任何单位或者个人不得伪造、变造、出租、出借或者买卖营业性演出许可证、批准文件或者营业执照，不得伪造、变造营业性演出门票或者倒卖伪造、变造的营业性演出门票。</SPAN></P>
<P align=center><SPAN>第四章　监督管理</SPAN></P>
<P><SPAN>　　第三十三条　除文化主管部门依照国家有关规定对体现民族特色和国家水准的演出给予补助外，各级人民政府和政府部门不得资助、赞助或者变相资助、赞助营业性演出，不得用公款购买营业性演出门票用于个人消费。</SPAN></P>
<P><SPAN>　　第三十四条　文化主管部门应当加强对营业性演出的监督管理。</SPAN></P>
<P><SPAN>　　演出所在地县级人民政府文化主管部门对外国的或者香港特别行政区、澳门特别行政区、台湾地区的文艺表演团体、个人参加的营业性演出和临时搭建舞台、看台的营业性演出，应当进行实地检查；对其他营业性演出，应当进行实地抽样检查。</SPAN></P>
<P><SPAN>　　第三十五条　县级以上地方人民政府文化主管部门应当充分发挥文化执法机构的作用，并可以聘请社会义务监督员对营业性演出进行监督。</SPAN></P>
<P><SPAN>　　任何单位或者个人可以采取电话、手机短信等方式举报违反本条例规定的行为。县级以上地方人民政府文化主管部门应当向社会公布举报电话，并保证随时有人接听。</SPAN></P>
<P><SPAN>　　县级以上地方人民政府文化主管部门接到社会义务监督员的报告或者公众的举报，应当作出记录，立即赶赴现场进行调查、处理，并自处理完毕之日起</SPAN><SPAN>7</SPAN><SPAN>日内公布结果。</SPAN></P>
<P><SPAN>　　县级以上地方人民政府文化主管部门对作出突出贡献的社会义务监督员应当给予表彰；公众举报经调查核实的，应当对举报人给予奖励。</SPAN></P>
<P><SPAN>　　第三十六条　公安部门对其依照有关法律、行政法规和国家有关规定批准的营业性演出，应当在演出举办前对营业性演出现场的安全状况进行实地检查；发现安全隐患的，在消除安全隐患后方可允许进行营业性演出。</SPAN></P>
<P><SPAN>　　公安部门可以对进入营业性演出现场的观众进行必要的安全检查；发现观众有本条例第二十三条第一款禁止行为的，在消除安全隐患后方可允许其进入。</SPAN></P>
<P><SPAN>　　公安部门可以组织警力协助演出举办单位维持营业性演出现场秩序。</SPAN></P>
<P><SPAN>　　第三十七条　公安部门接到观众达到核准数量仍有观众等待入场或者演出秩序混乱的报告后，应当立即组织采取措施消除安全隐患。</SPAN></P>
<P><SPAN>　　第三十八条　承担现场管理检查任务的公安部门和文化主管部门的工作人员进入营业性演出现场，应当出示值勤证件。</SPAN></P>
<P><SPAN>　　第三十九条　文化主管部门依法对营业性演出进行监督检查时，应当将监督检查的情况和处理结果予以记录，由监督检查人员签字后归档。公众有权查阅监督检查记录。</SPAN></P>
<P><SPAN>　　第四十条　文化主管部门、公安部门和其他有关部门及其工作人员不得向演出举办单位、演出场所经营单位索取演出门票。</SPAN></P>
<P><SPAN>　　第四十一条　国务院文化主管部门和省、自治区、直辖市人民政府文化主管部门，对在农村、工矿企业进行演出以及为少年儿童提供免费或者优惠演出表现突出的文艺表演团体、演员，应当给予表彰，并采取多种形式予以宣传。</SPAN></P>
<P><SPAN>　　国务院文化主管部门对适合在农村、工矿企业演出的节目，可以在依法取得著作权人许可后，提供给文艺表演团体、演员在农村、工矿企业演出时使用。</SPAN></P>
<P><SPAN>　　文化主管部门实施文艺评奖，应当适当考虑参评对象在农村、工矿企业的演出场次。</SPAN></P>
<P><SPAN>　　县级以上地方人民政府应当对在农村、工矿企业演出的文艺表演团体、演员给予支持。</SPAN></P>
<P><SPAN>　　第四十二条　演出行业协会应当依照章程的规定，制定行业自律规范，指导、监督会员的经营活动，促进公平竞争。</SPAN></P>
<P align=center><SPAN>第五章　法律责任</SPAN></P>
<P><SPAN>　　第四十三条　有下列行为之一的，由县级人民政府文化主管部门予以取缔，没收演出器材和违法所得，并处违法所得</SPAN><SPAN>8</SPAN><SPAN>倍以上</SPAN><SPAN>10</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>5</SPAN><SPAN>万元以上</SPAN><SPAN>10</SPAN><SPAN>万元以下的罚款；构成犯罪的，依法追究刑事责任：</SPAN></P>
<P><SPAN>　　（一）违反本条例第七条、第十一条、第十二条规定，擅自设立文艺表演团体、演出经纪机构或者擅自从事营业性演出经营活动的；</SPAN></P>
<P><SPAN>　　（二）违反本条例第十三条、第十五条规定，超范围从事营业性演出经营活动的；</SPAN></P>
<P><SPAN>　　（三）违反本条例第九条第一款规定，变更营业性演出经营项目未向原发证机关申请换发营业性演出许可证的。</SPAN></P>
<P><SPAN>　　违反本条例第八条、第十条规定，擅自设立演出场所经营单位或者擅自从事营业性演出经营活动的，由工商行政管理部门依法予以取缔、处罚；构成犯罪的，依法追究刑事责任。</SPAN></P>
<P><SPAN>　　第四十四条　违反本条例第十四条、第十六条规定，未经批准举办营业性演出的，由县级人民政府文化主管部门责令停止演出，没收违法所得，并处违法所得</SPAN><SPAN>8</SPAN><SPAN>倍以上</SPAN><SPAN>10</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>5</SPAN><SPAN>万元以上</SPAN><SPAN>10</SPAN><SPAN>万元以下的罚款；情节严重的，由原发证机关吊销营业性演出许可证。</SPAN></P>
<P><SPAN>　　违反本条例第十七条第三款规定，变更演出举办单位、参加演出的文艺表演团体、演员或者节目未重新报批的，依照前款规定处罚；变更演出的名称、时间、地点、场次未重新报批的，由县级人民政府文化主管部门责令改正，给予警告，可以并处</SPAN><SPAN>3</SPAN><SPAN>万元以下的罚款。</SPAN></P>
<P><SPAN>　　演出场所经营单位为未经批准的营业性演出提供场地的，由县级人民政府文化主管部门责令改正，没收违法所得，并处违法所得</SPAN><SPAN>3</SPAN><SPAN>倍以上</SPAN><SPAN>5</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>3</SPAN><SPAN>万元以上</SPAN><SPAN>5</SPAN><SPAN>万元以下的罚款。</SPAN></P>
<P><SPAN>　　第四十五条　违反本条例第三十二条规定，伪造、变造、出租、出借、买卖营业性演出许可证、批准文件，或者以非法手段取得营业性演出许可证、批准文件的，由县级人民政府文化主管部门没收违法所得，并处违法所得</SPAN><SPAN>8</SPAN><SPAN>倍以上</SPAN><SPAN>10</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>5</SPAN><SPAN>万元以上</SPAN><SPAN>10</SPAN><SPAN>万元以下的罚款；对原取得的营业性演出许可证、批准文件，予以吊销、撤销；构成犯罪的，依法追究刑事责任。</SPAN></P>
<P><SPAN>　　第四十六条　营业性演出有本条例第二十六条禁止情形的，由县级人民政府文化主管部门责令停止演出，没收违法所得，并处违法所得</SPAN><SPAN>8</SPAN><SPAN>倍以上</SPAN><SPAN>10</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>5</SPAN><SPAN>万元以上</SPAN><SPAN>10</SPAN><SPAN>万元以下的罚款；情节严重的，由原发证机关吊销营业性演出许可证；违反治安管理规定的，由公安部门依法予以处罚；构成犯罪的，依法追究刑事责任。</SPAN></P>
<P><SPAN>　　演出场所经营单位、演出举办单位发现营业性演出有本条例第二十六条禁止情形未采取措施予以制止的，由县级人民政府文化主管部门、公安部门依据法定职权给予警告，并处</SPAN><SPAN>5</SPAN><SPAN>万元以上</SPAN><SPAN>10</SPAN><SPAN>万元以下的罚款；未依照本条例第二十七条规定报告的，由县级人民政府文化主管部门、公安部门依据法定职权给予警告，并处</SPAN><SPAN>5000</SPAN><SPAN>元以上</SPAN><SPAN>1</SPAN><SPAN>万元以下的罚款。</SPAN></P>
<P><SPAN>　　第四十七条　有下列行为之一的，对演出举办单位、文艺表演团体、演员，由国务院文化主管部门或者省、自治区、直辖市人民政府文化主管部门向社会公布；演出举办单位、文艺表演团体在</SPAN><SPAN>2</SPAN><SPAN>年内再次被公布的，由原发证机关吊销营业性演出许可证；个体演员在</SPAN><SPAN>2</SPAN><SPAN>年内再次被公布的，由工商行政管理部门吊销营业执照：</SPAN></P>
<P><SPAN>　　（一）非因不可抗力中止、停止或者退出演出的；</SPAN></P>
<P><SPAN>　　（二）文艺表演团体、主要演员或者主要节目内容等发生变更未及时告知观众的；</SPAN></P>
<P><SPAN>　　（三）以假唱欺骗观众的；</SPAN></P>
<P><SPAN>　　（四）为演员假唱提供条件的。</SPAN></P>
<P><SPAN>　　有前款第（一）项、第（二）项和第（三）项所列行为之一的，观众有权在退场后依照有关消费者权益保护的法律规定要求演出举办单位赔偿损失；演出举办单位可以依法向负有责任的文艺表演团体、演员追偿。</SPAN></P>
<P><SPAN>　　有本条第一款第（一）项、第（二）项和第（三）项所列行为之一的，由县级人民政府文化主管部门处</SPAN><SPAN>5</SPAN><SPAN>万元以上</SPAN><SPAN>10</SPAN><SPAN>万元以下的罚款；有本条第一款第（四）项所列行为的，由县级人民政府文化主管部门处</SPAN><SPAN>5000</SPAN><SPAN>元以上</SPAN><SPAN>1</SPAN><SPAN>万元以下的罚款。</SPAN></P>
<P><SPAN>　　第四十八条　以政府或者政府部门的名义举办营业性演出，或者营业性演出冠以“中国”、“中华”、“全国”、“国际”等字样的，由县级人民政府文化主管部门责令改正，没收违法所得，并处违法所得</SPAN><SPAN>3</SPAN><SPAN>倍以上</SPAN><SPAN>5</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>3</SPAN><SPAN>万元以上</SPAN><SPAN>5</SPAN><SPAN>万元以下的罚款；拒不改正或者造成严重后果的，由原发证机关吊销营业性演出许可证。</SPAN></P>
<P><SPAN>　　营业性演出广告的内容误导、欺骗公众或者含有其他违法内容的，由工商行政管理部门责令停止发布，并依法予以处罚。</SPAN></P>
<P><SPAN>　　第四十九条　演出举办单位或者其法定代表人、主要负责人及其他直接责任人员在募捐义演中获取经济利益的，由县级以上人民政府文化主管部门依据各自职权责令其退回并交付受捐单位；构成犯罪的，依法追究刑事责任；尚不构成犯罪的，由县级以上人民政府文化主管部门依据各自职权处违法所得</SPAN><SPAN>3</SPAN><SPAN>倍以上</SPAN><SPAN>5</SPAN><SPAN>倍以下的罚款，并由国务院文化主管部门或者省、自治区、直辖市人民政府文化主管部门向社会公布违法行为人的名称或者姓名，直至由原发证机关吊销演出举办单位的营业性演出许可证。</SPAN></P>
<P><SPAN>　　文艺表演团体或者演员、职员在募捐义演中获取经济利益的，由县级以上人民政府文化主管部门依据各自职权责令其退回并交付受捐单位。</SPAN></P>
<P><SPAN>　　第五十条　违反本条例第九条第一款规定，变更名称、住所、法定代表人或者主要负责人未向原发证机关申请换发营业性演出许可证的，由县级人民政府文化主管部门责令改正，给予警告，并处</SPAN><SPAN>1</SPAN><SPAN>万元以上</SPAN><SPAN>3</SPAN><SPAN>万元以下的罚款。</SPAN></P>
<P><SPAN>　　违反本条例第八条第二款、第九条第二款、第十条第二款规定，未办理备案手续的，由县级人民政府文化主管部门责令改正，给予警告，并处</SPAN><SPAN>5000</SPAN><SPAN>元以上</SPAN><SPAN>1</SPAN><SPAN>万元以下的罚款。</SPAN></P>
<P><SPAN>　　第五十一条　有下列行为之一的，由公安部门或者公安消防机构依据法定职权依法予以处罚；构成犯罪的，依法追究刑事责任：</SPAN></P>
<P><SPAN>　　（一）违反本条例安全、消防管理规定的；</SPAN></P>
<P><SPAN>　　（二）伪造、变造营业性演出门票或者倒卖伪造、变造的营业性演出门票的。</SPAN></P>
<P><SPAN>　　演出举办单位印制、出售超过核准观众数量的或者观众区域以外的营业性演出门票的，由县级以上人民政府公安部门依据各自职权责令改正，没收违法所得，并处违法所得</SPAN><SPAN>3</SPAN><SPAN>倍以上</SPAN><SPAN>5</SPAN><SPAN>倍以下的罚款；没有违法所得或者违法所得不足</SPAN><SPAN>1</SPAN><SPAN>万元的，并处</SPAN><SPAN>3</SPAN><SPAN>万元以上</SPAN><SPAN>5</SPAN><SPAN>万元以下的罚款；造成严重后果的，由原发证机关吊销营业性演出许可证；构成犯罪的，依法追究刑事责任。</SPAN></P>
<P><SPAN>　　第五十二条　文艺表演团体、演出经纪机构违反本条例规定被文化主管部门吊销营业性演出许可证的，应当依法到工商行政管理部门办理变更登记或者注销登记；逾期不办理的，吊销营业执照。</SPAN></P>
<P><SPAN>　　演出场所经营单位、个体演出经纪人、个体演员违反本条例规定，情节严重的，由县级以上人民政府文化主管部门依据各自职权责令其停止营业性演出经营活动，并通知工商行政管理部门，由工商行政管理部门依法吊销营业执照。其中，演出场所经营单位有其他经营业务的，由工商行政管理部门责令其办理变更登记，逾期不办理的，吊销营业执照。</SPAN></P>
<P><SPAN>　　第五十三条　因违反本条例规定被文化主管部门吊销营业性演出许可证，或者被工商行政管理部门吊销营业执照或者责令变更登记的，自受到行政处罚之日起，当事人为单位的，其法定代表人、主要负责人</SPAN><SPAN>5</SPAN><SPAN>年内不得担任文艺表演团体、演出经纪机构或者演出场所经营单位的法定代表人、主要负责人；当事人为个人的，个体演员</SPAN><SPAN>1</SPAN><SPAN>年内不得从事营业性演出，个体演出经纪人</SPAN><SPAN>5</SPAN><SPAN>年内不得从事营业性演出的居间、代理活动。</SPAN></P>
<P><SPAN>　　因营业性演出有本条例第二十六条禁止情形被文化主管部门吊销营业性演出许可证，或者被工商行政管理部门吊销营业执照或者责令变更登记的，不得再次从事营业性演出或者营业性演出的居间、代理、行纪活动。</SPAN></P>
<P><SPAN>　　因违反本条例规定</SPAN><SPAN>2</SPAN><SPAN>年内</SPAN><SPAN>2</SPAN><SPAN>次受到行政处罚又有应受本条例处罚的违法行为的，应当从重处罚。</SPAN></P>
<P><SPAN>　　第五十四条　各级人民政府或者政府部门非法资助、赞助，或者非法变相资助、赞助营业性演出，或者用公款购买营业性演出门票用于个人消费的，依照有关财政违法行为处罚处分的行政法规的规定责令改正。对单位给予警告或者通报批评。对直接负责的主管人员和其他直接责任人员给予记大过处分；情节较重的，给予降级或者撤职处分；情节严重的，给予开除处分。</SPAN></P>
<P><SPAN>　　第五十五条　文化主管部门、公安部门、工商行政管理部门的工作人员滥用职权、玩忽职守、徇私舞弊或者未依照本条例规定履行职责的，依法给予行政处分；构成犯罪的，依法追究刑事责任。</SPAN></P>
<P align=center><SPAN>第六章　附　　则</SPAN></P>
<P><SPAN>　　第五十六条　民间游散艺人的营业性演出，省、自治区、直辖市人民政府可以参照本条例的规定制定具体管理办法。</SPAN></P>
<P style="TEXT-INDENT: 21pt"><SPAN>第五十七条　本条例自</SPAN><SPAN>2005</SPAN><SPAN>年</SPAN><SPAN>9</SPAN><SPAN>月</SPAN><SPAN>1</SPAN><SPAN>日起</SPAN><SPAN>施行。</SPAN><SPAN>1997</SPAN><SPAN>年</SPAN><SPAN>8</SPAN><SPAN>月</SPAN><SPAN>11</SPAN><SPAN>日</SPAN><SPAN>国务院发布的《营业性演出管理条例》同时废止。</SPAN></P>
<P>　</P>
<P align=center><SPAN><BR><BR><BR>国务院关于修改《营业性演出管理条例》的决定</SPAN></P>
<P align=center><SPAN>中华人民共和国国务院令第</SPAN><SPAN>528</SPAN><SPAN>号</SPAN></P>
<P><SPAN>　　现公布《国务院关于修改〈营业性演出管理条例〉的决定》，自公布之日起施行。</SPAN></P>
<P>&nbsp;<SPAN>　　　　　　　　　　　　　　　　　　　　　</SPAN> <SPAN>　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </SPAN><SPAN>&nbsp;</SPAN><SPAN>总　理　</SPAN> <SPAN>温家宝</SPAN></P>
<P><SPAN><SPAN>　　　　　　　　　　　　　　　　　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </SPAN></SPAN><SPAN>二○○八年七月二十二日</SPAN></P>
<P align=center><SPAN>国务院关于修改《营业性演出管理条例》的决定</SPAN></P>
<P><SPAN>　　国务院决定将《营业性演出管理条例》第十二条第一款修改为：“香港特别行政区、澳门特别行政区的投资者可以在内地投资设立合资、合作、独资经营的演出经纪机构、演出场所经营单位；香港特别行政区、澳门特别行政区的演出经纪机构可以在内地设立分支机构。”</SPAN></P>
<P><SPAN>　　本决定自公布之日起施行。</SPAN></P>
<P><SPAN>　　《营业性演出管理条例》根据本决定作相应的修改，重新公布。</SPAN></P></FONT></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>', N'hsg', N'upload/1317085910921.jpg', 16, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (93, N'103家温州市直单位大规模推行即办制', N'规章制度', N'&nbsp;&nbsp; 今天（9月13日）起，103家市直单位4200多项即办事项将在网上集中公开。今后市民只需点击温州政府网(<A href="">www.wenzhou.gov.cn</A>)即办制专题网页，就可查询各单位即办事项。据市直单位“五型机关”创建活动领导小组办公室介绍，如此大规模公开公务事项，在省内也属少见。
<P>　　前阶段，市直各单位按照推行即办制的目标要求，对本单位公务事项逐项进行梳理分类，明确简单事项、复杂事项、特殊事项划分及其具体流程、办事要件、办理时限、责任处室、联系电话等，形成即办事项规范表，并向社会公开。为方便市民集中查阅，市直单位“五型机关”创建活动领导小组办公室结合市直单位机构改革、职能调整，对各单位即办事项进一步审核之后，集中予以公开。</P><!--advertisement code begin--><!--none--><!--advertisement code end-->
<P>　　记者在专题网页上看到，这些即办事项不仅包括行政审批事项，还包括非行政审批事项、单位之间和单位内部事项。同时，网页上还公布了即办制推行的相关内容，比如配套制度、投诉电话等。此外，网页内容将实行动态管理，及时更新。</P>
<P>　　据市委副秘书长、市直机关工委书记、市直单位“五型机关”创建活动领导小组办公室主任何献敏介绍，目前我市一些机关仍不同程度存有办事拖沓、公文旅行、效率不高等现象。通过公开即办事项，接受社会监督，加大投诉举报处理力度，将进一步营造奋勇争先、大干快上的良好工作氛围，养成机关干部一日事一日毕的良好习惯，推进我市机关工作提速提质提效。</P>
<P>　　除告知性的网上公开即办事项外，我市在实践即办制上也取得初步成效。比如，市统计局出台即办事项登记制度，由前来办理的人员签名确认事项办理完结的时间和结果。该局还制订《落实即办制督查工作方案》，每月两次督查梳理出的23项即办事项。一次由副局长带领督查组，到各处室抽查即办制落实情况；另一次在月底各处室出示相关台账，汇报当月即办制落实情况，由局领导打分。两次督查结果都将在单位内部公示，并与年度考核挂钩。由此，该局有效缩短了事项办理时限。以企业数据认证事项为例，以往需要一天的时间，如今一般只用半小时就可完结。</P>
<P>　　市统计局机关党委专职副书记吴福斌说，单位各处室确实感受到了即办制带来的压力，但正是这种压力促成机关人员培养服务理念，将提高办事效率转化为自觉习惯。（记者 张睿）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317086069593.jpg', 92, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (94, N'我市出台《市区整治和查处违法建筑若干规定》', N'规章制度', N'&nbsp;&nbsp;&nbsp; 5月4日，市长赵一德主持召开第51次市政府常务会议，审议并原则通过《温州市区整治和查处违法建筑若干规定》（以下简称《规定》），力求从源头、法规、制度、体制机制上有效保障拆除历史违章，遏制新违章。 
<P>　　在我市，已建成的违法建筑量大面广，现行的违法建设禁而不止、屡拆屡建、越拆越多，查控违法建设的形势非常严峻，并呈现区域性突击建设、地方势力（老人协会等）成规模建设、群体性阻碍拆违等态势。而我市传统的拆违方式和拆违体制，已脱离当前实际，查控违法建设工作面临许多新问题、新挑战。</P>
<P>　　《规定》对已建成违法建筑明确要求全面查处、重点整治、分类处置；对现行违法建设明确了防控查处的机制、责任、程序，设定了信息共享、日常巡查、查处流程、首查责任和案件移送等制度和机制。同时明确属地管理、分工协办的查控体制，各区、镇政府为本行政区域主要责任主体，各功能区管委会、街道办事处受委托作为本行政区域主要责任主体，城管与执法和国土资源部门为执法主体，其他各职能部门是违法用地和建设的共同责任主体。</P>
<P>　　《规定》要求以考核考绩和纪律追究推进工作落实。建立定期监督制度，责任到人，考绩追责。其中，最主要的是日常拆违情况核查，每月通报排名公布以及市考绩办、督查室相应的绩效考核追责。明确公职人员的当事人违纪责任追究。将公职人员、党员、干部、人大代表、政协委员参与违法建设纳入“六必拆”的同时，《规定》还提出对他们参与的违法建设，要限期自行拆除，并由纪委监察部门约谈告诫，严重的给予纪律和行政处分。《规定》鼓励自行整改，减少拆违阻力，降低拆违成本，以强拆促自拆，加快推进速度，实现良性循环。</P>
<P>　　昨天的会议还审议并原则通过了《乐清市瑞安市永嘉县平阳县文成县都市功能区建设方案》、《温州市区国有土地上房屋征收与补偿实施办法（试行）》、《关于加快对转而未供和村二三产返回闲置土地优化利用的若干意见》、《温州市创建省级环境保护模范城市规划》、《关于加快水利改革发展的实施意见》、《关于加快推进供销合作社改革发展的实施意见》和《温州市劳动模范评选和管理工作暂行办法》，听取了温州大学城市学院规范设置用地产权调整意见和关于温州市教育发展与体育发展两个投资集团有限公司组建方案的汇报。</P>
<P>　　副市长孟建新、徐育斐、周少政、章方璋、仇杨均、陈浩、任玉明，市政府秘书长詹永枢出席会议。</P>
<P>　　（记者 吴勇 尤海峰）</P>', N'hsg', N'upload/1317086056687.jpg', 92, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (95, N'仓库管理制度', N'规章制度', N'<P>&nbsp;&nbsp;&nbsp; 仓库是保管、储存物品的建筑物和场所的总称。 物流中的仓库功能已经从单纯的物资存储保管，发展到具有担负物资的接收、分类、计量、包装、分拣、配送、存盘等多种功能。库管理是指商品储存空间的管理。仓库管理作业应注意的问题有： 　　 <BR>　　１．库存商品要进行定位管理，其含义与商品配置图表的设计相似，即将不同的商品分类、分区管理的原则来存放，并用货架放置。仓库内至少要分为三个区域：第一，大量存储区，即以整箱或栈板方式储存；第二，小量存储区，即将拆零商品放置在陈列架上；第三，退货区，即将准备退换的商品放置在专门的货架上。 　 <BR>　　２．区位确定后应制作一张配置图，贴在仓库入口处，以便于存取。小量储存区应尽量固定位置，整箱储存区则可弹性运用。若储存空间太小或属冷冻（藏）库，也可以不固定位置而弹性运用。 　　 <BR>　　３．储存商品不可直接与地面接触。一是为了避免潮湿；二是由于生鲜仪器吸规定；三是为了堆放整齐。 　　 <BR>　　４．要注意仓储区的温湿度，保持通风良好，干燥、不潮湿。 <BR>　　５．仓库内要设有防水、防火、防盗等设施，以保证商品安全。 　　 <BR>　　６．商品储存货架应设置存货卡，商品进出要注意先进行出的原则。也可采取色彩管理法，如每周或每月不同颜色的标签，以明显识别进货的日期。 　　 <BR>　　７．仓库管理人员要与订货人员及时进行沟通，以便到货的存放。此外，还要适时提出存货不足的预警通知，以防缺货。 　　 <BR>　　８．仓储存取货原则上应随到随存、随需随取，但考虑到效率与安全，有必要制订作业时间规定。 　　 <BR>　　９．商品进出库要做好登记工作，以便明确保管责任。但有些商品（如冷冻、冷藏商品）为讲究时效，也采取卖场存货与库房存货合一的做法。 　　 <BR>　　１０．仓库要注意门禁管理，不得随便入内。 </P>
<P align=center><STRONG>公司采购管理规定</STRONG></P>
<P>为规范采购部经办人员的工作行为，规范公司物流系统工作程序特制定本规定。<BR>一、计划管理<BR>1、采购部应根据公司财务部核定的当月可供应资金计划数，生产部确定的生产计划中《请购单》（包括其他业务、管理部门），根据市场供求状况及行情，编制综合采购计划，并分解落实到采购经办人。综合采购计划包括：现款采购、赊销采购、应付账款付款计划。采购计划按照审批权限报送董事长、总经理批准后组织实施。<BR>2、各部门临时急需的物资采购必须事先经总经理审批后，采购经办人方可实施采购，未经批准不予采购。<BR>二、现款采购管理<BR>1、采购经办人必须根据核准的采购物资名称、规格型号、数量、价格进行采购。采购物资进厂时，由采购经办人填开《入库单》经质检部门检验合格后，由仓库点数入库并登记库存台账。<BR>2、大额（指单笔付款金额在2000元以上的）、批量物资现款采购的付款事务统一由财务部出纳办理，未经批准采购经办人不得擅自付款。<BR>3、采购经办人对供货商出具的票据及《入库单》，经初审无误后填写《采购付款申请单》连同供货商出具的票据及《入库单》客户联报送经办会计初审，经审核无误后报送财务部经理复审、总经理（董事长）审批。审核要点：<BR>（1）采购物品的名称、规格型号是否与《请购单》、供应商出具的票据（收据）、《入库单》所列明的名称、规格型号一致；<BR>（2）《入库单》上质检、仓库经办人员是否签证齐全；<BR>（3）供应商出具的票据（收据）是否符合税法及本公司财务制度规定；<BR>（4）采购数量是否突破采购计划、采购价格是否高于计划控制价、是否属于当月的采购物资。<BR>4、财务部出纳必须根据本公司《财务支出审核审批操作规范》办理付款手续。<BR>三、赊销采购<BR>1、赊销采购付款事务统一由财务部出纳办理，严禁采购经办人擅自付款。<BR>2、采购物资进厂入库手续基本上与现款采购模式相同，所不同的是《入库单》客户联作为供货商结算货款的依据。<BR>3、付款期限原则规定如下：有采购合同的，按照合同规定的付款时间付款；没有采购合同的，在入库的3个月后付款。<BR>4、应付账款挂账手续按照以下规定办理：<BR>（1）由采购经办人填写《赊销采购挂帐申请单》一式两联，连同《请购单》、《入库单》报送经办会计审核，经审核无误后报送财务部经理复审，复审结果经财务部经理签字后，一联退采购经办人备查，一联由经办会计入帐核算。<BR>（2）应付账款入账时审核要点：<BR>①采购物品的名称、规格型号是否与《请购单》、《入库单》所列明的名称、规格型号一致；<BR>②《入库单》上质检、仓库经办人员是否签证齐全；<BR>③采购数量是否突破采购计划、采购价格是否高于计划控制价、是否属于当月的采购物资。<BR>5、应付账款付款手续按照以下规定办理：<BR>（1）在规定付款期由采购经办人向供货商收取票据及《入库单》客户联，经初审无误后填写《采购付款申请单》连同供货商出具的票据及《入库单》客户联报送经办会计审核，经审核无误后报送财务部经理复审，总经理（董事长）审批。<BR>（2）对《采购付款申请单》及供货商出具的票据及《入库单》客户联单证不齐的，财务部有权拒绝受理。<BR>（3）应付账款付款时审核要点：<BR>①付款期限是否符合合同或本公司的规定；<BR>②供应商出具的票据（收据）是否符合税法及本公司财务制度规定；<BR>③付款额是否已在账内核算反映<BR>④是否突破当月赊购采购付款计划。<BR>（4）财务部出纳必须根据本公司《财务支出审核审批操作规范》办理付款手续。<BR>四、本规定自公布之日起生效。</P>
<P>生产车间管理制度<BR>第一章&nbsp;&nbsp; 总 则<BR>第一条 为确定生产秩序正常运作，持续营造良好的工作环境，促进本企业的发展，结合本企业的实际情况特制订本制度。<BR>第二条 本规定适用于本公司生产相关全体员工。<BR>第二章 员工管理<BR>　　第三条 工作时间内所有员工倡导普通话，在工作及管理活动中严禁有区域观念或行为区分。<BR>　　第四条 全体员工须按要求穿厂服，穿工作鞋进入车间。<BR>　　第五条 每天正常上班时间为8小时，晚上如加班依生产需要临时通知。每天上午8：30前各班组的出勤情况报给行政部门。<BR>　　第六条 按时上下班，不迟到，不早退，不旷工（如遇赶货，上下班时间按照车间安排执行），有事要请假，上班须排队依次签到。严禁代人签到，违者依考勤管理制度处理。<BR>　　第七条 工作时间内，除组长以上管理人员因工作关系在车间走动，其他人员不得离开工作岗位相互窜岗，若因事需离开工作岗位须向组长申请，获得批准后才能离岗。<BR>　　第八条 员工在车间内遇上厂方客人或厂部高层领导参观巡察时，组长以上干部应起立适当问候或有必要的陪同，作业员照常工作，不得东张西望。集体进入车间要相互礼让，特别是遇上客人时，不能争道抢行。<BR>　　第九条 禁止在车间聊天、嘻戏打闹，吵口打架，私自离岗，窜岗、打电话、耍手机等与工作无关的行为；窜岗指上班时间窜至他人岗位做与工作无关的事，违者依员工奖惩制度处理。<BR>　　第十条 作业时间谢绝探访及接听私人电话，进入车间前，须换好防静电服（鞋、手腕），同时检查自己是否装戴良好，将钥匙、手机等物品放进与厂牌编号一致的保险柜，确保产品质量。<BR>　　第十二条 任何人不得携带违禁物品，危险品或与生产无关之物品进入车间；不得将私人用品放在流水线上，违者依员工奖惩制度处理。<BR>　　第十三条 车间严格按照生产计划排产,根据车间设备状况和人员,精心组织生产。生产工作分工不分家，各生产班组须完成本组日常生产任务，并保证质量。<BR>　　第十四条 车间如遇原辅材料、包装材料等不符合规定,有权拒绝生产,并报告上级处理。如继续生产造成损失，后果将由车间各级负责人负责。<BR>　　第十五条 员工领取物料必须通过物料员，不得私自拿取。生产过程中各班组负责人将车间组区域内的物品、物料有条不紊的摆放，并做好标识，不得混料。有流程卡的产品要跟随流程卡。<BR>　　第十六条 员工在生产过程中应严格按照质量标准、工艺规程进行操作,不得擅自更改产品生产工艺或装配方法。<BR>　　第十七条 在工作前仔细阅读作业指导书，员工如违反作业规定，不论是故意或失职使公司受损失，应由当事人如数赔偿（管理人员因管理粗心也受连带处罚）。<BR>　　第十八条 生产流程经确认后，任何人均不可随意更改，如在作业过程中发现有错误，应立即停止并通知有关部门负责人共同研讨，经同意并签字后更改。<BR>　　第十九条 在工作时间内，员工必须服从管理人员的工作安排，正确使用公司发放的仪器、设备。不得擅用非自己岗位的机械设备、仪表仪器、电脑等工具。对闲置生产用具应送到指定的区域放置，否则以违规论处。<BR>　　第二十条 车间员工必须做到文明生产，积极完成上级交办的生产任务；因工作需要临时抽调，服从车间组长级以上主管安排,协助工作并服从用人部门的管理，对不服从安排将上报公司处理。<BR>　　第二十一条 车间员工和外来人员进入特殊工作岗位应遵守特殊规定,确保生产安全。<BR>　　第二十二条 修理员在维修过程中好、坏物料必须分清楚，必须做上明显标志，不能混料。设备维修人员、电工必须跟班作业,保证设备正常运行。<BR>　　第二十三条 员工有责任维护工作之环境卫生，严禁随地吐痰，乱扔垃圾。在生产过程中要注意节约用料，不得随意乱扔物料、工具，掉在地上的元件必须捡起。工作台面上不能摆放与生产无关的物品，必须保持工作台面的整洁，做到无锡渣、无元件脚。<BR>　　第二十四条 操作人员每日上岗前必须将机器设备及工作岗位清扫干净，保证工序内的工作环境的卫生整洁，工作台面不得杂乱无章，生产配件须以明确的标识区分放置。<BR>　　第二十五条 下班时应清理自己的工作台面。组长负责清洁卫生、物品摆放、生产安排、下班时负责将所有的门窗、电源关闭。否则，若发生失窃等意外事故，将追究组长及车间主管的责任。<BR>　　第二十六条 加强现场管理随时保证场地整洁、设备完好。生产后的边角废物及公共垃圾须清理到指定位置，由各组当日值日人员共同运出车间；废纸箱要及时拆除，不得遗留到第二天才清理。<BR>　　第二十七条 不得私自携带公司内任何物品出厂（除特殊情况需领导批准外），若有此行为且经查实者，将予以辞退并扣发当月工资。<BR>　　第二十八条 对恶意破坏公司财产或盗窃行为（不论公物或他人财产）者，不论价值多少一律交公司行政部处理。视情节轻重，无薪开除并依照盗窃之物价款两倍赔偿或送公安机关处理。<BR>第三章 员工考核&nbsp;&nbsp;&nbsp; <BR>　　第二十九条 考核的内容主要是个人德、勤、能、绩四个方面。其中：<BR>　　1.“德”主要是指敬业精神、事业心和责任感及道德行为规范。<BR>　　2.“勤”主要是指工作态度，是主动型还是被动型等等。<BR>　　3.“能”主要是指技术能力，完成任务的效率，完成任务的质量、出差错率的高低等。<BR>　　4.“绩”主要是指工作成果，在规定时间内完成任务量的多少，能否开展创造性的工作等等。<BR>　　以上考核由组长考核,对不服从人员,将视情节做出相应处理;考核结果直接影响工资及奖金所得。<BR>　　第三十条 考核的目的：<BR>　　对公司员工的品德、才能、工作态度和业绩作出适当的评价，作为合理使用、奖惩及培训的依据，促使员工增加工作责任心，各司其职，各负其责，破除“干好干坏一个样，能力高低一个样”的弊端，激发上进心，调动工作主动性、积极性和创造性，提高公司的整体效益。<BR>第四章 附 则<BR>　　第三十一条 生产部全面负责本管理制度的执行。<BR>　　第三十二条 本制度由公司生产部负责制订、解释并检查、考核。<BR>　　第三十三条 本制度报总经理批准后施行，修改时亦同。<BR>　　第三十四条 本制度自2007年8月1日起施行。</P>
<P align=center><STRONG>现金管理制度</STRONG></P>
<P><BR>第一章&nbsp; 总则<BR>第一条 为了加强现金管理，健全现金收付制度，严格执行现金结算纪律，特制定本制度。<BR>第二条 本制度是根据国家财务制度的有关规定，结合公司的具体情况制定的，将随着国家相关政策及公司的实际情况的变化予以修改和完善。<BR>第二章&nbsp; 现金使用范围<BR>第三条 使用现金范围：<BR>（一）员工工资、奖金、津贴及劳保福利费用；<BR>（二）出差人员差旅费；<BR>（三）采购办公用品或其他物品，金额在使用支票结算点1000元以下的；<BR>（四）业务活动的零星支出备用金；<BR>（五）确需现金支付的其他支出。<BR>第三章&nbsp; 现金收付原则<BR>第四条 收付现金必须根据规定的合法凭证办理，没有经过审批签章或超越规定审批权限的，出纳不予付款。不准白条顶款，不准垫支挪用。<BR>第五条 购买物品或支付货款，尽量使用支票、汇款等转账方式，减少现金支付量。<BR>第六条 因公外出或购买物品，需借用现金时，出纳一律凭相关负责人审批的、财务部统一印制的借款单付款。<BR>第七条 出纳不得擅自将单位现金借给个人或其他单位，不准谎报用途套取现金、不准利用银行账户代其他单位或个人存入或支取现金，不准将单位收入的现金以个人名义存入银行，不准保留账外公款。<BR>第四章&nbsp; 现金收入和支出<BR>第八条 不论何种来源收入的现金，原则上应于当日送存开户银行。<BR>第九条 支付现金，应该从库存现金中支付或从银行提取；不得从现金收入直接支付，坐支现金。<BR>第十条 严格审查采购物品化整为零，在结算起点以下的现金支付。<BR>第十一条 在特殊情况下对按规定应转账结算而不得不用现金结算的，经申请公司领导同意方可办理。<BR>第五章&nbsp; 现金报销时间规定<BR>第十二条 购买物品借用现金应在购货后3个工作日内报销，出差人员所借现金必须在返回后5个工作日内报销，如不按时还清借款又不向财务部门说明原因的，财务部门有权从借款人工资中扣除。<BR>第十三条&nbsp; 出国人员个人购汇所借现金，应在回国后15个工作日内还清。<BR>第六章&nbsp; 库存现金的保管<BR>第十四条 库存现金不应超过银行规定的限额，超过限额要当日送存银行。<BR>第十五条 会计人员应于月末、季末、年末清理各类借款，及时催收，发现重大问题，应及时向领导汇报，采取措施。<BR>第十六条 办理现金出纳业务，必须做到按日清理、按月结账。<BR>及时登记现金日记账，结出库存现金账面余额，并与库存现金实地盘点数核对相符。<BR>第十七条 库存现金必须每日核对清楚，保持账款相符，如发生长短款问题要及时向领导汇报，查明原因按“财产损溢处理办法”进行处理，不得擅自将长短款项相互补抵。<BR>第十八条 保管现金要有安全防范措施，存放现金要用保险柜，<BR>保险柜钥匙要由专人保管。下班要检查保险柜、窗户、门，锁好后，<BR>方能离开。<BR>第十九条 由有关领导和专业人员组成清查小组，定期或不定期地对库存现金情况进行清查盘点，重点放在账款是否相符、有无白条抵库、有无私借公款、有无挪用公款、有无账外资金等违纪违法行为。<BR>第七章&nbsp; 处罚<BR>第二十条 对违反本办法造成公司损失的，视其情节轻重，给予处罚。<BR>第二十一条 凡超出规定范围、限额使用现金，用不符合制度的凭证充抵库存现金，未经批准坐支现金，私设小金库，编造用途套取现金，公款私存的，除给有关人员处分外，分别给予违纪金额10％-30％的罚款。<BR>第二十二条 所有罚款一律上缴公司财务部。<BR>第八章&nbsp; 附则<BR>第二十三条 本制度自下发之日起执行。<BR>第二十四条 本制度解释权属公司财务部。</P>
<P>&nbsp;</P>
<P align=center><BR><STRONG>职工守则</STRONG></P>
<P>(一)本单位职工应遵守单位一切规章制度及领导的指挥监督，忠实勤勉地执行其职务。对工作如有建设性意见时，可以口头或书面陈述建议。<BR>(二)职工平日的言行应诚实、谦让、廉洁、勤勉，同事间要和睦相处，以争取单位荣誉。<BR>(三)职工上下班应按规定签到，签到均应亲自为之。<BR>(四)职工除规定的放假日及因公出差或因故有其它正当事由外，均应按照规定时间上下班，不得任意迟到或早退。<BR>(五)职工每日应办事务必须当日办清。如有临时发生紧要事项奉主管领导通知时，虽非办公时间亦应遵照办理，不得借故推诿。<BR>(六)职工对来宾应保持谦和礼貌、诚恳友善的态度。<BR>(七)职工不得有下列行为：<BR>1、除办理本单位业务外，不得对外擅用本单位名义。<BR>2、对于本单位机密无论是否经管，均不得泄漏。<BR>3、不得擅离职守。<BR>4、对于所办事项不得收受任何馈赠或向其挪借财物。<BR>5、非因公务的需要不得动用公物或支用公款。<BR>6、对所保管的文书财物及一切公物应善尽保管之则，不得私自携出或出借。<BR>7、不得任意翻阅不属自己负责的文件、表册、函件等。<BR>8、不得携带违禁品，引火物及非必要物品进入工作场所。<BR>(八)职工有违反前条规定，应按情节轻重分别予以惩处，知情不报者，亦应负连带责任而受惩处。</P>
<P>&nbsp;</P>
<P><BR>质量管理人员岗位职责</P>
<P>一,严格执行产品质量标准,负责全厂产品的质量检验和管理工作,严守职责,不徇私情.<BR>&nbsp;&nbsp;&nbsp; 二,随时掌握产品在生产中的质量状况,进行分析研究,找出质量问题的症结所在,协调有关人中制定改善攻关措施,详细记好工作记录.<BR>&nbsp;&nbsp;&nbsp; 三,严格执行技术标准和管理制度,对产品合格与否做出决定,坚决制止不合格品入库和出厂,保证产品质量均符合国家规定的技术标准.<BR>&nbsp;&nbsp;&nbsp; 四,对生产中由于技术检查的疏忽和管理上的失误带来的质量事故负责.<BR>&nbsp;&nbsp;&nbsp; 五,对生产管理人员或操作人员违反质量制度或不按照技术要求生产的现象,有权提出批评和处理意见.<BR>&nbsp;&nbsp;&nbsp; 六,定期向领导汇报有关质量管理工作情况,参加全企业性的质量分析活动和新产品鉴定活动.</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P><BR>厂长职责</P>
<P>1、领导编制工厂的长远发展规划，审定年度生产经营综合计划，提出各个时期工厂的奋斗目标和中心工作及重大措施方案，使企业不断增强活力，开拓前进。 <BR>&nbsp;&nbsp;&nbsp; 2、加强生产经营管理，不断提高企业管理素质，确保全面完成任期责任目标和年度方针目标，不断提高企业经济效益。 <BR>&nbsp;&nbsp;&nbsp; 3、领导全厂进行技术革新，搞好企业的挖潜、革新、改造和新品开发，不断提高企业的技术素质，努力赶超国内外先进水平。 <BR>&nbsp;&nbsp;&nbsp; 4、实行全面质量管理，坚持“质量第一”，“用户至上”的方针，确保产品质量稳定提高，满足用户需求，不断争创名牌。 <BR>&nbsp;&nbsp;&nbsp; 5、切实做好环境保护和劳动保护工作，不断改善劳动条件，保证安全文明生产。 <BR>&nbsp;&nbsp;&nbsp; 6、加强职工文化技术教育，促进知识更新，不断提高工厂人才素质。<BR>&nbsp;&nbsp;&nbsp; 7、坚持“用人唯贤”的方针,正确使用选拔和培养干部。 <BR>&nbsp;&nbsp;&nbsp; 8、贯彻“各尽所能，按劳分配”的原则，正确地处理集体及职工之间的利益关系，使职工收入逐年增长，集体福利条件不断改善。 <BR>9、主持行政全面工作，使生产行政各项重大问题得以及时研究处理。<BR></P>', N'hsg', N'upload/1317086056687.jpg', 91, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (96, N'我市启动“地下城”规划', N'规章制度', N'&nbsp;&nbsp;&nbsp; 近日，第十届全国岩土力学数值分析与解析方法研讨会正在我市召开，“让沿海滩涂变成一座新兴的城市”、“让软土变成硬土”、“向城市挖掘更多地下空间”等成为全国各地各家共同探讨的热门话题。温州是否也将打造“地下城市”？记者11月16日从规划部门了解到，我市针对地下空间利用的相关规划工作已经启动，未来，地下博物馆、地下美术馆等的出现将不再是想象。目前，市规划局已委托解放军南京工程学院进行规划设计。 
<P>　　在世界许多繁华的城市，繁华就意味着道路交通拥挤，环境污染严重，城市基础设施不足，未来发展空间越来越小。正因如此，进入二十一世纪，世界上越来越多的大城市不得不被动地选择“上天入地”的方式建地道、搭天桥来弥补造城前没有考虑到的发展瓶颈。为有效、充分地利用土地资源，城市地下空间的科学利用近年来一直受到广泛的关注。其实，我市的地下空间利用已经开始。 </P>
<P>　　记者了解到，2002年出台的人防发展规划是我市对于地下空间利用的最早“发力点”，该规划制定了我市人防工程的区域分布、功能等。此后，我市对于地下空间的利用朝向开始与市民生活愈加密切：位于市区大南门、信河街、翠微大道、市府路、府东路、南塘大道等交通要道的10条地下通道先后竣工；下吕浦、信河街、大南门、广场路等处的地下停车库相继崭露头角、投入使用；同时，银泰、开太、时代等商场、大型超市的地下空间也开始被利用于商业店铺。温州地下空间的功能，被挖掘得越来越具体。</P>
<P>　　然而，“地下城市”的拓展并不止步于此，随着打造“城市综合体”理念的提出，地下空间的功能正在扩大。记者从规划部门了解到，根据理念，我市未来对地下空间的利用，除了继续打造已有的地下交通设施（将增添海底隧道）、地下商业设施之外，还包括地下市政设施；地下文化娱乐设施，如地下博物馆、地下美术馆、地下游泳池等；地下仓储设施。</P>', N'hsg', N'upload/1317085936937.jpg', 91, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (97, N'我县出台国有土地使用权出让收缴管理新规定', N'规章制度', N'<P>&nbsp;&nbsp; 苍南新闻网8月31日消息：为了进一步加强国有土地使用权出让收支管理，强化和规范土地出让收支监管，近期，我县出台了关于加强国有土地使用权出让收缴管理规定，对我县国有土地使用权出让收缴管理提出了更高要求。</P>
<P>&nbsp;&nbsp; 一是明确收入范围，将土地出让收支全额纳入政府性基金预算管理。国有土地出让收入的范围，包括受让人支付的征地和拆迁补偿费用、土地前期开发费用和土地出让收益等。土地出让收入要全部缴入地方国库，支出一律通过政府性基金预算从土地出让收入中予以安排，实行 “收支两条线”管理。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp; 二是加强征收管理，保障土地出让收入及时足额征收和缴入地方国库。明确建立土地出让宗地管理制度，加强对土地出让的保证金和预付款的规范管理，同时规范了土地出让金缴库期限的确认。</P>
<P>&nbsp;&nbsp; 三是规范制度建设，健全和完善土地出让收入征收管理机制。即健全和完善土地使用权出让公开招标、拍卖、挂牌制度，建立健全土地出让协调决策机构，以及进一步完善招投标制度等。</P>
<P>&nbsp;&nbsp; 四是明确职责权限，切实履行国有土地出让各项职责。明确了国有土地出让由国土资源部门统一组织实施。同时，还明确了县财政、国土资源部门以及各乡（镇）的职责权限。</P>
<P>&nbsp;&nbsp; 五是引进科学管理，加快建立土地出让相关信息共享机制。县财政、国土资源部门和人民银行要加强沟通、密切配合、落实责任、明确分工，实现土地出让收支管理信息系统的联网，确保信息共享机制高效运转。（项光恒）</P>', N'hsg', N'upload/1317085922265.jpg', 77, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (98, N'龙港城管长假不放松 规范节日期间市场秩序', N'规章制度', N'<P>&nbsp;&nbsp;&nbsp; 苍南新闻网10月7日消息：国庆长假期间，一些摊贩占道摆摊的行为既妨碍交通又影响市容市貌，龙港城镇综合管理大队工作人员放弃休息时间，对城区内的占道摆摊进行重点管理，保障国庆长假期间城区市容环境的干净整洁。</P>
<P>&nbsp;&nbsp;&nbsp; 10月1日上午8点多，龙跃广场上聚集了大量的流动摊贩，有卖水果的，有摆地摊的，周边环境卫生乱糟糟。城管队员在检查中，采取对当事人进行批评教育的方式，劝导他们不要占道经营。在上午的行动中，城管工作人员还对百有市场等地进行管理。城管部门负责人表示，近一段时间将继续采取高压态势，确保市容市貌整洁有序。（通讯员 杨银团 李绍琦）</P>', N'hsg', N'upload/1317085936937.jpg', 77, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (99, N'《钱库镇大学生“村官”档案管理办法》的通知', N'规章制度', N'<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV align=center>钱库镇委〔2010〕47号</DIV>
<DIV align=center><B></B>&nbsp;</DIV>
<DIV align=center><B>中 共 钱 库 镇 委&nbsp;&nbsp; </B></DIV>
<DIV align=center><B>关于印发《钱库镇大学生“村官”档案管理办法》的</B></DIV>
<DIV align=center><B>通&nbsp;&nbsp; 知</B></DIV>
<DIV>&nbsp;</DIV>
<DIV>各办事处党委、村（居）党支部：</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 为进一步加强对我镇大学生“村官”的管理，全面掌握大学生“村官”在农村的工作、学习、生活情况，现结合我镇实际，经镇党委研究，特制定本管理办法。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 一、指导思想</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 以邓小平理论、“三个代表”重要思想和科学发展观为指导，以充分发挥大学生“村官”积极性、主动性、创造性为目的，以关心关注大学生“村官”的成长成才为目标，坚持培养、管理、使用、保障相结合，加强动态管理，促进大学生“村官”全面发展，着力构建大学生“村官”工作的长效机制，努力建立一支下得去、待得住、干得好、流得动的大学生“村官”队伍。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 二、基本原则</DIV>
<DIV>&nbsp;&nbsp; <B>&nbsp;1</B><B>、跟踪原则。</B>对大学生“村官”的成长过程进行跟踪管理，随时记录成长过程和取得成绩。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; <B>2</B><B>、多元原则。</B>大学生“村官”档案的内容多元化，重点反映大学生“村官”在思想品德、业务学习、创业思路、业务技能、综合素质等方面内容。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; <B>3</B><B>、互动原则。</B>大学生“村官”档案是大学生“村官”自我评价与镇、村两级对大学生“村官”有目的、有计划培养的重要依据，关注大学生“村官”自我评价与村级班子、镇组织办测评之间的互动反馈，逐步提高大学生“村官”自我认识、自我提高、自我发展的能力。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; <B>4</B><B>、发展原则。</B>大学生“村官”档案所隐含的评价标准与内容充分体现以人为本的思想，着力促进大学生“村官”的全面而又有个性的发展。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;三、档案范围与内容</DIV>
<DIV>&nbsp; <B>&nbsp;&nbsp;&nbsp;1</B><B>、基本内容。</B></DIV>
<DIV>&nbsp;&nbsp;&nbsp; （1）个人特征材料。主要包括所学专业、学历、专业技术资格、工作经历、才艺、个人特长和爱好等信息。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; （2）个人鉴定材料。主要包括聘用考察材料、劳动合同书等规范性材料。</DIV>
<DIV>&nbsp;&nbsp; &nbsp;<B>&nbsp;2</B><B>、成长日记。</B></DIV>
<DIV>（1）基本情况。主要为大学生“村官”派驻村的各项基本情况。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; （2）工作计划。主要为大学生“村官”的年度工作计划。</DIV>
<DIV>（3）工作情况。主要包括大学生“村官”月度工作情况表、半年度总结、年度总结。</DIV>
<DIV>（4）大学生“村官”成长要事记录表。主要包括创新创业、挂职锻炼、岗位变动、职务调整、入党情况、参加志愿者和公益性活动、评优评先、推荐为后备干部、参加社会调研等重大事项的记录。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; （5）大学生“村官”教育培训情况记录表。主要包括培训学习情况，“传、帮、带”实践指导情况，自主学习情况，反映个人水平的代表性作品、研究成果，参加县、镇、办事处、村重要会议的学习记录等。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; （6）“村官”日记。主要包括学习体会、工作体会、工作经验教训总结等方面的材料。</DIV>
<DIV>&nbsp;&nbsp; <B>&nbsp;&nbsp;3</B><B>、评价记录。</B></DIV>
<DIV>&nbsp;&nbsp;&nbsp; （1）阶段性自我评价。主要记录特定阶段工作的总结和回顾，工作目标完成情况，存在问题及原因，以及今后一个阶段努力方向。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; （2）阶段性组织评价。主要记录镇、村两级对其在任职期间的考核鉴定材料，包括年度考核表、评优评先材料、挂职锻炼鉴定材料以及创新创业等情况评价。</DIV>
<DIV>&nbsp;&nbsp; <B>&nbsp;4</B><B>、其他材料。</B></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 任职期间反映大学生“村官”思想、工作、学习、生活情况的其他材料。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;四、档案的形式与程序</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;<B>1</B><B>、档案形式。档案</B>分为“两级两类”。“两级”指的是镇和个人两个层级。涉及大学生“村官”的重大事项、面上共性事项、大学生“村官”日常工作等材料归入镇级档案；涉及大学生“村官”工作心得体会等材料归入个人档案。其中以镇级档案为主，个人档案为辅。“两类”分别为电子档案和纸质档案两类。电子档案包括大学生“村官”月度工作及平时的调研报告、心得体会等内容，纸质档案包括规范性文件材料及从电子档案中筛选形成的材料。电子档案立足当前，便于查找使用，纸质档案立足长远，长期保存使用。“两级两类”相结合，实现相互印证和上下级补充的目的。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;<B>2</B><B>、建档程序。</B>档案中涉及大学生“村官”的考察材料、基本信息等由镇组织办结合人事档案情况核定。成长日记、个人评价记录等内容由大学生“村官”结合自身实际填写，并交由镇党委审核，档案内容涉及村工作的还需由村主要负责人审核，经核实后予以入档。</DIV>
<DIV>&nbsp;&nbsp; &nbsp;&nbsp;<B>3</B><B>、归档程序。</B>档案采取“村官”个人和组织收集整理相结合的方法进行。镇党委经常性进行指导督促，并定期安排检查。个人层次的档案由大学生“村官” 每周自行归档；镇层次的档案由大学生“村官”每月向镇党委提交书面报告，经审核后由镇组织办收集归档。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;<B>4</B><B>、转档程序。</B>大学生“村官”辞职、中途解聘或合同期满不续聘的，由镇组织办将档案统一归入个人人事档案后，按规定程序转档。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;五、档案的管理与使用</DIV>
<DIV>&nbsp;&nbsp; <B>&nbsp;&nbsp;1</B><B>、明确职责、科学管理。</B>大学生“村官”档案采用分级管理的办法，镇级档案由镇党委负责管理，个人档案由大学生“村官”在驻村干部和村主要负责人指导下自行管理。镇党委须在县组织人事部门的指导下，结合自身实际做好档案的管理工作。镇组织办配备档案柜等相关设备，采用符合档案部门规定的标准档案盒，实行一人一档，加强对档案的维护，保证档案材料的真实、完整与安全。镇党委将大学生“村官”档案管理情况列为人才工作的重要内容。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; <B>&nbsp;2</B><B>、定期公开、加强监督。</B>镇组织委员每月召集大学生“村官”帮带干部、村主要负责人对档案的内容进行评议核实；适时邀请党代表、人大代表、政协委员对档案设定目标的完成进度等情况进行监督审核，充分保证其真实性。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;<B>3</B><B>、强化培养、大胆使用。</B>重视大学生“村官”档案成果运用，将大学生“村官”档案结合考核考评情况，作为大学生“村官”评优评先、入党、享受报考公务员和事业单位优惠政策、创业基地政策资金扶持、专业技术职务（技能）评定等的重要依据；对基本素质优、群众基础好、发展潜力大的大学生“村官”，纳入镇村级后备干部培养对象，进行跟踪培养。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 六、本管理办法自下发之日起执行，由镇组织办负责解释，未尽事宜由镇党委另行研究确定。</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV align=right>&nbsp;</DIV>
<DIV align=right>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中共钱库镇委</DIV>
<DIV align=right>2010年4月23日</DIV>
<DIV align=right>钱库镇党委政府办公室<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2010年4月23日印发</DIV>', N'hsg', NULL, 30, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (100, N'钱库镇对总体规划修编进行评审座谈', N'规章制度', N'<DIV>&nbsp;&nbsp;&nbsp; 随着温州构筑“1650”城乡发展新格局以及当前苍南行政区划调整，钱库镇对城镇总体规划进行了调整，并于11月21日，进行评审座谈。　</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 据悉，钱库镇总体规划修编由浙江省城乡规划设计研究院设计，对2011-2030年的钱库镇的镇域统筹空间布局、综合交通、社会服务、公用工程设施等8个方面进行总体规划。规划用地达95.9平方公里，内容进一步强化了中心城镇职能，工贸优势产业的发展，产业功能区布局的调整，城镇新中心区也将面临重新选址。根据规划及新钱库镇未来的功能定位，本次规划确定钱库镇的城镇性质为：苍南江南片区中心，以箱包市场、印刷、轻纺等特色产业为主导的工贸性城镇，富有山水田园特色的宜居新市镇。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 与会人员结合该镇实际，对设计单位的规划设计方案进行认真审核并提出了意见建议。尤其是在钱望公路等交通道路设计上，与会者展开了热烈的探讨，在教育、工业等功能区划分等问题上也提出了不同意见。(鸯鸯 &nbsp; 克梯)</DIV>', N'hsg', NULL, 77, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (101, N'中国渔船违规作业被日方扣押 中方要求日方善待船员', N'规章制度', N'&nbsp;&nbsp;&nbsp;&nbsp; 新华网东京１２月３０日电　记者３０日从中国驻福冈总领事馆处获悉，一艘中国渔船２９日晚疑因在<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" name="HL_TAG">日本</SPAN>专属经济水域内违规作业，被鹿儿岛海上保安部扣押。
<P>&nbsp;&nbsp;&nbsp;&nbsp;“闽霞渔运０５３０７”号渔船２９日２２时０７分在<SPAN style="BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline" name="HL_TAG">鹿儿岛</SPAN>县附近海域被日方海上保安人员抓扣。该船为福建省所属渔船，船上包括船长林世钦在内共有９名船员，均为中国国籍。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;目前，该船船长及两名船员已被移送至鹿儿岛海上保安部接受调查，其他船员和渔船仍留在现场海域。船长已承认进入日方水域作业。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;中国驻福冈总领事馆获悉有关情况后，第一时间派主管领事赴鹿儿岛探视中国船员，并要求日方善待中方船员，切实保障其安全和合法权益。</P>', N'hsg', NULL, 6, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (102, N'钱库镇开展文明单位复查考核工作', N'规章制度', N'<P align=left>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 11月15日，钱库镇辖区14家县级文明单位负责人齐聚镇四楼会议室，总结汇报四年来文明单位的创建成果。各单位通过认真对照文明单位的标准，各叙特色，亮点纷呈。</P>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 会后，钱库镇委组织检查组人员，到14家县级文明单位开展认真的复查考核。（钱宣办）</DIV>', N'hsg', NULL, 25, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (103, N'苍南县“十小”行业质量安全整规工作知识竞赛', N'规章制度', N'<P><STRONG>知识竞赛须知</STRONG><BR>　　1.活动目的：规范“十小”行业，改善浪费环境，保障消费安全。<BR>　　2.主办单位：苍南县“十小”整规办<BR>　　3.竞赛时间：2010年11月8日-11月20日<BR>　　4.参赛对象：全县各地各界群众<BR>　　5.答题方式：竞赛试题在《今日苍南》和苍南新闻网上刊登。答题卡可复印，但填上答案后复印无效。<BR>　　6.奖项设立：设个人一、二、三等奖。一等奖2名，奖励价值500元奖品；二等奖5名，奖励价值200元奖品；三等奖10名，奖励价值100元奖品。奖项评定由县“十小”整规办负责。<BR>　　7.报送方式：请参赛者于 2010年11月20日前，将答题卡寄送到县“十小”整规办，地址：灵溪镇工业示范园区一路，苍南县质量技术监督局411室。邮编：325800；电话：64837917。<BR>　　8.奖励方式：比赛结果将于2010年11月25日公布。获奖个人须持本人身份证在规定时间内到县“十小”整规办领取奖品和证书。</P>
<P><STRONG>一、填空题：（每空2分，共20分）</STRONG><BR>　　从2008年开始，我县开展为期三年的“十小”行业质量安全整治与规范工作，“十小”具体指：</P><!--advertisement code begin--><!--advertisement code end-->
<P>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>3.</P>
<P>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>7.</P>
<P>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P>10.</P>
<P><STRONG>二、单项选择题（每道题2分，共50分）</STRONG><BR>　　1.《中华人民共和国食品安全法》、《中华人民共和国食品安全法实施条例》分别自(&nbsp;&nbsp;&nbsp; )起施行。 <BR>　　A.2009年6月1日 2009年7月20日<BR>&nbsp;&nbsp;&nbsp; B.2009年6月1日 2009年8月1日 <BR>&nbsp;&nbsp;&nbsp; C.2009年7月1日 2009年7月20日<BR>　　D.2009年7月1日 2009年9月1日 <BR>　　2.(&nbsp;&nbsp;&nbsp;&nbsp; )有权举报食品生产经营中的违法行为，有权向有关部门了解食品安全信息，对食品安全监督管理工作提出意见和建议。<BR>　　A.任何组织或个人<BR>&nbsp;&nbsp;&nbsp; B.食品生产经营者 　　<BR>&nbsp;&nbsp;&nbsp; C.消费者&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; D.食品企业<BR>　　3.食品生产经营人员应当(&nbsp;&nbsp;&nbsp; )进行健康检查，取得健康证明后方可参加工作。<BR>　　A.每半年 <BR>&nbsp;&nbsp;&nbsp; B.每年<BR>&nbsp;&nbsp;&nbsp; C.每二年 <BR>&nbsp;&nbsp;&nbsp; D.每三年 <BR>　　4.根据《药品管理法》规定，知道或者应当知道属于假劣药品而为其提供运输、保管、仓储等便利条件的，将受到以下处罚： （&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　A.没收全部运输、保管、仓储的收入，并处违法收入百分之五十以上三倍以下的罚款。<BR>　　B.构成犯罪的，依法追究刑事责任。<BR>　　C. A和B<BR>　　5.食品生产经营者聘用不得从事食品生产经营管理工作的人员从事管理工作的，由原发证部门(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )。 <BR>　　A.给予警告 　　<BR>&nbsp;&nbsp;&nbsp; B.责令改正 　<BR>&nbsp; 　C.处以罚款&nbsp;&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; D.吊销许可证 <BR>&nbsp;&nbsp;&nbsp; 6. 要使妆面保持时间持久且不易脱妆应选用(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<BR>&nbsp;&nbsp;&nbsp; A.粉露&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B.日霜&nbsp;&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; C.湿粉&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D.蜜粉 <BR>　　7.《食品安全法》规定，食品检验实行(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )负责制。 <BR>　　A.食品检验机构 　　<BR>&nbsp;&nbsp;&nbsp; B.检验人 　　<BR>&nbsp;&nbsp;&nbsp; C.质量监督部门 　　<BR>&nbsp;&nbsp;&nbsp; D.食品检验机构与检验人 <BR>　　8.解热镇痛和抗风湿作用的发生快而强，其解热作用尤其为突出。老人幼儿、毒血症状较重、热度过高的病人容易引起虚脱。下列哪种药使用时应注意用量。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　A.阿斯匹林　<BR>&nbsp;&nbsp;&nbsp; B.安乃近　<BR>&nbsp; 　C.消炎痛<BR>　　9.食品安全监管部门对有不良信用记录的食品生产经营者应当（&nbsp;&nbsp;&nbsp;&nbsp; ）。 <BR>　　A.增加检查频次<BR>&nbsp;&nbsp;&nbsp; B.减少检查频次 <BR>&nbsp;&nbsp;&nbsp; C.吊销许可证<BR>&nbsp;&nbsp;&nbsp; D.吊销营业执照 <BR>　　10.被吊销食品生产、流通或者餐饮服务许可证的单位，其直接负责的主管人员自处罚决定作出之日起（&nbsp;&nbsp; ）内不得从事食品生产经营管理工作。 <BR>&nbsp;&nbsp;&nbsp; A.二年&nbsp;&nbsp;&nbsp;&nbsp; B.三年<BR>&nbsp;&nbsp;&nbsp; C.四年&nbsp;&nbsp;&nbsp;&nbsp; D.五年<BR>&nbsp;&nbsp;&nbsp; 11.皮肤新陈代谢的周期为&nbsp; (&nbsp;&nbsp;&nbsp;&nbsp; )<BR>&nbsp;&nbsp;&nbsp; A.15天&nbsp;&nbsp;&nbsp; B.28天&nbsp;&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; C.5天&nbsp;&nbsp;&nbsp;&nbsp; D.60天<BR>　　12.食品生产企业应当建立食品原料、食品添加剂和食品相关产品的进货记录制度，进货记录保存期限不得少于(&nbsp;&nbsp;&nbsp;&nbsp; )。 <BR>&nbsp;&nbsp;&nbsp; A.1年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B.2年<BR>&nbsp;&nbsp;&nbsp; C.3年 　　&nbsp;&nbsp; D.4年<BR>&nbsp;&nbsp;&nbsp; 13.肌肉是人体的一种组织，受(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )支配，具有收缩性和舒展性。<BR>&nbsp;&nbsp;&nbsp; A.大脑&nbsp;&nbsp;&nbsp; B.意识<BR>&nbsp;&nbsp;&nbsp; C.情感&nbsp;&nbsp;&nbsp; D.神经<BR>&nbsp;&nbsp;&nbsp; 14.(&nbsp;&nbsp;&nbsp;&nbsp; )可使发丝受损.<BR>&nbsp;&nbsp;&nbsp; A.经常洗发<BR>&nbsp;&nbsp;&nbsp; B.经常修剪头发<BR>&nbsp;&nbsp;&nbsp; C.经常染发&nbsp; <BR>&nbsp;&nbsp;&nbsp; D.发油 <BR>&nbsp;&nbsp;&nbsp; 15.达国家客运班车驾驶人员连续驾驶时间不得超过（　&nbsp;&nbsp; 　）个小时。<BR>　　A.4　　&nbsp; B.6　<BR>&nbsp; 　C.7　　&nbsp; D.8<BR>　　16.申请从事客运经营的驾驶人员，应在（&nbsp;&nbsp;&nbsp; ）年内无重大以上交通责任事故记录。<BR>　　A.5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B.2&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; C.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D.6<BR>　　17.从事客运经营的驾驶员，年龄不超过（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）岁。<BR>　　A.50&nbsp;&nbsp;&nbsp;&nbsp; B.55&nbsp;&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; C.60&nbsp;&nbsp;&nbsp;&nbsp; D.65<BR>&nbsp;&nbsp;&nbsp; 18.寒冷季节厨房石油气瓶供气不足炉火不够猛时，为加大出气量可以怎样做?(&nbsp;&nbsp;&nbsp; ） <BR>　　A.将气瓶倒卧<BR>&nbsp;&nbsp;&nbsp; B.用电炉加热气瓶 <BR>&nbsp;&nbsp;&nbsp; C.用40℃以下温水加热气瓶<BR>&nbsp;&nbsp;&nbsp; 19.在饭店的厨房宜配置哪种灭火器？（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>&nbsp;&nbsp;&nbsp; A.二氧化碳灭火器&nbsp;&nbsp;&nbsp; <BR>&nbsp;&nbsp;&nbsp; B.泡沫灭火器 <BR>&nbsp;&nbsp;&nbsp; C.ABC干粉灭火器<BR>&nbsp;&nbsp;&nbsp; 20.液化气钢瓶要选择专用软管的原因是：（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>&nbsp;&nbsp;&nbsp; A.长短不一<BR>&nbsp;&nbsp;&nbsp; B.不是液化气标准颜色<BR>&nbsp;&nbsp;&nbsp; C.粗细不匀<BR>&nbsp;&nbsp;&nbsp; D.液化气对普通橡胶软管有溶解作用<BR>　　21.农药急性毒性分为（&nbsp;&nbsp;&nbsp;&nbsp; ）级。<BR>&nbsp;&nbsp;&nbsp; A.剧毒、高毒、低毒3级<BR>&nbsp;&nbsp;&nbsp; B.高毒、低毒两级<BR>&nbsp;&nbsp;&nbsp; C.剧毒、高毒、中等毒、低毒和微毒5级<BR>　　22.化学合成农药质量保证期一般至少是（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）年。从生产包装之日起计算，以出厂日期或生产批号标明。<BR>&nbsp;&nbsp;&nbsp; A.1&nbsp;&nbsp; B.2&nbsp;&nbsp; C.3<BR>　　23.下列哪类药品长期大量使用会产生满月脸、浮肿、无力、多毛、高血压、糖尿等副作用。 （&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　A.糖皮质激素<BR>&nbsp;&nbsp;&nbsp; B.性激素<BR>&nbsp;&nbsp;&nbsp; C.抗生素<BR>　　24.电视台、广播电台违规发布的药品广告，（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）有权予以处罚。<BR>　　A.药品监督管理局<BR>&nbsp;&nbsp;&nbsp; B.工商局<BR>&nbsp;&nbsp;&nbsp; C.广电局<BR>　　25.胰岛素为治疗（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）的主要药物。<BR>　　A.胰腺炎<BR>&nbsp;&nbsp;&nbsp; B.胆囊炎<BR>&nbsp;&nbsp;&nbsp; C.糖尿病</P>
<P><STRONG>三、是非题（每道题1分，共30分）</STRONG><BR>　　1.药物吸收的主要部位在小肠，药物代谢的主要部位在肝脏，药物排泄的主要部位在肾脏。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　2.医疗机构配制的制剂，不得在市场销售。 （&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　3.食品，指各种供人食用或者饮用的成品和原料以及按照传统既是食品又是药品的物品，但是不包括以治疗为目的的物品。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　4.食品、食品添加剂和食品相关产品的生产者，应当依照食品安全标准对所生产的食品、食品添加剂和食品相关产品进行检验，检验合格后方可出厂或者销售。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　5.食品生产者发现其生产的食品不符合食品安全标准，应当立即停止生产。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　6.国家鼓励社会团体、基层群众性自治组织开展食品安全法律、法规以及食品安全标准和知识的普及工作，倡导健康的饮食方式，增强消费者食品安全意识和自我保护能力。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　7.食品经营者采购食品，应当查验供货者的许可证和食品合格的证明文件。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　8.无论什么季节使用燃气，都要保持室内空气畅通。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　9.嗅到室内有燃气气味时应立即启动电器开关如电灯，以查看情况。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　10.燃气着火或爆炸的三要素是燃气（可燃物）、氧气（助燃物）和点火源。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　11.液化石油气比空气重，一旦泄漏容易积聚在低处，遇到火种就会引起爆炸。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　12.燃气企业应当每两年对居民用户燃气计量装置出口后的用户设施以及燃气器具的安装、使用情况免费进行一次安检。安检过程中，居民应当给予配合，并对发现的安全隐患及时进行整改。（&nbsp;&nbsp;&nbsp; ）<BR>　　13.在地下或半地下建筑物内可以使用液化气。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　15.《中华人民共和国道路运输条例》是我国道路运输经营管理活动、道路运输领域颁布实施的第一部法律。 （&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　16.国务院交通主管部门主管全国道路运输管理工作。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　17.县级以上地方人民政府交通主管部门负责组织领导本行政区域的道路运输管理工作。 （&nbsp;&nbsp; ）<BR>　　18.客运经营者需要终止客运经营的，应当在终止前20日内告知原许可机关。（&nbsp;&nbsp; ）<BR>　　19.客运经营者、危险货物运输经营者应当分别为旅客或者危险货物投保承运人责任险。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　20.从事非经营性危险货物运输的，可以不遵循《中华人民共和国道路运输条例》有关规定。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　21.中学、小学校园周围２００米范围内和居民住宅楼（院）内不得设立互联网上网服务营业场所。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　22.第3题　互联网上网服务营业场所经营单位不得涂改、出租、出借或者以其他方式转让《网络文化经营许可证》。（&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　23.互联网上网服务营业场所经营单位不得经营非网络游戏。（&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　24.农药广泛用于农业（种植业）生产的全过程。例如播种前土壤处理、种子处理、生长期施药、农产品贮藏期用药等。（&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　25.随着生物农药、植物源农药及其他非化学防治措施的出现，化学农药在不久的将来会被淘汰。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　26.农药的残留问题完全可以通过农药的正确使用加以控制。（&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　27.座疮的病因之一是由于体内雌激素分泌过盛。 （&nbsp;&nbsp;&nbsp;&nbsp; ）<BR>　　28.洁肤用品要借助工具取放，不可直接用手从容器中抹取。 （&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　29.暗疮发炎的皮肤，不宜进行磨砂脱屑。（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ） <BR>　　30.美容师工作前后要用95%的酒精棉球消毒双手。 （&nbsp;&nbsp;&nbsp;&nbsp; ）</P>
<TABLE cellSpacing=20 cellPadding=0 align=center>
<TBODY>
<TR align=middle>
<TD><IMG src="http://pic2.66wz.com/0/10/32/63/10326328_611972.jpg" border=0></TD></TR></TBODY></TABLE>', N'hsg', NULL, 64, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (104, N'社区规范化建设工作调研', N'规章制度', N'<P>&nbsp;&nbsp;&nbsp; 2012年10月16日，示范社区考核组到仙居社区，就社区规范化建设工作进行调研，社区领导陪同调研。<BR>&nbsp;&nbsp;&nbsp; 此次调研分为听汇报、查台账、看现场、下村走访4个过程。考核小组通过听取社区工作者的工作汇报和未来的整体规划、查看相关的工作台账后，以及到现场查看等方式完成调研。<BR>&nbsp;&nbsp;&nbsp; 自2011年9月仙居社区成立以来，社区党委以规范社区服务站点管理和规范社区工作队伍管理为突破口，带领各级组织加强学习，顺利完成角色转换、职能转换，做好工作衔接，全力投入到社区规范化建设。完善大党委、管委会、议监会建设，对社区工作人员实行专职化管理、培训和考核制度；完成7大服务中心阵地建设，并将相关制度和办事流程制作上墙，实行党务、政务、事务、财务公开，为居民提供优质、透明、迅捷服务；立足社区实际，健全群团组织、社会组织的服务机制，积极开展篮球联赛、贫困户慰问、仙居武术节等各类娱民助民活动，提升居民生活质量；按照“一社一品”的创建目标，加强对雅发西红柿基地、金果葡萄园等项目的扶持力度，带动周边产业发展，利用地区优势，形成以特色生态农业发展带动农村休闲观光产业发展的建设格局，<BR>&nbsp;&nbsp;&nbsp; 通过实地考察，考核小组对社区的规范化建设工作给予充分肯定，就工作落实不到位的某些方面提出了相关的意见和建议，鼓励社区不断创新，拓宽思路，增加服务内容与形式，加强沟通平台的建设，增强与民互动，推动社区建设步入新台阶。(章文智)</P>
<P>&nbsp;</P>', N'hsg', NULL, 11, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (105, N'研究证明严控食品规范能降低心血管疾病死亡率', N'规章制度', N'　&nbsp; 新华网日内瓦７月４日电（记者 刘洋 吴陈）世界卫生组织网站４日刊载最新研究成果说，实行严格的食品规范能使<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">心血管疾病</SPAN>引发的死亡率降低２０％。
<P>　　该研究证明，一些加工食品、垃圾食品和罐装食品富含饱和脂肪、反式脂肪、热量和盐，长期食用，患心血管疾病机率将增加一倍；严格控制以上成分的用量，并在饮食中增加水果、蔬菜的摄入量，可以降低心血管疾病发病率和死亡率。</P>
<P>　　研究选取了丹麦、芬兰、挪威和瑞典等已采取严控政策的国家和英国等尚未行动的国家进行对比。结果显示，采取严控政策的国家心血管疾病导致的死亡率显著下降，糖尿病和癌症的发病率也有所降低。</P>
<P>　　研究估计，如果英国也采取这一政策，每年将挽救近３万人的生命。比如，禁止在食品中使用饱和脂肪能减少５０００人死亡，将每人每天食盐摄入量从目前的８．６克降至５．６克将拯救另外约７０００人。</P>
<P>　　心血管疾病包括冠心病、脑血管病、高血压、风湿性心脏病、先天性心脏病和心衰竭等，是人类的第一杀手。全世界每年有１７３０万人死于此类疾病，占所有死亡人数的３０％。</P>
<P>　　心血管疾病的诱因主要有抽烟、酗酒、饮食习惯不健康和缺乏运动等。</P>
<P>　　近年来，心血管疾病发病率有上升趋势。世卫组织预计，到２０３０年，每年将有约２３６０万人死于心血管疾病。</P>', N'hsg', NULL, 92, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (31, N'外交部重申域外势力不应介入南海争议', N'社团介绍', N'<DIV id=Cnt-Main-Article-QQ>
<P style="TEXT-INDENT: 2em">中新网北京11月4日电 中国外交部部长助理胡正跃近日接受记者采访，全面阐述中国的亚洲外交政策。他在答问中还谈到了南海问题，重申域外势力不应介入南海争议。答问全文如下：</P>
<P style="TEXT-INDENT: 2em"><STRONG>问：今年以来，亚洲形势倍受关注。您作为外交部主管亚洲事务的部长助理，如何评价当前亚洲形势？</STRONG></P>
<P style="TEXT-INDENT: 2em">答：在世界多极化、经济全球化深入发展大背景下，亚洲经济政治格局在出现新变化。总的看，谋和平、维稳定、求合作、促发展是亚洲形势的主流。</P>
<P style="TEXT-INDENT: 2em">尤其值得一提的是，相互尊重、睦邻友好、求同存异、和谐相处，依然是亚洲国家关系最基本和最重要特征。亚洲整体率先实现经济回升向好，中国、印度等新兴市场国家和发展中国家保持强劲发展势头，为世界经济复苏做出重要贡献。坚持新安全观，排除外来干扰，和平解决国与国争端，维护地区和平稳定，仍然是绝大多数国家的政策取向。亚洲国家间人文交流日益广泛和深入，不同文明文化在对话交流中相互促进，和谐交融。亚洲国家在地区和国际事务中保持良好的沟通与协调，亚洲发展中国家的国际地位和影响力进一步提高。</P>
<P style="TEXT-INDENT: 2em">我们坚信，只要亚洲国家坚持走适合各自国情发展道路，坚持推进区域合作，坚持顺应变革、开放、包容的时代潮流，坚持正确的方向和行之有效的原则，亚洲国家必然将更好地掌握自己的命运，开创更加美好的未来。</P>
<P style="TEXT-INDENT: 2em"><STRONG>问：现在国际上出现了一些涉及中国与亚洲一些邻国关系的评论，有些人甚至称中国同若干邻国关系紧张，一些亚洲邻国对中国感到担忧。当前中国同邻国关系究竟怎样？您可否作一介绍和评价。</STRONG></P>
<P style="TEXT-INDENT: 2em">中国同亚洲邻国的关系确实发生了历史性变化。这个变化的主要特征就是睦邻互信，互利合作。人们常讲，事实胜于雄辩。我们还是让事实来说话：</P>
<P style="TEXT-INDENT: 2em">今年，中国同亚洲邻国的高层交往继续保持频繁和活跃的局面。中国同几乎所有亚洲国家都实现了高层互访和交流，如果算上中国主要国家领导人出席的重要地区多边会议，这些高层交往活动超过60起。中国外长同亚洲邻国外长的互访也近20起。</P>
<P style="TEXT-INDENT: 2em">今年，中国同印度、印尼、越南、缅甸等邻国分别以“友好年”为主题，开展了形式多样的纪念活动，热烈庆祝双方建交<!--keyword--><A class=a-tips-Article-QQ href="http://news.qq.com/zt/2009/jianguo60/" target=_blank><!--/keyword--><FONT color=#000000>60周年<!--keyword--></FONT></A><!--/keyword-->。吴邦国委员长即将对印尼的访问，将把两国战略伙伴关系提升到一个新的高度。中印关系继续保持全面快速发展势头。中国与亚洲邻国的传统友谊、睦邻互信、互利合作和世代友好更加深入人心。</P>
<P style="TEXT-INDENT: 2em">今年，中国同东盟关系继往开来。在刚刚结束的第13次中国—东盟领导人会议上，温家宝总理和东盟各国领导人充分肯定《落实中国—东盟面向和平与繁荣的战略伙伴关系联合宣言行动计划》(2005--2010)，一致认为中国同东盟关系是最务实、最丰富、最全面、最具活力和最有成效的战略关系，一致同意继续以和平发展为主题，以友好合作为主线，更加重视经济可持续发展，更加重视全方位的互联互通，更加重视社会和人文交流，更加重视东亚的一体化建设，齐心协力，密切配合，共同落实好第二个五年行动计划(2010--2015)，进一步造福于各自国家人民，进一步为亚洲和平、稳定、发展、繁荣做出积极贡献。</P>
<P style="TEXT-INDENT: 2em">至于中国与某些邻国在一些问题上存在的分歧或争端，中方一贯主张以事实为基础，根据国际关系基本准则，通过对话磋商予以妥善处理和解决。</P>
<P style="TEXT-INDENT: 2em">我要指出，今年无论在双边交往中，还是在区域多边会议上，亚洲国家都表达了这样的信息：中国综合国力和影响力的快速上升，为促进亚洲和平繁荣、推动世界经济增长、推进国际金融体系改革做出了重要贡献；亚洲邻国同中国的新型伙伴关系经受住了时间和国际风云变幻考验；加强同中国的睦邻友好与合作是它们坚定不移的政策，这对促进亚洲各国发展以及地区和平、稳定、繁荣具有特殊的重要意义。</P>
<P style="TEXT-INDENT: 2em">总之，中国同周边亚洲邻国关系在发展，在进步，这是任何人也不能改变的事实。</P>
<P style="TEXT-INDENT: 2em"><STRONG>问：在国际金融危机影响持续发酵，国际经济环境不稳定、不确定因素增多的背景下，您认为中国同亚洲国家在拉动亚洲和世界经济增长方面发挥了什么作用？</STRONG></P>
<P style="TEXT-INDENT: 2em">答：在不久前越南河内举行的东盟—中日韩(10+3)领导人会议上，韩国总统李明博和东盟一些国家领导人说，危机孕育机遇。每次危机和挑战，无论是亚洲金融危机，还是国际金融危机，都让亚洲国家更加强大和团结，都推动东亚合作迈上新台阶，都促进了地区和世界繁荣。的确如此。</P>
<P style="TEXT-INDENT: 2em">2008年10月，在国际金融危机爆发之初，东亚国家领导人就在北京第七届亚欧首脑会议期间举行早餐会，就抵御各种风险，保持亚洲和世界经济稳定、金融稳定、资本市场稳定和社会生活稳定交换意见，达成8项重要共识。</P>
<P style="TEXT-INDENT: 2em">两年来，亚洲国家弘扬同舟共济，共克时艰的优良传统，在根据本国国情出台刺激经济政策措施的同时，加强团结协作，积极推进区域合作，为亚洲率先回升向好发挥了重要作用，并使东亚为拉动世界经济增长的重要引擎。</P>
<P style="TEXT-INDENT: 2em">贸易方面，今年1至9月，中国与亚洲国家贸易总额超过6400亿美元，同比增长38%，中国从亚洲国家进口3613亿美元，同比增长44%。中国对亚洲国家贸易逆差达796亿美元，其中，对韩国、日本和东盟贸易逆差分别为522亿、414亿和122亿美元。中国继续是亚洲国家第一大出口市场。中方加大了对孟加拉、阿富汗、巴基斯坦等南亚国家援助力度，向孟、阿70%出口中国商品提供关税优惠待遇，缓解贸易不平衡。</P>
<P style="TEXT-INDENT: 2em">自贸区建设方面，今年是中国—东盟自贸区全面建成的“元年”。作为目前发展中国家之间最大的自贸区，中国—东盟自贸区使双方资金、资源、技术和人才等生产要素的流动效率显著提高，为扩大贸易和投资合作提供了前所未有的良好环境。据中方统计，今年1-9月，中国—东盟双边贸易额达2113.1亿美元，同比增长43.7%。今年双方贸易额有望创造历史最高水平。中国和其他东亚国家还在积极推进东亚自贸区建设，中日韩三国确立了2012年完成三国自贸区官产学联合研究的目标。我们还同东亚国家一道，共同反对贸易保护主义，最大程度地减轻国际金融危机冲击。</P>
<P style="TEXT-INDENT: 2em">投资方面，中国政府鼓励有实力的企业扩大对亚洲国家的投资规模，提升投资水平。据中方统计，今年第一季度，中国对亚洲国家非金融类投资同比增长102%，亚洲成为中国设立境外企业最为集中的地区。此外，截至2009年底，中国对东盟直接投资存量达96亿美元，其中一半以上是2008年以来实现的，投资领域已经从传统的矿业、建筑业拓展到能源、制造业、商务服务业。</P>
<P style="TEXT-INDENT: 2em">基础设施建设及互联互通方面，中国积极支持“东盟互联互通总体规划”，致力于同东亚国家一起，共同推动本地区公路、铁路、航道、港口等建设，加强对大湄公河次区域经济合作(GMS)和东盟湄公河流域开发合作(AMBDC)等机制的参与和合作。</P>
<P style="TEXT-INDENT: 2em">财金合作方面，在各方共同努力下，东盟—中日韩(10+3)财金合作不断取得实质性进展。我们不仅维护了东亚金融稳定，而且实现了清迈倡议的多边化，建成了1200亿美元的区域外汇储备库和7亿美元的区域信用担保和投资基金。中方同马来西亚、印尼、韩国签订总额3600亿人民币的双边货币互换协议。中日韩三国决定尽快签署中日韩投资协议。目前，中国同其他东亚国家在共同努力，增强清迈倡议的有效性，加强宏观经济政策交流与协调，推进亚洲债券市场建设，共同探讨促进本地区债券跨境交易和结算，加强债券市场发展能力建设，并就深化东亚财金合作开展前瞻性和战略性研究。</P>
<P></P></DIV>', N'hsg', N'upload/1317085910921.jpg', 42, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (32, N'温州审批中介闯市场', N'社团介绍', N'<P>　　作为改革先行区，温州向审批中介机构开刀，推进其与行业主管部门全面脱钩，让市场的回归市场。</P>
<P>　　徐志达显然是尝到了此项改革的甜头。“才3天，界桩放样就勘测完毕了。”作为温州市中梁置业有限公司工程部经理，他经常要和审批中介机构打交道。原先同样的界桩放样，至少需10天左右。为徐志达办理界桩放样的是温州市勘察测绘研究院，其公司人员、资产、业务等与行业行政主管部门全面脱钩，成为真正独立的市场主体。</P>
<P>　　以往部分中介组织依托主管单位的权力，垄断经营，强制服务，容易引发权力寻租行为和腐败现象。审计显示，2011年1月至2012年9月，温州19家中介机构的大部分收入依托主管部门垄断经营和指定服务取得。“审批中介机构与主管部门脱钩改革，才能更好地为企业发展提供风清气正的环境。”温州市监察局相关负责人说。</P>
<P>　　脱钩改革的同时，为方便企业集中办理业务，温州市中介机构服务管理中心成立，54家审批中介服务机构入驻实体平台，395家审批中介服务机构入驻网络平台。入驻服务平台的同一性质、同一类型中介机构必须达到3家以上，以形成充分竞争。</P>
<P>　　一些中介机构为争取客户，打出了8折价。有企业给记者算了一笔账，一个工程项目审批，中介服务费用从几万元到几十万元不等，如果享受8折优惠，中介费能省下不少。</P>
<P>　　“通过‘脱钩改革，集中服务’，营造更加优良的竞争环境，加强审批中介服务的执业规范，促进项目审批的提速提效。”温州市监察局相关负责人介绍，行政审批管理部门共梳理规范中介服务事项43项，将原来22个中介服务环节合并为9个环节同步进行，中介服务整体提速44.3%以上。</P>', N'hsg', N'upload/1317086069593.jpg', 60, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (33, N'路灯到底何时才能亮？ 有关部门单位应主动介入解决', N'社团介绍', N'&nbsp;&nbsp;&nbsp; 7月4日消息：6月5日，本网以《路灯该亮不亮，谁之过？》为题，报道了县城灵溪镇大部分路灯配置不全、该亮不亮的情况。6月12日，本网再次以《路灯太孤单，谁为它找个“伴”？》为题继续追踪报道。三个星期过去了，记者于7月1日和2日连续两个晚上继续探视路灯亮化情况，发现人民大道、车站大道、塘北路、河滨路、江滨路等几十条街道的一些路灯仍然“该亮不亮”，一街桥头（城中路）一直到七街（东仓路）的几座桥头仍然一片漆黑。
<P>&nbsp;&nbsp;&nbsp; “县城路灯是由灵溪镇政府和供电局共同负责的。”灵溪镇副镇长杨立国近日接受了记者采访，他介绍说，江滨路段路灯不亮是由于江滨路旁的堤坝上本身就设置了路灯，其亮度能够照亮包括堤坝和江滨路在内的道路，同时为了避免资源的浪费，所以就关闭了该路段路灯。当前灵溪镇各主干道旁的路灯覆盖率已达100%，部分街道没有路灯需要和政府共同协商出资设置，再由供电局无偿提供用电。针对一些路段路灯损坏没人修的问题，他表示，及时维修损坏路灯工作开展有困难，但是灵溪镇政府会在一年的几个阶段开展集中维修整治。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 当记者问及“县行政中心门口路段的路灯该由谁负责”时，他的回答是“县城新区”。县住建局城建科科长叶友贤证实了这一说法：“县城路灯应该是灵溪镇的事情，如果是新区范围内，就是新区负责，并且是谁建设谁维护。”关于一街桥头（城中路）一直到七街（东仓路）的几座桥头没有设置路灯的问题，杨立国说：“没有人反映，不清楚，但我们会马上派人去调查。”</P>
<P>&nbsp;&nbsp;&nbsp; “城区的路灯是供电部门和当地政府的事，跟交通局没有关系。”县公路运输管理所所长庄庆湖在接受采访时介绍说，“除非是有些路段因为黑暗存在事故隐患，或者事故频发要求增加路灯，这跟交通部门才有关系，但是经费要由财政支持。”</P>
<P>&nbsp;&nbsp;&nbsp; “对由政府相关部门牵头新建设的城镇路灯，只有待验收合格，签订委托协议后，才属于供电部门维护范围。”据苍南电力有限责任公司的相关人员介绍，他们的主要职责就是“维护”。路灯的建设由当地政府、企事业单位及村居办事处等承担，电力部门对质量验收合格且办理移交手续的路灯开展日常维护。但是由于部分地区路灯电费、维护费采用‘自收自支’，路灯产权和维护职责不清，路灯维护力量配备不足等原因，使得城市路灯的建设运行管理、安全隐患治理等基本处于空白状态，导致长明灯、长黑灯经常出现，路灯线路私拉乱接严重，安全状况失控。</P>
<P>&nbsp;&nbsp;&nbsp; 那么，面对“路灯该亮不亮”问题，到底谁是主体？这些路灯到底要何时才能亮起来？本网将继续予以关注。（记者 叶晔 陈君 实习生 李小康）</P>', N'hsg', N'upload/1317086056687.jpg', 65, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (34, N'快递业务旺季服务保障工作形成常态机制', N'社团介绍', N'&nbsp;&nbsp;&nbsp;为了科学安排快递业务旺季期间的服务保障工作，确保服务质量，维护消费者合法权益，国家邮政局近日出台《关于做好快递业务旺季服务保障工作的意见》，由此，快递业务旺季服务的保障工作有了常态监管机制。<BR>　&nbsp; 国家邮政局有关人士表示，出台该《意见》，一是要建立健全快递服务保障应急机制，提高快递业务旺季的应对能力；二是要建立科学合理的分配和市场调节机制，有效缓解快递业务旺季的压力；三是建立完善业务量监测预警和信息沟通制度，加强快递业务旺季的协调保障工作；四是制定符合行业实际情况的具体措施，指导快递业务旺季的运营生产。 <BR>　《意见》对在快递业务旺季期间邮政管理部门、快递行业协会和快递企业的工作进行了详细安排。《意见》指出，快递业务旺季期间，邮政管理部门要做到提早安排、科学预测、加强宣传引导、强化监督指导、严格依法监管、保障信息畅通；快递协会要认真组织贯彻落实、加强沟通协调、实行市场调节、加强行业自律，同时要做好支撑服务；快递企业要落实责任制度、加强组织调度、建立应对机制、依法实行停止经营报告制度、有序安排员工休假、建立信息报告制度。<BR>　《意见》提出要建立快递业务旺季期间保障服务的应急管理机制。各地邮政管理部门要指导快递企业按照邮政业应急预案管理规定，加强和完善应急预案，建立快递业务旺季期间突发事件应急响应机制，出现突发事件及时启动应急响应，采取有效措施妥善处置，控制事态发展，并及时向当地邮政管理部门和国家有关部门报告；各地快递协会要加强组织企业间的沟通协调，建立资源互补、协调作业的工作机制。发生突发事件时，协调企业相互配合、通力合作、集中力量做好应对工作；各企业在快递业务旺季期间，遇到恶劣天气和突发事件影响时，要通过企业官网及时发布网络预警以及服务变动信息，向用户做好因天气等原因影响快件运输造成延误的解释工作。要千方百计加大运力配置和快件疏导，落实各项安全防范措施，保障干线运输的安全畅通，防止出现快件严重积压、滚存问题。<BR>　 为了统一指挥部署和加强快递业务旺季服务的领导，国家邮政局成立了快递业务旺季服务保障工作领导小组，并设立专门的办公室，负责组织、指挥、协调全国快递业务旺季服务保障工作，及时协调解决工作中出现的各种问题。各省、自治区、直辖市邮政管理局设置相应机构，负责组织、指挥、协调本辖区快递业务旺季服务保障工作。', N'hsg', N'upload/1317085936937.jpg', 84, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (35, N'松阳县党政考察团来苍 黄寿龙介绍我县情况', N'社团介绍', N'&nbsp;&nbsp;&nbsp; 12月9日消息：昨天，由丽水市松阳县委书记林建东率领的松阳县党政考察团来我县，学习考察火车站场选址规划建设、发展工业、中心镇建设体制机制创新等方面的经验做法。县委书记黄寿龙和县领导林万乐、戴嘉宝、胡长虹、王宗泽、林森森、陈雷、张传君陪同考察。
<P>&nbsp;&nbsp;&nbsp; 考察团首先深入龙港参观了浙江强盟实业股份有限公司，详细了解企业的生产、销售情况，并实地参观了解苍南火车站和县城新区规划建设情况。在随后召开的松阳县与苍南县经济社会发展情况交流会上，黄寿龙向考察团介绍我县近年来的经济社会发展情况。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 据了解，松阳是最早的建置县，建县于东汉建安四年（公元199年），距今已有1800多年。松阳又是丽水最年轻的县之一。全县地域面积1406平方公里，辖5镇15乡，401个行政村，总人口23.5万。松阳是“浙江脐橙之乡”，也是浙江省食用菌强县，该县的玉岩镇是“中国花菇之乡”，裕溪乡是“中国油茶之乡”。近年来，通过大力实施“异地创业战略”，全县近5万人外出创业。</P>
<P>&nbsp;&nbsp;&nbsp; 在考察中，考察团对我县经济社会快速发展给予充分肯定，并表示要以此次考察为契机，把我县在建设发展中的好经验、好做法带回去，结合当地实际，为当地经济社会发展提供更为科学的决策依据。黄寿龙认为，苍南和松阳两县虽然分属两个地区，但两县之间无论在生态资源开发，还是工农业发展、城镇建设，都具有互相借鉴的基础和现实条件，希望两地之间进一步加强合作，真诚交流，互惠互利，共同发展。（记者 董少芬）</P>', N'hsg', N'upload/1317085922265.jpg', 92, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (36, N'市区多家房产中介最近“零交易”', N'社团介绍', N'&nbsp;&nbsp;&nbsp;温州版“限购令”3月11日下午由市府办正式下发，3月12日和13日是双休日，市房屋登记中心不对外办公。3月14日是“限购令”实施后的首个工作日，当天市房屋登记中心接到二手房登记20多件，这一数字和3月1日后基本持平。 
<P>　<STRONG>　中介人员玩游戏打发时间</STRONG></P>
<P>　　记者走访市区惠民路、学院路、谢池巷一带多家房产中介所，发现这些中介所生意比较冷清，好几家中介所人员都在无聊地看电视、打电脑游戏，看房的人非常少，不少中介所负责人表示近期在介绍二手房买卖方面都是“零交易”。</P>
<P>　　位于市区上陡门的一家房产中介所的王先生说，在2月23日市政府常务会议审议并原则通过楼市新政后，客户的观望情绪就非常明显了，原先约好看房的购房者，不少人打起退堂鼓。王先生说：“半个多月了，我连一套房子都没有介绍出去。”</P>
<P>　　在市区谢池巷开了十多年房产中介所的一负责人说，二套房首付比例提高，贷款难度也大，第三套房又不能购买，这对投资客的打击是显而易见的，一些原本就观望的客户会继续观望，而真正的刚性需求者会认为新政出台后房价会稳定或下调，所以也不急，就想等一段时间看看行情再定。</P>
<P>　　市区惠民路一家房产中介所的吴先生说，从春节到现在，他没有成功介绍过一套房屋出售，但已多次成功介绍房屋租赁。“以前我主要是做房屋出售中介的，房屋租赁生意有一单就做一单，没有也无所谓，但楼市新政出台后，我做的几乎都是房屋租赁中介生意。”</P>
<P>　　学院路一家房产中介所人员称，春节过后，不少拥有多套住房者，开始把手中的房子挂在中介所打探市场行情，无奈“接招”的人不多。这一说法得到好几家房产中介所的证实。中介人员普遍认为，近期不仅出售房源增多，房东想早点脱手的比较多。上陡门一家房产中介所人员称，因为对于很多炒房者来讲，价格稳定不动，等于“钱没有生钱”，所以就想尽快脱手，再拿着现金去进行别的投资。</P>
<P>　　一名中介人员说，其实急于出手的都是一些资金实力并不雄厚的投资客，手头资金压力较大，选择降价回笼资金，否则长时间耗下去，银行方面的利息吃不消；而手头有三到五套房的投资客，很多都是资金实力雄厚的，这些投资客大多数选择观望，从目前来看降价抛售的仍是少数。</P>
<P>　<STRONG>　房价能否降下来还有待观察</STRONG></P>
<P>　　楼市新政出台后，对于拥有一套房产的人来说，购买第二套就谨慎多了。陈先生在市区上陡门有一套63平方米的房子，本来想再买一套100平方米的房子给孩子。“我一直下不了决心买，不过现在新政出来后，首付比例这么高，我还是再等一等吧。”陈先生如是说。记者了解到，和陈先生有同样想法的不在少数。</P>
<P>　　来自龙湾的胡先生在市区一家事业单位工作好几年了，去年就打算在小高桥或下吕浦买房安家，房子也看了好几套，但一直没“下单”。他说：“价格实在太高了，按揭还贷的压力也大，再等等看。”业内人士认为，这是买卖双方的一场“博弈”，最终房价能否降下来，还有待观察。</P>
<P>　　记者了解到，目前市区的房价基本平稳。如市区上陡门一带，60平方米左右普通装修的二手房，价格约25000元/平方米。上陡门一家房产中介所负责人称，虽然房源增加，但没有出现大量抛盘现象。据了解，近期买房的很多是为了孩子上学买学区房。</P>
<P>　　一名在房产市场“历练”了十多年的房产中介公司负责人称，频频出台的政策让购房者看到国家遏制房价过快上涨的决心，也有效消除了部分购房者对于房价继续上涨的担心。该负责人称，从目前看，温州的房产市场会出现新一轮观望期；但从长远看，受土地供应量偏少、土地拍卖价高、改善性需求大等因素影响，市场变化不会如外地城市明显，而且政策效果最终要看具体执行力如何。（记者 刘彩玲）</P>
<P>　<STRONG><FONT color=#008080>　[相关链接]</FONT></STRONG></P>
<P>　<STRONG>　今年加快保障性住房建设</STRONG></P>
<P>　<FONT face=楷体_GB2312>　今年，市住建委将加快保障性住房建设（见下表），努力解决城乡困难群众住房难问题。另外，今年我市还将保质保量按时开工建设100万平方米安置房。加快推进市区广化路、惠民南路等7个在建地块共计125万平方米的安置房工程建设。加大安置房源统筹力度，争取解决在外过渡4年以上拆迁户的安置问题，今年要完成安置房交钥匙2000户，认购2000户。</FONT></P>
<P>　</P>
<P align=center>
<META name=ImageStart><IMG height=254 src="http://www.wenzhou.gov.cn/picture/0/110315052104283.JPG" width=232 border=0> 
<META name=ImageEnd></P>
<P>　　<STRONG>温州版“限购令”</STRONG></P>
<P>　　<FONT face=楷体_GB2312>根据实施意见，我市对居民新购买商品房继续执行去年10月出台的限购1套的政策，此次新政对购房家庭既有的住房套数做出了认定，将其作为判断是否具备购房资格的条件——对已拥有2套及以上住房的本市户籍家庭、拥有1套及以上住房的非本市户籍居民家庭、无法提供1年以上本市纳税证明或社会保险缴纳证明的非本市户籍居民家庭，要暂停其在本市内购房。违反规定购房的，不予办理房地产登记。</FONT></P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 27, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (37, N'大批民众围堵人民银行北海支行申贷 警方介入调查', N'社团介绍', N'<P class=left_ph align=center sizset="false" sizcache04084828436928534="47 16 6"><IMG alt=大批民众围堵人民银行北海支行申贷警方介入调查 src="http://image1.chinanews.com.cn/upload/2013/130709//27316670.jpg"></P><!--图片说明-->
<DIV class=left_pt>&nbsp;&nbsp;&nbsp;&nbsp;7月9日，聚集在中国人民银行北海市中心支行的外地民众越来越多，当地官方不得不出动大批边防、特警前往维持秩序。近日谣传凭人民银行的《个人信用报告本人查询申请表》可以申请办理无息、贴息、低息贷款。图为边防武警“砌”起两道“人墙”，阻挡情绪激昂的人群。　翟李强　?</DIV><!--图片说明--><!--图片end--><!--正文start-->
<DIV style="POSITION: relative" class=left_zw>
<P>　　<A href="http://www.chinanews.com/" target=_blank>中新网</A>北海7月9日电(冯抒敏 翟李强 陈燕)7月9日上午，经过数个昼夜的排队，聚集在中国人民银行北海市中心支行的人群越来越多，民众情绪一度激昂。由于担心发生踩踏等意外事故，广西北海官方不得不出动大批边防、特警前往维持秩序。 </P>
<TABLE style="PADDING-RIGHT: 10px" border=0 cellSpacing=0 cellPadding=0 align=left>
<TBODY>
<TR>
<TD>
<DIV id=adhzh name="hzh"><!-- 1807：新闻通发页 大画 -->
<SCRIPT id=ac_js86_1807></SCRIPT>

<SCRIPT type=text/javascript>
_acK({aid:1807,format:0,mode:1,gid:1,serverbaseurl:"me.afp.chinanews.com/"});
</SCRIPT>
</DIV></TD></TR></TBODY></TABLE>
<P></P>
<P>　　这些操着山东、重庆等地口音的民众希望能领到一份中国人民银行的《个人信用报告本人查询申请表》。近日有传言称凭该表可以申请办理无息、贴息、低息贷款。等候的人群之中大部分已经连续数天彻夜守在人民银行北海支行门前。</P>
<P>　　当天上午8时许，人民银行北海支行的大门紧闭，门前已被拉起警戒，但大批民众依然在警戒线外苦苦守候。不少人扒着银行围墙的铁栅栏，眼巴巴地等着银行能对他们敞开办理业务的大门。等待之中，民众情绪一度激昂，场面一度濒临失控。</P>
<P>　　就在前两天，部分外地民众还曾在人民银行北海支行大门旁边的业务窗口领到过《个人信用报告本人查询申请表》。现在，这个业务窗口已经紧紧关闭。</P>
<P>　　人民银行北海支行当天上午9时召开新闻发布会称，目前，该支行个人信用报告查询申请业务工作量超负荷，已暂停办理。</P>
<P>　　在人群中等候的一名来自云南的中年男子说，看到别人来办理，他也跟着过来，看看是否真能贷到款。</P>
<P>　　“我已经排了几天了，也没领到表。”一名皮肤黝黑、40岁左右的外地女子说，她只是听说消息后，跟着别人来办理，但具体情况她也不清楚。</P>
<P>　　据现场了解，这些外地民众上周即开始陆续到人民银行北海支行申请办理个人信用报告查询业务，但在这两天呈“爆发式增长”的趋势。人民银行北海支行的一名工作人员透露，仅7月8日一天，该支行即收到上万份申请表。</P>
<P>　　火爆的个人信用报告查询申请业务让一些人嗅到商机，趁机大捞一笔。有人在路边趁机兜售《个人信用报告本人查询申请表》复印件；有人全家老小齐上阵，以每份20元的价格帮他人递交申请表。</P>
<P>　　“我们一家从山东过来这边做投资。”一名刘姓女子说，从8日晚到9日中午，他们一家10余口人已经按卖水、卖干粮、现场排队、“拉生意”等分工，成功向银行递交20多份申请表。</P>
<P>　　“我们里边有人，而且我们有5个亲属在里面坚持排着队，从来没有离开过。”上述刘姓女子神秘地说，他们只帮外地人办理，不接受本地人的申请。当记者追问他们在北海做何种投资时，刘姓女子被其家人阻止继续谈话。</P>
<P>　　现场一名东北女子透露，6月下旬，他们从一家有关房地产的内部网站看到一则凭人民银行的《个人信用报告本人查询申请表》能无息、贴息、低息贷款的信息，包括办理时需要提供什么材料等。</P>
<P>　　人民银行北海支行7月8日发布通告称，近段时间，外界流传的利用个人信用报告可以到当地人民银行办理无息贷款、贴息贷款、低息贷款和信用卡等业务均是谣传，请广大群众提高警惕，不要上当受骗，不要轻信谣言。</P>
<P>　　尽管银行发布了通告并在现场不断播放辟谣广播，人群仍然不愿散去。直至9日上午11时左右，由于银行工作人员走入人群不断疏导并做宣传辟谣工作，人群才逐渐离开。</P>
<P>　　目前，当地警方已经介入调查此事。(完)</P></DIV>', N'hsg', NULL, 57, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (38, N'文成举行山海协作项目推介会', N'社团介绍', N'&nbsp;&nbsp;&nbsp;&nbsp; 6月7日，文成县2011年山海协作（招商引资）项目推介会在温举行。会上，签订7个项目的投资协议，签约金额达12.22亿元。 
<P>　　此次推介会文成共推出了35个附加值高、市场前景广的项目，涉及基础设施配套、旅游开发服务、农业类及房地产等。来自湖南、新疆、福建等省的100多家企业代表参加了推介会，并与文成县签订了总计12.22亿元投资协议。其中有县城五星级宾馆、云曲水濂休闲会所、玉润康居、颐和公社老年养老院等项目。</P>
<P>　　为了鼓励和引导民间投资的健康发展，规范招商程序，提高招商效率，文成县制定出台了《关于促进招商选资工作的若干意见》，对该县的招商项目申报、项目论证和包装、项目招商方式、项目签约以及招商的服务与环境都作出了明确规定。在招商思路方面，重点突出亿元以上项目的包装推介，并主动联系一批在省内、国内具有较强品牌带动力与美誉度的地产及旅游投资开发集团洽谈。（夏文科 钟建芬）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 16, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (39, N'专家介绍龙港城市总体规划设计情况', N'社团介绍', N'&nbsp;&nbsp;&nbsp; 我县日前召开龙港城市总体规划汇报会，中国城市规划设计研究院深圳分院副院长朱荣远等专家详细介绍了龙港城市总体规划设计情况。县委书记黄寿龙、县委副书记、代县长董庆华分别在会上提出要求，县领导林万乐、黄锦耀、尤有光在会上提出建议和意见。
<P>&nbsp;&nbsp;&nbsp; 听取专家和部门的意见后，黄寿龙指出，龙港是个新兴城镇，从无到有、从小到大，应该更加深刻地认识其内涵，充分分析其地理位置、产业布局、交通设施、生态保护乃至地方文化等等客观因素。对苍南来说，一定要规划先行，舍得投入。规划要做就要上档次、大手笔，因此就要找“深圳分院”这样的单位来规划，从某种意义上说，规划就是一个地方的“法律”，做好了规划就要坚决执行实施，不能以个人意愿或者其他原因而随意改变。黄寿龙还对该设计单位提出的“三位一体，三大三小”的设计理念表示赞同，并希望该设计单位继续为我县做好全县规划及部分功能区的规划，并多多听取我县的意见，进行适当参考，尽最大力量做好“大苍南”规划。董庆华希望设计单位要着重对鳌江流域和整个苍南进行再研究再分析，用长远的目光把未来的苍南规划好。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 朱荣远表示，将结合龙港乃至苍南发展实际，尽心尽力做好龙港城市总体规划。对于未来苍南总体规划，他表示，要集中精干力量，根据苍南发展的进展和需求进行规划。（记者 叶晔）</P>', N'hsg', NULL, 72, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (40, N'邮政业消费者申诉情况的通告', N'社团介绍', N'&nbsp;12月，国家邮政局和各省（区、市）邮政管理局通过“12305”邮政行业消费者申诉电话和国家邮政局网站共受理消费者申诉8369件，比上月增加5081件，增长154.5％；答复咨询394件，比上月增加68件，增长20.9％。申诉中涉及邮政服务问题的930件，比上月增加360件，增长63.2％，占总申诉量的11.1％；涉及快递业务问题的7439件，比上月增加4721件，增长173.7％，占总申诉量的88.9％。已处理申诉中有效申诉（确定企业责任的）1980件，比上月增加572 件，增长40.6％，占总申诉量的23.7％。经调解消费者申诉已全部妥善处理，为消费者挽回经济损失35.4万元，消费者对申诉处理满意率为94.7％。 
<DIV><BR>　　2010年全年共受理消费者申诉32123件，比2009年增加12845件，增长66.6％；答复咨询3133件。申诉中涉及邮政服务问题的5504件，同比增加681件，增长14.1％，占总申诉量的17.1％；涉及快递业务问题的26619件，同比增加12164件，增长84.2％，占总申诉量的82.9％。全年有效申诉12014件，同比增加5587 件，增长86.9％，占总申诉量的37.4％。消费者申诉全部妥善处理，全年为消费者挽回经济损失261.1万元，同比增加115.8万元。消费者对申诉处理满意率全年平均为91.5％。</DIV>', N'hsg', NULL, 51, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (41, N'北京招商引资推介会喜获丰收 70亿投资注入苍南', N'社团介绍', N'<DIV align=center>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img height=387 src="http://pic2.66wz.com/0/10/68/83/10688366_202635.jpg" width=610 border=0></SPAN></DIV>
<DIV align=center>李士明/摄<BR>&nbsp;</DIV></DIV>
<P>&nbsp;&nbsp;&nbsp; 苍南新闻网12月16日消息：瑞雪兆丰年。记者从12月15日我县在北京大学举行的2012年苍南县（北京）招商引资推介会上获悉，当天下午举行的签约仪式上，龙港镇与北京温州商会进行龙港产业科技园项目签约。据悉，当天签约的8个项目总投资额近70亿元。这些项目的成功引进，将为我县经济发展注入新的强大的动力。县领导张传君、黄锦耀、蓝德超、邵潘锋、魏中梁、朱诗力等参加推介会。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 据了解，当天签约的项目有总投资12亿元的龙港产业科技园、总投资达30亿元的龙港新城城市综合体以及苍南县汽车贸易园4S店、龙港镇泰安地下商业街、矿山井巷总部经济大楼、县城新区五星级大酒店、年产400万户高防护安全电表箱建设项目，年产14500万个印铁三片罐建设项目等8个项目。</P>
<P>&nbsp;&nbsp;&nbsp; 县商务局在会上作招商项目推介，在京苍南籍工商经济界、苍南矿山井巷行业、苍南人联谊总会、苍南工商界等代表与我县四套班子领导、部门负责人汇聚一起，共同为苍南经济社会发展发表真知灼见，把脉开方。</P>
<P>&nbsp;&nbsp;&nbsp; 县委常委、常务副县长黄锦耀在听取广大企业家们的座谈发言后，对他们为家乡建设和苍南发展作出的积极贡献给予较高的评价，并希望在外苍南人紧紧抓住当前发展机遇，深度谋划对接项目，积极回乡投资创业，把更多的经营理念、创业资本、技术和人才带回苍南，为家乡的经济社会发展再立新功，再作贡献。</P>
<P>&nbsp;&nbsp;&nbsp; 黄锦耀表示，我县将以最好的项目、最优的服务、高额的回报，吸引更多的在外苍南人回乡投资。同时要进一步严肃纪律，健全服务，完善政策，努力为家乡投资者营造良好、高效的投资环境。（记者 方耀星）</P>', N'hsg', NULL, 80, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (42, N'我市赴厦门推介温台经贸合作项目', N'社团介绍', N'<P>　　9月8日，第16届中国国际投资贸易洽谈会在厦门召开。我市借此举办“2012温台经贸合作项目暨浙台（苍南）经贸合作区推介会”，苍南中易力旺市场开发项目、台湾农产品（华东）集散物流中心等6个项目现场签约，总投资额18.9亿元。</P>
<P>　　市商务局表示，我市今年多次组团赴台举行经贸交流活动，此次赴厦门举办大型温台交流推介专场，目的是推进温州和台湾之间在更深层次、更广范围的产业交流和投资合作。在此次推介活动中，我市带去了100多个从项目库中精心挑选出来的现代服务业和现代农业投资项目，主要涉及海洋经济、总部经济、楼宇经济、重大基础设施以及旅游、商贸、金融、物流、创意产业等，浙台（苍南）经贸合作区则作为浙江省对接“海西”建设、促进浙台经贸交流合作的重要平台得到重点推介。</P>
<P>　　现场签约的六个项目，分别是中易力旺苍南台湾商品交易市场、温州强玮实业有限公司（筹）儿童文教用品研发及生产基地、苍南县采风医美中心、工厂化袋式生产杏鲍菇项目、合作建设台湾农产品（华东）集散物流中心项目以及温州市庆农自动化育苗中心。</P>
<P>　　其中，中易力旺苍南台湾商品交易市场由易得利集团和台湾力旺国际企业集团合作，主要从事台湾商品在苍南的交易与展示，项目选址灵溪镇，已开展地基填方工作，总投资额约5000万元。</P>
<P>　　台湾农产品（华东）集散物流中心项目用地约70亩，总投资约1.2亿美元，突出台湾元素，建成面向华东地区的台湾农产品仓储、展示展销、批发、物流转运中心。</P>
<P>　　在台湾的产业结构当中，三分之一是制造业，三分之二是服务业，新一轮的产业转移更多的是高端的战略性新兴产业和现代服务业；而随着“两海两改”战略的全面实施，温州发展服务业的条件更加成熟。今年以来，苍南县充分利用自身资源和浙台（苍南）经贸合作区的优势，吸引了越来越多的台商进驻投资，签下的台资项目已达到10个，落地项目资金近20亿元</P>
<P>　　副市长胡纲高出席活动。</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 80, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (43, N'各种心理疾病的危害介绍', N'社团介绍', N'　严重影响人们身体健康的一类疾病就是<B>各种<A class=innerlink href="http://www.chinajs120.com/html/xljk/yichangxinli/" target=_blank>心理疾病</A></B>。心理疾病的发生与多种因素有关，人们生活压力过大，外界因素的影响等等都有可能导致各种心理疾病的发生。心理有问题人往往容易走极端，甚至有可能危害周围朋友的生命安全，令大家十分<A class=innerlink href="http://www.chinajs120.com/html/kongjuzheng/">恐惧</A>。 
<P><SPAN style="FONT-SIZE: 14px"><SPAN style="FONT-FAMILY: 宋体">　　在现今社会，很多犯罪都是由于各种心理疾病所导致的，也就从另一个侧面表现出，社会上群众的心理存在着很大的病态情况。</SPAN></SPAN></P>
<P><SPAN style="FONT-SIZE: 14px"><SPAN style="FONT-FAMILY: 宋体">　　据访问，大学生心理障碍的产生率接近30%;有30%的小学生和35%的中学生存在相异程度的心理异常;精神病病者自杀占自杀总人数的30%-40%;北京市综合医院门诊发病的人中，约有70%-80%所患病态与心理社会元素相关。</SPAN></SPAN></P>
<P><SPAN style="FONT-SIZE: 14px"><SPAN style="FONT-FAMILY: 宋体">　　各种心理疾病所产生的危害主要包括以下几种：</SPAN></SPAN></P>
<P><SPAN style="FONT-SIZE: 14px"><SPAN style="FONT-FAMILY: 宋体">　　1、祸及他人：当精神心理疾病患者出现危险行为攻击他人时，多会对被攻击者的心理和身体造成不同程度的伤害，其中尤以患者周围熟悉的人居多。</SPAN></SPAN></P>
<P><SPAN style="FONT-SIZE: 14px"><SPAN style="FONT-FAMILY: 宋体">　　2、伤及自己：自杀是对精神心理疾病患者危害最大的一种行为方式。据临床调查，自杀率最高的精神心理疾病是<A class=innerlink href="http://www.chinajs120.com/html/yiyuzheng/" target=_blank>抑郁症</A>，其自杀危险高于一般人的25--50倍；其次是<A class=innerlink href="http://www.chinajs120.com/html/jingshenfenlie/" target=_blank><A class=innerlink href="http://www.chinajs120.com/html/jingshenfenlie/">精神分裂</A>症</A>，在死亡的精神分裂患者中约占13%。</SPAN></SPAN></P>
<P><SPAN style="FONT-SIZE: 14px"><SPAN style="FONT-FAMILY: 宋体">　　3、危及社会：有的精神心理疾病患者难以走出心理误区，偏执记恨于政府、社会，有的甚至采取过激行为，给社会造成不良影响。</SPAN></SPAN></P>', N'hsg', NULL, 85, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (44, N'北京“鼠族”介意称呼 称路渺茫没梦想才可怕', N'社团介绍', N'<P style="TEXT-ALIGN: center" align=center>&nbsp;&nbsp;&nbsp;<A href="http://news.xinhuanet.com/society/2010-12/13/c_12872244_2.htm"><IMG id={B9C8CC59-DB98-49A7-8A73-D40B28BF92CB} title="" style="WIDTH: 400px; HEIGHT: 266px" src="http://news.xinhuanet.com/society/2010-12/13/12872244_61n.jpg" align=center border=0></A></P>
<P style="TEXT-ALIGN: center" align=center>&nbsp;<FONT face=楷体_GB2312 color=navy>小石在屋内炒菜，油烟大，所以半掩着房门透透气，此时小郭则抱着换洗的衣服去洗。</FONT></P>
<P align=center><A href="http://news.xinhuanet.com/society/2010-12/13/c_12872244_2.htm"><IMG id={8AE5C8BB-F219-4810-B167-DD03F26BDFEF} title="" style="WIDTH: 400px; HEIGHT: 266px" src="http://news.xinhuanet.com/society/2010-12/13/12872244_21n.jpg" align=center border=0></A></P>
<P style="TEXT-ALIGN: center" align=center>&nbsp;&nbsp;&nbsp;&nbsp;<FONT face=楷体_GB2312 color=navy>小石到公共洗手间洗菜时，遇到了正在洗头的邻居。</FONT></P>
<P align=center><A href="http://news.xinhuanet.com/society/2010-12/13/c_12872244_2.htm"><IMG id={2484F115-A92A-4DEE-BFFE-3B13CEC78BEA} title="" style="WIDTH: 400px; HEIGHT: 266px" src="http://news.xinhuanet.com/society/2010-12/13/12872244_31n.jpg" align=center border=0></A></P>
<P style="TEXT-ALIGN: center" align=center>&nbsp;&nbsp;&nbsp;<FONT face=楷体_GB2312 color=navy>&nbsp;小石与小郭家的全景。</FONT></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;22岁的小石在木樨园附近的百荣世贸商城做导购员，未婚夫小郭是运输公司的司机，两人住在商城两公里外一小区的一间地下室。虽然是一个仅有8平方米、不带厨卫的“开间”，但月租才450元，离工作地点不远，对付一下，家的功能还算完整。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;在北京，像他们这样生活的人不知数以多少万计。这群人有太多的无奈，无奈于为多攒点钱而选择来大城市打拼，无奈于住不起地上的房子，无奈于继“蚁族”之后成为被社会关注的新焦点并被称为“鼠族”，无奈于明年北京人防工程集中清人，可能连地下室都没得住了……</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG><FONT color=navy>&gt;&gt;屋子小</FONT></STRONG></P>
<P>&nbsp;&nbsp;&nbsp;<STRONG><FONT color=navy>&nbsp;同样是过日子</FONT></STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;9日晚上6点，小石在下班路上买了菜，洗好后等小郭回来才下锅。入住时，管理员叮嘱说禁止做饭，毕竟这种由数十间小屋组成的地下居住区隐患重重，但看到邻居们都做饭，她也就“随大流”了。“能省钱，吃着也方便。”小石说。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;安置完必要的家具，屋子里就剩下1平方米的空间供他们活动。墙角摞着鞋，放不下的杂物和该洗的衣服就搭在顶棚下粗大的管线上。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;小石和小郭是高中同学。高中毕业后小石就来了北京，小郭一直在江苏。去年年底订婚后，两人一起在北京打拼，月薪加起来4000元出头。此前，他们住在昌平城乡接合部的平房中，月租四五百，但距上班地点太远。“现在步行20分钟就能到”。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;小石说，他们两人省着花每月能攒下两千，但如果赶上哪个月生病，或者来朋友要出去玩，当月可能就攒不下钱。“他爱抽烟，一个月烟钱一两百，我总说他也不听。”每当因为吸烟的事惹小石生气，小郭就会拿看电影这样的事哄她。但实际上，都快一年了，两人也没看过一回。</P>', N'hsg', NULL, 81, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (45, N'温州市爱国主义教育基地——林夫纪念馆简介', N'社团介绍', N'<DIV align=left>&nbsp;&nbsp;&nbsp; <BR><BR>&nbsp;&nbsp;&nbsp; 为纪念我国文化艺术界著名烈士、鲁迅先生学生、新兴版画先驱林夫，经上级批准，1999年在林夫烈士家乡林家塔兴建林夫纪念馆，现已被中共温州市委、温州市府命名为高级爱国主义教育基地。<BR>&nbsp;&nbsp;&nbsp; 林夫纪念馆占地面积2000平方米，建筑面积550平方 米，包括三间仿古建筑的主楼，五间二层综合楼，十间双向走廊，飞檐琉瓦的牌门和围墙。馆内绿化也体现出园林式的布置。<BR>&nbsp;&nbsp;&nbsp; 我们从牌门进入纪念馆广场，首先映入眼帘的是一帧高3米，宽2.7米的大理石雕像，用现代电脑雕刻的技术，现现了当年鲁迅先生与林夫盘坐欢谈的情景，整个纪念馆现分为五大部分;<BR>&nbsp;&nbsp;&nbsp; 第 一部分是林夫生平事迹介绍。用翔实的史料文字和图片，讲叙了这位生长在旧中国的莘莘学子把自己命运紧紧地和国家与民族命运连在一起的，热爱艺术、忧国忧 民，走上革命道路的成长过程，介绍他响应鲁迅先生倡导的中国新兴木刻运动，在浙南游击根据地进行的革命文化艺术实践的经历，和被捕后身陷囹圄，正气凛然的 革命气概。<BR>&nbsp;&nbsp;&nbsp; 第二部分是林夫生前的版画木刻作品。这部分共展出目前幸存的林夫版画46幅。其中木刻《母亲》是林夫的代表作，入选被鲁迅先生称之为 “聚全国出品的精粹的第一本”的《全国木刻联合展览会专辑》，该作品表现的是一位普通女性，看似平淡，而艺术感染力十分强烈，令人感到母亲的善良与伟大。<BR>&nbsp;&nbsp;&nbsp; 第三部分征集了全国文化艺术界的老前辈、林夫的老同学、老战友的题辞、楹联、书法共四十余幅。中国美术家协会代主席王琦、中国美术协会副主席李少言、中国美院副院长赵宗藻浙江版画协会名誉主席赵延年等老一代著名版画家均为纪念馆留下了珍贵的墨宝。<BR>第 四部分是浙江版画陈列宝。室内陈列了浙江省五十多位版画家的八十多幅作品。金逢孙、夏子颐、张怀江、杨可扬、赵延年、赵宗藻、吴平等著名版画家都亲手将自 己四十年代、五十年代的作品捐献给纪念馆，这十分宝贵的艺术珍品的陈列，无疑给参观者和美术、版画研究者带来浓厚的兴趣，浙江版画家协会主席赵宗藻教授还 亲自为这个陈列室起草了前言。<BR>&nbsp;&nbsp;&nbsp; 第五部分是电视专题片《林夫》的播放室。1998年4月，苍南电视台与钱库广电站联合组成摄制组，怀着对先烈的崇敬 心情，踏遍了上海、福建、江西、杭州、棘、温州、平阳等林夫生前活动、战斗过的旧址，采访了十多位林夫生前的同事与战友，拍下了刻满岁月斑驳动人的历史画 面。该片长达二十五分钟，以纪实的拍摄方法和追忆性的画面，深切缅怀和热情赞颂了林夫烈士为革命流血、为艺术献身的短暂而光辉的一生。</DIV>', N'hsg', NULL, 32, CAST(0x0000A8990152E314 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (46, N'2011年温州市各级机关考试录用公务员专业资格审查办法', N'社团公告', N'&nbsp;&nbsp;&nbsp;2011年温州市考试录用公务员招考专业（职位）报名资格审查的原则是，对专业技术性强的专业（职位）按照报考人员所学专业对口掌握，综合管理性的专业（职位）适当从宽，相近相关专业可允许报考；2011年普通高校应届毕业生，依据学校学习专业进行资格审查。具体如下掌握： <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;一、“文秘”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;含有“文秘”的专业； <BR>&nbsp;&nbsp;&nbsp;&nbsp;哲学类：哲学、逻辑学、伦理学； <BR>&nbsp;&nbsp;&nbsp;&nbsp;政史类：法学、科学社会主义、国际共产主义运动、中国革命史、中国共产党党史、科社与国际共产主义运动、中国革命史与中共党史、社会学、社会工作、政治学与行政学、国际政治、外交学、国际政治经济学、政治学、政治学理论、马克思主义理论与思想政治教育、政治与思想品德教育、马克思主义哲学、政治与行政学； <BR>&nbsp;&nbsp;&nbsp;&nbsp;教育学类：思想政治教育、人文教育、教育学、教育管理、教育技术学、教育技术、文秘教育、科学教育、政治教育、现代教育技术、政史教育学、政治和历史教育； <BR>&nbsp;&nbsp;&nbsp;&nbsp;文学类：中国文学、汉语言文学（含师范方向）、汉语言、对外汉语、中文、中国语言文学、应用语言学、古典文学、汉语言文学教育、汉语言教育、中国现代文学； <BR>&nbsp;&nbsp;&nbsp;&nbsp;新闻传播学类：新闻学、广播电视新闻学、编辑出版学、传播学、广告学、媒体创意、网络传播、广告、广播电视新闻、广播电视编导、新闻采编与制作、新闻学与大众传播、广告艺术设计、戏剧影视文学专业、新闻传播、传媒策划与管理（新闻）、广告与广告管理； <BR>&nbsp;&nbsp;&nbsp;&nbsp;历史学类：历史学、世界历史、民族学； <BR>&nbsp;&nbsp;&nbsp;&nbsp;管理学类：人力资源管理、管理科学、管理学、管理科学与工程、公共政策学、公共关系学、行政管理、行政管理学、机关管理与办公自动化、工商管理、工商企业管理、公共事业管理、公共管理、党政管理、社会工作与管理、社会管理、社会工作； <BR>&nbsp;&nbsp;&nbsp;&nbsp;文秘、文秘档案、秘书学、涉外文秘、中英文秘、文秘英语、法律文秘、经济秘书、现代文员、文秘与办公自动化等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;马克思主义基本理论、政治理论、中国哲学、中国古代文学、秘书、涉外秘书、现代文秘、行政文秘、商务秘书、行政管理（电子管理）、古代文学 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二、“中文”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;汉语言文学、中国文学、中国现代文学、汉语言文学教育、汉语言教育、汉语言、对外汉语、新闻、中国语言文学、广播电视新闻、古典文学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三、“新闻”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;新闻学、广播电视新闻学、编辑出版学、传播学、媒体创意、新闻广告等、广播电视编导、新闻采编与制作、新闻学与大众传播、新闻传播学类。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四、“法律”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;法学类：法学； <BR>&nbsp;&nbsp;&nbsp;&nbsp;法律各相关专业（含经济法、国际经济法、行政法、民事诉讼法、民商法、刑法学、宪法与行政法、知识产权法等专业法）、法律学、律师、法律教育、法理； <BR>其他专业的人员，取得中华人民共和国律师资格证书或A类、B类法律职业资格证书的，可以报考。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五、“法学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;法学类等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六、“诉讼法”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;诉讼法学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;七、“刑法学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;刑法学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;八、“多媒体制作”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;传播学、媒体创意、多媒体制作、广告艺术设计、数学媒体艺（技）术、艺术设计、多媒体计算机、计算机多媒体运用技术等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;九、“质量管理”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;质量管理等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;管理学类产品质量工程、测控技术与仪器及相关专业、食品质量与安全、食品卫生与检验、食品质量与管理、机械设计制造及其自动化、机械工程及自动化。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十、“计算机”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;电子信息科学类：电子信息科学与技术、电子信息科学与工程、电子工程与自动化、信息安全、信息科学技术、电子信息技术、应用电子技术教育、电子学与信息系统、微电子学和固体电子学、微电子学、信号与信息处理、计算机信息、信息管理系统、信息管理技术与应用、电子信息工程教育、电机电子工程、电子商务工程； <BR>&nbsp;&nbsp;&nbsp;&nbsp;电气信息类：电子信息工程、电子科学与技术、软件工程、软件技术、计算机软件与理论、计算机系统结构、计算机软件设计、计算机软件技术与应用、软件编码与测试、计算机软件与网络应用、网络工程、计算机软件、通信工程、光电信息工程、广播电视工程、电气工程及其自动化、电气工程与自动化、自动化、通信与信息系统、工业自动化、信息与计算科学、计算机信息技术与管理、信息工程、应用电子技术、信息显示与光电技术、管理信息系统、； <BR>&nbsp;&nbsp;&nbsp;&nbsp;计算机及应用、计算机技术及应用、计算机科学教育、计算机现代教育、计算机科学与技术、计算机科学技术、计算机器件及设备、空间信息与数字技术、信息对抗技术、信息管理与信息系统、计算机信息管理与信息系统、信息资源管理、信息管理与技术、电子信息、电子商务、电子应用、计算机应用、计算机科学、计算机科学与应用、计算机科学技术与应用、计算机应用与维护、计算机技术与教育、计算机数控、计算机信息管理、计算机网络、信息与计算科学、电子工程、计算机应用技术、计算机电子工程、经济信息管理与计算机应用、自动化控制、光信息科学与技术、信息学、计算机软件开发与理论、广播电视工程、数学媒体艺（技）术、计算机通信、智能科学与技术、网络系统管理、计算机辅助设计与制造、计算机图形图像技术、计算机多媒体运用技术、多媒体计算机、控制理论与控制工程等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;电子技术与科学、科学系统与信息管理、信息技术应用与管理、信息管理、计算机与信息科学、电子科学与技术、自动控制与控制工程、电子科学与技术电路与系统、计算机信息系统、信息与计算机科学。<STRONG> </STRONG><BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十一、“财会”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;会计学、财务管理、理财学、企业理财、审计学、会计电算化、财务会计教育、财务会计与教育、国际会计、会计与统计核算、工业（企业）会计、财务信息管理、会计、财务会计、管理会计、投资与理财、涉外财务等； <BR>&nbsp;&nbsp;&nbsp;&nbsp;取得注册会计师资格的人员可报考。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;十二、“财政税务”招考专业（职位）： <BR>&nbsp;&nbsp;&nbsp;&nbsp;财政学、金融学、税务、财政税务、审计学、投资学、经济学、会计学、会计、财务会计、财会、国际会计、财务管理、理财学、会计电算化、财务与精算学、财务会计教育、财务会计与教育、国际会计、会计与统计核算、工业（企业）会计、财务信息管理、国际财务与金融、国际金融、金融财务管理、投资理财、财会教育、会计与金融、金融、金融工程、金融管理与实务、企业财务管理、税务级计算机管理、会计学（ACCA）、财政税收等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十三、“城建”招考专业（职位）：</STRONG> <BR>&nbsp;&nbsp;&nbsp;&nbsp;村镇建设、建筑工程、土木工程、规划、建筑学、路桥建筑、工民建、建筑设计、资源环境与城乡规划管理、城市规划、交通土建工程、交通土建工程、桥梁工程、交通工程、桥梁工程、岩木工程、结构工程、工程力学、城镇建设、房屋建筑工程等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;建设基础工程、道路与桥梁施工、城市建设工程管理、城市管理、市政工程设施与管理、市政工程技术、民用建筑与装饰、工程监理、工程管理、给水排水工程、城市规划与设计、城镇基础设施、城镇建设规划、城镇建设规划与设计、城镇建设设施与管理、城镇建设与管理、道路与桥梁、房屋工程建设、工程建筑管理、公路与城市道路工程、建筑、建筑工程管理、建筑工程技术、建筑环境与设备工程、建筑设计技术、建筑施工管理、建筑装饰工程技术、路桥、市政工程施工与管理、土木、土木工程施工技术与管理、土木工程施工与管理、景观建筑设计、工业与民用建筑、景观建筑等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十四、“市政工程”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;市政工程、城市建设工程管理、市政工程设施与管理、市政工程技术、给水排水工程、城市规划与设计、城镇基础设施、城镇建设规划、城镇建设规划与设计、城镇建设设施与管理、城镇建设与管理、工程建筑管理、公路与城市道路工程、建设基础工程、建筑、建筑工程管理、建筑工程技术、建筑工程与管理、建筑环境与设备工程、建筑设计技术、建筑施工管理、建筑装饰工程技术、交通土建工程、工程力学、路桥、市政工程施工与管理、土木工程施工技术与管理、土木工程施工与管理、景观建筑设计、工业与民用建筑、资源环境与城乡规划管理、城市规划等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十五、“化学分析（化工）”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;化学工程、化学工程与工艺、应用化学、高分子材料与工程、化学分析、应用化工技术、精细化工、化学、材料化学、有机化学、化学（师范）、化学工艺、分析化学、化学工程与工艺、无机化学、药学检验、毒物分析等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十六、“经济管理”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;经济学类：经济学、国际经济与贸易、电子商务和国际贸易、国际商务和管理、国民经济管理、贸易经济、网络经济学、环境资源与发展经济学、经济研究； <BR>&nbsp;&nbsp;&nbsp;&nbsp;工业经济、农业经济、劳动经济、运输经济、商业经济、国际商务、金融、企业管理、市场营销、市场开发与营销、投资经济管理、技术经济及管理、农业经济管理、农村经济管理、商业经济管理、投资经济、物流管理、建筑经济与管理、房地产经营与管理、商务管理、金融管理、金融与证券、投资金融管理、经济消息管理、农林经济管理、工商管理、工商行政管理、工商企业经营管理、企业经营管理、工商企业管理等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;金融学、经济贸易、区域经济学、国际金融、国际经济贸易、国际贸易、国际贸易与经济、国民经济学、经济与行政管理、产业经济学、工商管理硕士（金融方向）、国际经济学、国际贸易学、国际商务学、国际商务管理、国际商业、国际商务金融与经济、金融和管理、金融和经济学、经济管理学、经济系统分析与管理、劳动与社会保障（风险管理方向） <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十七、“经济学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;经济学、货币银行学、金融学、金融学（信用管理方向）、应用经济学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十八、“药学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;药学、中药学、药物制剂、中草药栽培与鉴定、藏药学、中药资源与开发、应用药学、海洋药学、药事管理、制药工程、化工与制药、药学化学、药剂学、生物制药、药理学、微生物与生化药学、生药学、药物分析、生科药物、化学制药、临床药学、临床药理学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;十九、“英语”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;英语、商务英语、英语教育、英语语言文学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十、“心理学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;应用心理学、心理学类等。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二</STRONG><STRONG>十一、“临床医学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;临床医学、中医学、中西医结合医学、临床、麻醉学、精神病学与精神卫生、儿科学、神经病学、影像医学、临床检验诊断学、外科学、妇产科学、眼科学、耳鼻咽喉科学、肿瘤学、康复医学与理疗学、运动医学、急诊医学等。 <BR>医学临床专业、中西医临床医学专业、中西医结合临床方向、医学影像学、临床医疗、康复治疗学、眼视光学、临床医学检验、临床医学眼科学、临床麻醉、医学检验、眼视光、中医骨伤； <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十二、“</STRONG><STRONG>护理</STRONG><STRONG>”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;护理学类、预防医学类、高等护理学、医学护理学、高级护理、护士、临床护理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十三、“预防医学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;预防医学类等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十四、“DNA检验”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;DNA检验类、分子生物学、遗传学、生物技术等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十五、“工商管理”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;工商管理、工商行政管理、工商企业管理、企业管理、市场营销、国际企业管理、电子商务、国际商务、物流管理、劳动经济、商品学、人力资源管理、财务管理、审计学、会计学、旅游管理、宾馆管理、特许经营管理、理财学、物业管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十六、“环保”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;环境工程、环境规划、环境管理、环境生态、环境科学、环保工程、生命环境科学、资源环境科学、能源与环境系统工程、有机化学、化学（师范）、化学工艺、材料化学、分析化学、化学工程、化学工程与工艺、应用化学、高分子材料与工程、化学分析、应用化工技术、农业资源与环境、材料科学与工程、资源环境与城乡规划管理、精细化工、化学、环境治理工程、生态学、生态保护、生物环境、化学（教育）、复合材料科学与工程等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十七、“土木工程”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;工民建、建筑学、土木工程、给水排水工程、建筑工程、结构工程、桥梁与结构工程、土木建筑工程、城镇建设、道路与桥梁工程、工程力学等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;二<STRONG>十八、“食品质量与安全”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;食品质量与安全、食品科学与工程、食品卫生与检测、食品工艺与检测、食品加工与管理、食品生物工程等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;二十九</STRONG><STRONG>、“土地管理”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;土地资源管理、土地规划利用、土地资源管理与利用、土地管理、土地评估与管理、土地管理与评估等。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;三<STRONG>十、“矿产资源管理（地质矿产资源管理）”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;采矿工程、矿物加工工程、选矿工程、勘查技术与工程、水文地质与工程地质、资源勘查工程、应用地球化学、地质工程、应用地球物理、矿物资源工程、勘察工程、地质矿产勘查、地质学、地质工程、地质矿产管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三</STRONG><STRONG>十一、“工民建”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;工民建、建筑学、建筑工程、土木建筑工程、工程力学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十二、“体育”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;体育教育、运动训练、体育管理、社会体育、体育田径、体育教育运动训练学、体育教育训练学、传统体育、体育人文社会学、运动人体科学、体育教育学、民族传统体育等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十三、“城市规划”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;城市规划、建筑学、资源环境与城乡规划管理、城市规划与设计、城乡规划与设计等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十四、</STRONG><STRONG>“警用地理信息系统”专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;警用地理信息系统等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十五、“法医”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;法医学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十六、“犯罪学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;犯罪学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十七、“通信工程（无线通信）”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;通信工程、通信与可视技术、数字通信设计、计算机通信、无线电通信、无线通信通讯、通信、信息管理、多路通信、通信网络与设备、通信系统运行管理、信息对抗技术、电子信息工程、信息管理与信息系统等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十八、“师范类”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;师范类专业、教育管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;三十九、“动画”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;动画类等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十、“旅游管理”招考专业（职位）:</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;旅游管理、旅游管理教育、旅游与资源管理等、酒店管理、涉外旅游、旅行社经营与管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十一、“工学”招考专业（职位）:</STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;工学类各专业等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十二、“特种设备安全监察”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;材料类：冶金、材料工程、焊接技术与工程、复合材料、腐蚀与防护、铸造、再生资源科学与技术、塑性成形工艺及设备、稀土工程、焊接工艺及设备； <BR>&nbsp;&nbsp;&nbsp;&nbsp;机械类：机械设计及制造、材料成型及控制工程、工业设计、机车车辆工程、流体传动及控制、真空技术及设备、车辆工程、机械电子工程、设备工程与管理、制造自动化与测控技术、材料成型及控制工程、微机电系统工程、制造工程； <BR>仪器仪表类：测控技术与仪器、精密仪器、光学技术与光电仪器、电子信息技术及仪器、检测技术及仪器仪表、电子仪器及测量技术、热工计量测试、力学计量测试、光学计量测试、无线电计量测试、检测技术与精密仪器、测控技术与仪器； <BR>&nbsp;&nbsp;&nbsp;&nbsp;电气信息类：电力系统及其自动化、高电压与绝缘技术、自动化、电气技术、电机电器及其控制、通信工程、光源与照明、流体传动及控制、信息工程、软件工程、影视艺术技术、网络工程、电子技术、电磁场与微波技术、广播电视工程、电力工程与管理、摄影测量与遥感、微电子制造工程、公共安全图像技术、数字媒体艺术、计算机通信、计算机科学与技术、信息物理工程、计算机软件、计算机器件及设备、微电子技术、物理电子技术； <BR>&nbsp;&nbsp;&nbsp;&nbsp;化工类：化学工程与工艺、化学工程、化工工艺、高分子化工、化工与制药、精细化工、生物化工、资源科学与工程、工业分析、电化学工程、工业催化等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十三、“水利水电工程”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;水利水电工程、水文与水资源工程、水利水电建筑工程、水文与水资源利用等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十四、“水利”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;农业水利工程、给水排水工程、农田水利、水利学、水资源与海洋工程、水文与水资源、水利水电工程等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十五、“法官预备人选”、“检察官预备人选”招考职位： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;取得A类、B类法律职业资格证书。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十六、“</STRONG><STRONG>档案学</STRONG><STRONG>”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;档案学、图书馆学、科技档案、信息资源管理、档案等 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十七、“农业”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;农学、热带作物、园艺、药用植物、植物保护、土壤与农业化学、茶学、烟草、植物科学与技术、植物科学与技术、果树、种子科学与工程、蔬菜、应用生物科学、观赏园艺、设施农业科学与工程、种子、茶艺、农业推广、土壤学、农业机械化及其自动化、畜禽饲养与疾病防治、茶叶加工和营销、生物科学、农艺木艺专业、现代园艺园林、园林与绿化工程、园艺技术、园林规划设计、林业、树木专业、植被养殖专业、植物病理学、园林工程技术、园林技术、园林、林业（林学）、林业技术、设施农业、动物科学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十八、“园林管理（市政园林绿化”）招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;观赏园艺、风景园林、园林管理、市政园林绿化、园林、园艺、园林设计、环境艺术设计、园林规划与设计、园林建筑、园林艺术设计、艺术设计（园林艺术设计）、城市园林规划、园林植物与观赏园术等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;四十九、“审计”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;审计学、财政学、财会、会计学、财务管理、会计、国际会计学、会计审计学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十、“公路桥梁”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;交通土建工程、交通土建工程（桥梁工程）、交通工程、路桥建筑、道路与铁道工程、道路桥梁与渡河工程、桥梁与隧道工程、公路桥梁学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十一、“海洋与渔业管理”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;海洋科学、海洋学、海洋管理、军事海洋学、海洋生物资源与环境、海洋技术、海洋生物学。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十二、“机电一体化”专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;机电一体化、电气工程及其自动化、电机电器及其控制、电子信息工程等 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十三、</STRONG><STRONG>“中药学” 招考专业（职位）：</STRONG> <BR>&nbsp;&nbsp;&nbsp;&nbsp;药学、中药学、物制剂、中草药栽培与鉴定、中药资源与开发等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十四、“文件检验”专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;文件检验、印刷工程等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十五、</STRONG><STRONG>“林学类（</STRONG><STRONG>林业</STRONG><STRONG>）”</STRONG><STRONG>专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;林学、森检、森林资源保护与游憩、野生动物与自然保护区管理、农业资源与环境、植物保护、木材科学与工程、森林工程、林产化工等。<STRONG> </STRONG><BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十六、“统计”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;统计学、数学、数学与应用数学、统计数学、统计与概率、基础数学与应用数学、经济统计、应用数学、应用数学统计、应用统计、金融数学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十七、“社会工作（社会工作与管理）”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;社会学、社会工作、社会工作与管理、社会管理等； <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十八、“汽车运用技术”招考专业（职位）：</STRONG><STRONG> </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;汽车维修工程教育、机车车辆工程、车辆工程、汽车服务工程、交通运输、交通设备信息工程等。<STRONG> </STRONG><BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;五十九、</STRONG><STRONG>“刑侦” 招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;刑事科学技术、刑侦、侦查学、刑事侦查、刑事技术、经济犯罪侦查等 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十、“妇产科学”招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;妇产科学、中西医结合妇产科学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>一</STRONG><STRONG>、“公安情报” 招考专业（职位）：</STRONG> <BR>&nbsp;&nbsp;&nbsp;&nbsp;公安情报等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>二</STRONG><STRONG>、</STRONG><STRONG>“公共卫生管理”</STRONG><STRONG> 招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;公共卫生管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>三、</STRONG><STRONG>“</STRONG><STRONG>监所管理”</STRONG><STRONG> 招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;监所管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>四、“刑事诉讼法学” 招考专业（职位）：</STRONG> <BR>&nbsp;&nbsp;&nbsp;&nbsp;刑事诉讼法学等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>五、“农学” 招考专业（职位）：</STRONG> <BR>&nbsp;&nbsp;&nbsp;&nbsp;植物生产类：农学、园艺、植物保护、茶学、草业科学等； <BR>&nbsp;&nbsp;&nbsp;&nbsp;森林资源类：林学、森林资源保护与游憩、野生动物与自然保护区管理等； <BR>&nbsp;&nbsp;&nbsp;&nbsp;森林生产类：园林、水土保持与荒漠化防治、农业资源与环境等； <BR>&nbsp;&nbsp;&nbsp;&nbsp;动物生产类：动物科学、蚕学、（动物医学）等； <BR>&nbsp;&nbsp;&nbsp;&nbsp;水产类：水产养殖学、海洋渔业科学与技术等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>六、“企业管理” 招考专业（职位）： </STRONG><BR>&nbsp;&nbsp;&nbsp;&nbsp;工商企业管理、国际企业管理、企业管理等。 <BR><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;六十</STRONG><STRONG>七、</STRONG><STRONG>“专业不限”招考专业（职位）：</STRONG> <BR>&nbsp;&nbsp;&nbsp;&nbsp;不限专业。 <BR>&nbsp;&nbsp;&nbsp;&nbsp;本办法未尽事宜，由市委组织部、市人事局会同用人单位酌情研究掌握。
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
<P align=right>中共温州市委组织部 <BR>温 州 市 人 事 局 <BR>2010年12月29日</P>', N'hsg', N'upload/1317085910921.jpg', 52, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (47, N'全国公务员平时考核工作经验交流会在天津召开', N'社团公告', N'<P>&nbsp;&nbsp;&nbsp; 国家公务员局于4月16日至17日在天津召开了全国行政机关公务员平时考核工作经验交流会。人力社保部副部长、国家公务员局党组书记、副局长杨士秋到会并作了重要讲话，杨士秋副部长在讲话中强调，当前和今后一个时期，要以建立指标科学、程序严密、配套完善、简便易行的考核评价体系为重点，全面推进公务员平时考核工作。国家公务员局副局长吴云华作会议总结讲话，要求从“责任、认真、坚持、创新”四个方面切实抓好公务员平时考核工作。</P>
<P>　　我省慈溪市人力社保局作为县级层面代表之一，在会上作了题为《以“干事对账”为抓手、切实加强公务员平时考核》的经验交流发言。会议还对公务员考核工作理论征文评审结果作了通报，并向获奖单位颁奖，我省等6家省级公务员局荣获优秀组织奖，我省提交的《浅析公务员考核工作存在的问题及对策》论文获得三等奖。</P>
<P>&nbsp;&nbsp;&nbsp; 根据国家公务员局的部署，中央公务员主管部门将出台《公务员平时考核办法》，并计划于明年在全国范围内全面推行公务员平时考核工作。<BR></P>', N'hsg', N'upload/1317086069593.jpg', 3, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (48, N'陈德荣：以党建工作转型推动经济社会转型', N'社团公告', N'&nbsp;&nbsp;&nbsp;&nbsp; 全市党建工作会议2月14日召开。副省长、市委书记陈德荣在会上强调，要坚持以党的先进性和执政能力建设为主线，牢牢把握立党为公、执政为民的根本要求，全面推进党的建设，以党建工作转型引领和推动经济社会转型，以全心全意为人民服务成果的最大化来赢得老百姓的满意、答应和高兴，为加快转型发展、再创温州辉煌作出新的更大贡献，以优异成绩向建党90周年献礼。 
<P>　　市委副书记朱贤良主持会议。市委常委、宣传部长曹国旗，市委常委、组织部长王昌荣，市委常委、统战部长陈作荣分别就今年宣传、组织和统战工作作具体部署。市委常委、纪委书记徐宇宁，市委常委、鹿城区委书记余梅生，市委常委、秘书长葛益平参加会议。</P>
<P>　　去年以来，全市各级党组织和党务部门围绕中心、服务大局，开拓创新、扎实工作，党建工作取得了明显成效，呈现出不少亮点，为“十一五”发展画上圆满句号、为“十二五”开局奠定了坚实基础。当天的会议是市委新春召开的第一个全市性大会，对宣传、组织、统战年度工作进行统一部署，动员各级党组织和党务部门以改革创新精神全面推进党的建设，为加快转型发展提供坚强保证。</P>
<P>　　陈德荣说，现代经济是市场经济，现代社会是公民社会，现代政府是政党政府。领导我们事业的核心力量是中国共产党。推进温州转型发展、维护人民群众的根本利益，关键在各级党组织。党的建设历来同党的历史任务紧密相联。改革开放以来，温州之所以能够创造举世瞩目的温州模式，党领导政府转型起到了关键作用。现在温州正处于加快转型发展的关键时期，在经济、社会和政府三大转型中，政府转型是基础性的，而推进政府转型，核心是党组织、是党的领导。如果不加强党的建设、不推进党组织自身转型，就不可能推动政府转型，就不可能实现整个转型发展。各级党组织必须牢固树立围绕中心抓党建、抓好党建促发展的理念，以党建工作转型引领和推动经济社会转型，更好地把党建资源转化为发展资源，把政治优势转化为发展优势。</P>
<P>　　陈德荣指出，全心全意为人民服务是党的宗旨，群众观点、群众路线是党的基本观点、基本路线。俗话说，头顶三尺有神明。党员的神明就是广大人民群众。对待老百姓，每个党员干部都要有所敬畏、不能无所畏惧；对待干事创业，每个党员干部都要无所畏惧，敢于攻坚、善于破难。要牢牢秉持全心全意为人民服务的宗旨观念，把人民群众“满意不满意、高兴不高兴、答应不答应”作为一切工作的出发点和落脚点，以执政为民的扎实成果巩固党的执政地位、提升党的执政能力、扩大党的执政基础。</P>
<P>　　陈德荣指出，今年是建党90周年，是“十二五”开局之年，做好党建工作具有特殊而重大的意义。我们必须坚持以党的先进性和执政能力建设为主线，紧紧围绕转型发展做好党建工作，着力提高党的建设科学化水平。要立足解放思想、提神鼓劲，强化理论武装，加强干部培训，提升市民素质，营造发展氛围，繁荣发展先进文化，塑造城市文明新形象，为转型发展提供强大的精神动力。要立足提升能力、增强活力，坚持德才兼备、以德为先、注重实绩、群众公认，全面落实考绩法和绩擢法，推行考绩择才、赛场拔才、挂牌招才，大力选拔善于破难、敢于攻坚的智勇双全的干部，配强班子，建好队伍，强化基层，聚集人才，为转型发展奠定坚实的组织基础。要立足提速提效、干净干事，深化体制改革，建立完善反腐倡廉各项制度，强化机关文化和机关制度建设，提高办事效率，加大监督力度，深化廉政教育，为转型发展营造良好环境。要立足凝聚人心，汇聚力量，合力推动经济统战工作，扩大民主政治参与，促进社会和谐稳定，为转型发展调动方方面面的积极因素。</P>
<P>　　陈德荣强调，加强领导是党建工作保持正确方向、取得扎实成效的根本保证。各级党组织和党务部门要坚持党要管党、从严治党的方针，认真履行党建工作责任，强化领导，开拓创新，完善机制，提升能力，确保党建工作任务落到实处，不断开创党建工作新局面。&nbsp;（记者&nbsp;王丹容） </P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317086056687.jpg', 1, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (49, N'我市召开加强新时期侨联工作情况汇报会', N'社团公告', N'&nbsp; 　7月2日，我市召开加强新时期侨联工作情况汇报会，向来温检查的省侨联工作督查组汇报工作。督查组充分肯定了我市新时期侨联工作情况，并希望今后我市侨联工作要继续走在前列、更上层楼。
<P>　　我市是全国重点侨乡，共有华侨华人、港澳同胞50万人，分布在世界112个国家和地区，归侨侨眷42万人。当前，温州正着力推进转型升级，全市上下积极创建载体、牵线搭桥、引资引智，充分调动广大归侨侨眷和海外侨胞的积极性、主动性，助力“三生融合·幸福温州”建设。同时，围绕“聚侨心、促和谐”这一主题，积极发挥真心实意为侨办实事的精神，找准归侨侨眷和海外侨胞的所思、所需、所急，健全为侨服务机制，依法维护侨胞利益，积极打造“依侨聚力”，塑造“亲侨凝心”形象。</P>
<P>　　督查组要求，今后我市要进一步加强侨联干部队伍建设，配齐配强各级侨联干部，为侨联工作提供坚实的组织保障。要进一步推广温州党建带侨建的先进经验，推动转型时期各领域统战工作。要进一步发挥海外侨资源优势，为侨胞服务温州经济社会发展提供更好的平台。要进一步加强宣传，营造全社会爱侨、为侨、护侨的氛围。</P>
<P>　　市委副书记王昌荣汇报工作，市政协副主席余梅生主持会议。</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317085936937.jpg', 50, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (50, N'朱贤良在洞头调研政法综治工作', N'社团公告', N'&nbsp;&nbsp; 市委副书记、政法委书记朱贤良3月15日在洞头调研政法综治工作时指出，当前我市面临难得的发展机遇，越是在这种大投入、大建设、大发展时期，各地越要重视抓好政法、综治、维稳工作，不松懈、不大意，积极创新，努力为经济社会营造稳定和谐的发展环境。 
<P>　　朱贤良一行来到洞头县北岙镇，先后实地察看了北岙镇便民接访服务中心、城中社区服务中心，看望海岛“海霞妈妈”平安志愿者，考察基层综治工作的开展情况，并听取情况汇报。据介绍，洞头县已经连续5年评上省“平安县”，本月底的全省表彰大会上如果顺利拿牌，就将连续6年获此称号，实现“双夺鼎”。</P>
<P>　　听取汇报后，朱贤良说，在平安建设工作上，洞头县历年来都比较突出，要再接再厉、树立品牌，按照“贵在落实、贵在坚持”的要求，牢牢树立“七连创”目标，力争2011年高分夺牌。在社会稳定工作上，要结合当前大开发、大建设、大半岛、大旅游等情况，突出重点、克难攻坚，特别要继续抓好信访维稳工作，高度重视乡镇行政区划调整中带来的挑战，切实增强政权意识，为工作的顺利进行创造良好环境。在社会管理创新工作上，要积极探索，结合好当地特色，在创新预防化解社会矛盾工作、社会人员服务管理、社会治安防控体系、基层基础建设、舆情管理等方面下功夫，完善各项工作机制，加强和创新社会管理，努力为全市乃至全省创造经验。&nbsp;（记者 陈里雅）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317085922265.jpg', 78, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (51, N'2010温州市消防支队招聘文职人员入围名单公布', N'社团公告', N'<P>根据《2010温州市消防支队招聘文职人员方案》要求，现将考试入围人员名单公布如下：</P>
<P>
<TABLE id=table1 cellSpacing=0 cellPadding=0 width=553 border=1>
<TBODY>
<TR>
<TD noWrap width=132>
<P align=center>准考证号</P></TD>
<TD noWrap width=72>
<P align=center><B>姓 名</B></P></TD>
<TD noWrap width=231>
<P align=center><B>身份证号</B></P></TD>
<TD noWrap width=118>
<P align=center><B>排名</B></P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030044</P></TD>
<TD noWrap width=72>
<P align=center>陈金红</P></TD>
<TD width=231>
<P align=center>330328198212155828</P></TD>
<TD noWrap width=118>
<P align=center>1</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030257</P></TD>
<TD noWrap width=72>
<P align=center>林莉</P></TD>
<TD noWrap width=231>
<P align=center>33030419851122276x</P></TD>
<TD noWrap width=118>
<P align=center>2</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030019</P></TD>
<TD noWrap width=72>
<P align=center>陈蓓蕾</P></TD>
<TD noWrap width=231>
<P align=center>330326198803031840</P></TD>
<TD noWrap width=118>
<P align=center>3</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030480</P></TD>
<TD noWrap width=72>
<P align=center>杨守义</P></TD>
<TD noWrap width=231>
<P align=center>330326198508103610</P></TD>
<TD noWrap width=118>
<P align=center>4</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030348</P></TD>
<TD noWrap width=72>
<P align=center>苏欢乐</P></TD>
<TD width=231>
<P align=center>330381198609285323</P></TD>
<TD noWrap width=118>
<P align=center>5</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030004</P></TD>
<TD noWrap width=72>
<P align=center>鲍淑贤</P></TD>
<TD noWrap width=231>
<P align=center>330324198802046263</P></TD>
<TD noWrap width=118>
<P align=center>6</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030444</P></TD>
<TD noWrap width=72>
<P align=center>谢海丹</P></TD>
<TD noWrap width=231>
<P align=center>33032419850106330x</P></TD>
<TD noWrap width=118>
<P align=center>7</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030367</P></TD>
<TD noWrap width=72>
<P align=center>屠洁莹</P></TD>
<TD noWrap width=231>
<P align=center>330621198710225464</P></TD>
<TD noWrap width=118>
<P align=center>8</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030141</P></TD>
<TD noWrap width=72>
<P align=center>胡海斌</P></TD>
<TD width=231>
<P align=center>330381198709040112</P></TD>
<TD noWrap width=118>
<P align=center>9</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030270</P></TD>
<TD noWrap width=72>
<P align=center>林雅</P></TD>
<TD width=231>
<P align=center>330324198702270428</P></TD>
<TD noWrap width=118>
<P align=center>10</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030127</P></TD>
<TD noWrap width=72>
<P align=center>葛颖瑾</P></TD>
<TD noWrap width=231>
<P align=center>330602198508211043</P></TD>
<TD noWrap width=118>
<P align=center>11</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030275</P></TD>
<TD noWrap width=72>
<P align=center>林最刚</P></TD>
<TD noWrap width=231>
<P align=center>330381198705224133</P></TD>
<TD noWrap width=118>
<P align=center>12</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030271</P></TD>
<TD noWrap width=72>
<P align=center>林业进</P></TD>
<TD noWrap width=231>
<P align=center>352203198805210557</P></TD>
<TD noWrap width=118>
<P align=center>13</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030529</P></TD>
<TD noWrap width=72>
<P align=center>张建浩</P></TD>
<TD noWrap width=231>
<P align=center>330325198204056513</P></TD>
<TD noWrap width=118>
<P align=center>14</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030326</P></TD>
<TD noWrap width=72>
<P align=center>邱似梦</P></TD>
<TD noWrap width=231>
<P align=center>330302198504187924</P></TD>
<TD noWrap width=118>
<P align=center>15</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030168</P></TD>
<TD noWrap width=72>
<P align=center>黄香军</P></TD>
<TD noWrap width=231>
<P align=center>431126198807231229</P></TD>
<TD noWrap width=118>
<P align=center>16</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030181</P></TD>
<TD noWrap width=72>
<P align=center>江舟</P></TD>
<TD noWrap width=231>
<P align=center>330381198303090128</P></TD>
<TD noWrap width=118>
<P align=center>17</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030411</P></TD>
<TD noWrap width=72>
<P align=center>翁晓成</P></TD>
<TD noWrap width=231>
<P align=center>330327198511057244</P></TD>
<TD noWrap width=118>
<P align=center>18</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030537</P></TD>
<TD noWrap width=72>
<P align=center>张雯雯</P></TD>
<TD noWrap width=231>
<P align=center>330304198609280044</P></TD>
<TD noWrap width=118>
<P align=center>19</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030136</P></TD>
<TD noWrap width=72>
<P align=center>何蓓蕾</P></TD>
<TD noWrap width=231>
<P align=center>330302198309200263</P></TD>
<TD noWrap width=118>
<P align=center>20</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030417</P></TD>
<TD noWrap width=72>
<P align=center>吴建凤</P></TD>
<TD noWrap width=231>
<P align=center>330304198406198745</P></TD>
<TD noWrap width=118>
<P align=center>21</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030277</P></TD>
<TD noWrap width=72>
<P align=center>刘芬</P></TD>
<TD width=231>
<P align=center>33082119890617142X</P></TD>
<TD noWrap width=118>
<P align=center>22</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030197</P></TD>
<TD noWrap width=72>
<P align=center>金莎莎</P></TD>
<TD width=231>
<P align=center>330324198907278423</P></TD>
<TD noWrap width=118>
<P align=center>23</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030324</P></TD>
<TD noWrap width=72>
<P align=center>钱奕燃</P></TD>
<TD noWrap width=231>
<P align=center>330302198906292022</P></TD>
<TD noWrap width=118>
<P align=center>24</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030506</P></TD>
<TD noWrap width=72>
<P align=center>应黎黎</P></TD>
<TD noWrap width=231>
<P align=center>330302198812160029</P></TD>
<TD noWrap width=118>
<P align=center>25</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030466</P></TD>
<TD noWrap width=72>
<P align=center>薛小成</P></TD>
<TD noWrap width=231>
<P align=center>330327198703271341</P></TD>
<TD noWrap width=118>
<P align=center>26</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030475</P></TD>
<TD noWrap width=72>
<P align=center>杨璐</P></TD>
<TD noWrap width=231>
<P align=center>610330198906010024</P></TD>
<TD noWrap width=118>
<P align=center>27</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030371</P></TD>
<TD noWrap width=72>
<P align=center>王蓓蓓</P></TD>
<TD noWrap width=231>
<P align=center>330304198909080028</P></TD>
<TD noWrap width=118>
<P align=center>28</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030144</P></TD>
<TD noWrap width=72>
<P align=center>胡利淮</P></TD>
<TD noWrap width=231>
<P align=center>330324198402037114</P></TD>
<TD noWrap width=118>
<P align=center>29</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030337</P></TD>
<TD noWrap width=72>
<P align=center>沈贤</P></TD>
<TD width=231>
<P align=center>330304198802102725</P></TD>
<TD noWrap width=118>
<P align=center>30</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030544</P></TD>
<TD noWrap width=72>
<P align=center>张颖</P></TD>
<TD noWrap width=231>
<P align=center>330302198804031227</P></TD>
<TD noWrap width=118>
<P align=center>31</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030305</P></TD>
<TD noWrap width=72>
<P align=center>潘陈良</P></TD>
<TD noWrap width=231>
<P align=center>330304198709171558</P></TD>
<TD noWrap width=118>
<P align=center>32</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030424</P></TD>
<TD noWrap width=72>
<P align=center>吴潇跃</P></TD>
<TD width=231>
<P align=center>330304198807289621</P></TD>
<TD noWrap width=118>
<P align=center>33</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030405</P></TD>
<TD noWrap width=72>
<P align=center>王重</P></TD>
<TD noWrap width=231>
<P align=center>330381198606017534</P></TD>
<TD noWrap width=118>
<P align=center>34</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030290</P></TD>
<TD noWrap width=72>
<P align=center>陆静</P></TD>
<TD noWrap width=231>
<P align=center>330302198702034021</P></TD>
<TD noWrap width=118>
<P align=center>35</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030456</P></TD>
<TD noWrap width=72>
<P align=center>徐耀凯</P></TD>
<TD width=231>
<P align=center>33038219870111171X</P></TD>
<TD noWrap width=118>
<P align=center>36</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030416</P></TD>
<TD noWrap width=72>
<P align=center>吴家明</P></TD>
<TD noWrap width=231>
<P align=center>330328198412102210</P></TD>
<TD noWrap width=118>
<P align=center>37</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030252</P></TD>
<TD noWrap width=72>
<P align=center>林建安</P></TD>
<TD noWrap width=231>
<P align=center>330304198804108717</P></TD>
<TD noWrap width=118>
<P align=center>38</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030251</P></TD>
<TD noWrap width=72>
<P align=center>林海娜</P></TD>
<TD noWrap width=231>
<P align=center>330381198712286228</P></TD>
<TD noWrap width=118>
<P align=center>39</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030057</P></TD>
<TD noWrap width=72>
<P align=center>陈苗苗</P></TD>
<TD width=231>
<P align=center>330327198809187287</P></TD>
<TD noWrap width=118>
<P align=center>40</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030334</P></TD>
<TD noWrap width=72>
<P align=center>邵芳芳</P></TD>
<TD noWrap width=231>
<P align=center>330324198709267264</P></TD>
<TD noWrap width=118>
<P align=center>41</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030570</P></TD>
<TD noWrap width=72>
<P align=center>周绵绵</P></TD>
<TD noWrap width=231>
<P align=center>330327198801281746</P></TD>
<TD noWrap width=118>
<P align=center>42</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030199</P></TD>
<TD noWrap width=72>
<P align=center>金伟斌</P></TD>
<TD noWrap width=231>
<P align=center>330324198708084319</P></TD>
<TD noWrap width=118>
<P align=center>43</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030331</P></TD>
<TD noWrap width=72>
<P align=center>任重远</P></TD>
<TD noWrap width=231>
<P align=center>330302198512152019</P></TD>
<TD noWrap width=118>
<P align=center>44</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030105</P></TD>
<TD noWrap width=72>
<P align=center>蔡玉娜</P></TD>
<TD noWrap width=231>
<P align=center>330381198703023346</P></TD>
<TD noWrap width=118>
<P align=center>45</P></TD></TR>
<TR>
<TD noWrap width=132>
<P align=center>20101030101</P></TD>
<TD noWrap width=72>
<P align=center>戴玲玲</P></TD>
<TD noWrap width=231>
<P align=center>33012219890106</P></TD>
<TD noWrap width=118>
<P align=center>46</P></TD></TR></TBODY></TABLE></P>
<P align=left>对公示如有异议，请向消防支队反映。</P>
<P align=left>联系电话：0577-86509983</P>
<P>入选人员请保持电话畅通，体检时间另行通知。</P>', N'hsg', NULL, 67, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (52, N'关于公开选拔钱库镇城管环卫园林中队队长的公告', N'社团公告', N'<DIV align=center><B>关于公开选拔钱库镇城管环卫园林中队队长</B><B>的公告</B></DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;&nbsp;&nbsp; &nbsp;一、选拔岗位：钱库镇城管环卫园林中队队长1名（中层正职）。</DIV>
<DIV>&nbsp;&nbsp; &nbsp;&nbsp;二、资格条件：</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 1、全镇在编在岗担任中层副职以上的公务员（含参照管理）、事业干部、企业职工、临时用工人员；曾任或现任村支部书记、村委会主任。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2、男性，年龄45周岁以下（1966年9月1日以后出生）；近3年年度考核均为称职（合格）以上等次。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 3、必须坚定地贯彻执行党的基本路线和国家的各项方针政策，有较强的事业心和责任心，具有胜任中层干部的理论政策水平和组织协调能力；</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 4、有下列情况之一者不能参加选拔：受过刑事处罚的；受党纪处分未超过《中国共产党纪律处分条例》规定的不得提拔期限、受行政处分尚未解除或者受诫勉处理尚未解除的；涉嫌违纪违法正在接受有关部门审查尚未作出结论的；其他不宜参加的。</DIV>
<DIV>&nbsp;&nbsp; &nbsp;&nbsp;三、选拔主要程序</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 1、<B>报名审查</B>。报名采取组织推荐和个人自荐相结合的方式，并对报名者的资格进行审查。审查合格的，准予参加选拔。如参加人数不足目标岗位1：3的比例，则取消此次选拔。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2、<B>面试</B>。参加选拔的人员需要根据竞争职位的职责要求制定工作计划书，就履职目标作出书面承诺，并进行答辩。答辩注重了解个人能力素质以及所作出工作计划书的科学性和可操作性。答辩评委由有关领导等组成，对工作计划书和答辩情况实行量化打分。分值为80分，其中工作计划书为40分，答辩为40分。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 3、<B>组织考察</B>。按测试分数成绩从高到低按目标职位1：2的比例确定考察对象，考察分值为20分。</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;4、<B>讨论决定</B>。按测试分数和考察分数合计结果最高者提出拟任人选，提交镇党委会票决。</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;5、<B>聘任试岗</B>。拟任人选经公示后未发现影响任用问题的，按有关规定程序办理聘任手续，聘期为一年。</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;6、<B>目标考绩</B>。试岗对象聘任期满后，组织人员围绕目标岗位要求及其承诺进行考绩，对是否胜任聘任职位作出评价。</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;7、<B>正式任职</B>。根据试岗期间表现，能完成工作目标任务并得到群众公认的，提交镇党委会研究后，办理正式任职手续，不再实行试用期。不胜任或不适合所聘任岗位的，解除聘任职务，按聘任前职务层次安排工作。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 四、报名方式：</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 1、报名时间：2011年8月15日至2011年8月17日</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2、报名地点：钱库镇组织办307室</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 3、联系电话：68520055&nbsp;&nbsp;&nbsp; 13575400058</DIV>
<DIV>&nbsp;</DIV>
<DIV align=right>中共钱库镇委</DIV>
<DIV align=right>2011年8月12日</DIV>', N'hsg', NULL, 53, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (53, N'关于温州市体育局面向社会公开招聘工作人员的公告', N'社团公告', N'&nbsp;&nbsp; 因工作需要，温州市体育局所属温州体育运动学校面向社会公开招聘工作人员9名。现将有关事项公告如下： 
<P>　　 一、报考条件</P>
<P>　　 1、拥护中国共产党的领导，热爱社会主义，遵纪守法，品行端正；</P>
<P>　　 2、具备报考岗位所需的学历、专业或技能条件；</P>
<P>　　 3、具有适应岗位要求的身体、年龄条件；</P>
<P>　　 4、具有岗位所需的其他条件。</P>
<P>　　 二、招聘对象和具体岗位要求</P>
<P>　　 详见《温州市体育局公开招聘工作人员招聘计划一览表》。</P>
<P>　　 三、考试、聘用办法</P>
<P>　　 1、报名人数与招聘岗位数比例不足3：1的，由用人单位及其上级行政部门商人事部门研究决定是否开考。</P>
<P>　　 2、考试采用面试，面试方式为专业实践操作；面试成绩低于60分者为不合格。</P>
<P>　　 3、面试结束后，按招聘岗位1：1的比例从高分到低分确定拟聘用人员参加体检、考核，如有不合格者，依次替补。体检、考核参照公务员录用有关标准执行。</P>
<P>　　 4、体检、考核合格人员，经公示一周期满后，没有反映问题的，按有关规定办理聘用手续。</P>
<P>　　 四、报名办法</P>
<P>　　 1、应聘人员持本人有效身份证件、学历（职称）证书、户口本、运动员证、荣誉证书、1寸彩色免冠照片3张等，于2010年12月1日—12月7日（上午8：30—11：30 下午14：00—17：00）到温州体育运动学校（温州市锦花路63号）报名，应届毕业生还需提供就业协议书，在职工作人员还需提供原单位同意报考证明。报名咨询电话：0577-88583978。</P>
<P>　　 2、外地报名考生可通过挂号邮寄个人有关材料的方式报名（邮寄以寄出时间为准），初审后告之是否符合报考要求。</P>
<P>　　 3、面试时间另行通知。</P>
<P align=right>　　 　　　　　　 2010年11月16日</P>
<UL>
<LI>下载附件： 
<LI><A href="http://www.wzrc.net/upload/2010/11/3948f96d-bcaf-4868-a717-172efe127b14.xls">温州市体育局公开招聘工作人员招聘计划一览表</A> </LI></UL>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 5, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (54, N'最牛电力公司合法分红6亿元曝出三大暴富秘密！', N'社团公告', N'<div>
	近日，各大网络论坛纷纷曝出一篇题为《史上最牛电力公司！职工都是百万富翁！6亿人民币400人分》的帖子，称湖北恩施电力公司分红6亿元人民币，400多名电力公司职工一夜成为百万富翁，多者获利达千万元。帖子引起了网民广泛议论。17日，记者赴恩施调查发现，湖北恩施电力公司职工通过股权转让等交易获利的情况是属实的，但湖北省电力公司、恩施电力公司和恩施州政府均认为此事并非非法。<br />
<br />
根据湖北电力公司的解释，这四家民营公司是“纯粹的职工参股的民营企业”。四家企业因被国家电网收购，所以要清退相关职工的股权，致使其获得6亿分红。<br />
<br />
6亿元分红，这是多么令人艳羡的数字，可惜它只属于三千人，“一夜暴富”在电力职工面前，的确不是一个神话。<br />
<br />
当我们认真审视这6个亿的源头与去处，我们豁然发现，一个人要想暴富，其实就在以下三个秘密。<br />
<br />
第一，垄断是暴富之源泉。仅仅七年时间，一个地级市电力系统四家“由职工参股的纯粹民企”，除了每年已经分红出去的不菲利润和高额工资收入之外，居然还剩下价值6亿的资产被国家电网收购，如果没有垄断的大大功劳，何来如此之暴利？<br />
<br />
第二，赚国家的钱是暴富之保障。如果这四大民企不是与国家的公司做生意，不是有国家的资源、财力做保障，还会不会有如此之暴利呢？从表面上看，被清退股权的民营公司与恩施电力之间确实“仅有售电业务往来”，可是，拿公家的钱去买自己发的电，价格、待遇会有什么样的优待和保障，相信谁也看得明白。<br />
<br />
第三，资本运作是暴富之机遇。改革开放以来，不少人抓住机遇，发了大财，这其中当然也包括一部分掌握着国家资源的人。特别是在国有与私有模糊的关联公司上面，一些人的确抓住了机遇，这里面不一定要多少投资，关键是要有一系列的资本运作，也就是如何把国有的变成私有的，如何让部分国家的资产变成个人的股份？如何玩活政策？如何损公肥私？我们至今尚不知晓，当初参股之时，这400多名职工究竟投入了多少？但我们知道，象这样的运作者，可能在不少垄断行业层出不穷。有的高手资本运作还会“空手套白狼”，这在房地产方面恐怕屡见不鲜。<br />
<br />
也许，我们永远找不出这四家民企的违规交易，因为他们是玩弄政策的高手，如何把每一个环节变得合理合法？是他们的本事，只是因为我们的国有资产自己说不了话、发不了言，才成就了一批胆大妄为的蛀虫。<br />
<br />
6个多亿的分红来了，也将走了，它们都是合法的，因为有组织的认定，也有当初手续来作证，因为他们抓住了机遇，那么谁会是非法的呢？谁又没有抓住机遇呢？这样的思考又将如何继续？<br />
</div>', N'hsg', N'upload/1488463961242.jpg', 93, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (55, N'我市非公企业深入开展“创先争优”活动', N'社团公告', N'<p>
	在党员周玉生带领下，泰昌集团下属水泥制品公司通过技术改造提升工艺，使生产能力显著提高，预计全年产值同比增长40%；党员林世袍创新了“钢管杆基础设计及加工系统”，使主打产品钢管杆塔的“放样”准确率提高至100%，可为集团创造效益1000余万元……最近，泰昌集团频频传出这样的好消息。对这家一向重视党建的非公企业来说，通过开展“创先争优”活动，不仅充分发挥出党组织和党员的先锋模范作用，也大大激励了其他员工爱岗敬业、克难攻坚的信心和决心，为企业在后危机时期持续健康发展奠定基础。
</p>
<p>
	今年5月以来，根据中央和省委部署，我市紧密结合自身实际，按照非公有制企业“发展强、党建强”双品牌建设的要求，以“服务企业、服务员工、服务社会”为主题，在广大非公企业中扎实开展“创先争优”活动，取得了阶段性成效。
</p>
<p>
	面对变化的国内外形势，如何加快转型发展步伐，是摆在众多非公企业面前的重要课题，同样也成为检验“创先争优”活动成效的最现实标准。
</p>
<p>
	活动中，我市广大非公企业党组织把服务发展作为“创先争优”的第一要务，坚持活动与企业生产经营目标同向、工作同力、发展同步。他们纷纷针对转型升级中遇到的实际问题，与企业决策层共同剖析当前经济形势、企业的现实状况和发展契机，着力找准发展问题，引导企业转型升级。如华峰集团党委在第一时间倡议召开董事局会议，提出产业纵向延伸和提升的战略思路，建议探索聚氨酯在军工、铁路、船舶、汽车等新兴领域的应用。
</p>
<p>
	员工是企业发展的生命力所在。“创先争优”活动中，我市广大非公企业党组织坚持员工为本的理念，创新工作载体和方法，突出抓好创造力、凝聚力和竞争力建设，以员工争优推动企业争先，以服务员工发展推动企业发展。如康奈集团党委在企业中开设“新温州人情感交流站”，先后为100多名青年员工解决了思想问题，在改善劳资关系、维护劳动权益方面发挥积极作用。而正泰集团党委则在行政班组内组建党小组、工会小组、团小组，新雅集团党委在各部门、各车间实施“政治指导员”制度，把党的工作触角伸向企业的每个角落，把员工的思想政治工作与企业的生产经营、改革发展相结合，积极发挥党组织对企业科学健康发展的促进作用。
</p>
<p>
	非公企业如何在加快自身发展的同时，为社会和谐做出应有贡献？“创先争优”活动中，我市广大非公企业党组织和党员通过带头示范，积极引导企业树立承担社会责任是企业义不容辞责任的发展理念，致力于在服务社会中实现企业健康发展。兴乐集团党总支倡导设立了“兴乐环保日”，企业产品一律改用无污染、可降解的环保包装，每年可减少白色污染30余吨。森马集团党委与瓯海区泽雅镇龙头村结对共建，通过创建扶贫瓯柑基地等方式，实现农村发展与企业发展的良性互动。截至目前，全市103家“活力和谐企业”和“劳动关系和谐”企业均开展了企村结对共建活动，企业党员、职工和村党员、村民充分发挥各自优势，取长补短，共同促进。
</p>
<p>
	比贡献激发企业内在潜力，做表率推动企业创新发展。随着“创先争优”活动深入推进，不少非公企业正焕发出全新的发展活力，大步走上转型提升的大道。
</p>
<p>
	记者 潘秀慧
</p>
<!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1488463942820.jpg', 30, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (56, N'十二五期间我市拟投百亿建20个港口项目', N'社团公告', N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 温州市港航管理局主动承接“六城联创”活动。记者10月19日从该局获悉，十二五期间计划建成投资额为108.21亿元的港口项目20个，同时，提高温州港航业文明素质，优化政务生态，为温州发展创造良好的硬环境和软环境。
<p>
	据市港航部门介绍，温州港的发展目标是：争取在十二五末实现全港货物吞吐量达到1亿吨，集装箱吞吐量170万标箱，进入“百万标箱、亿吨大港”行列，成为重要的区域性枢纽港。围绕这个目标，十二五温州计划建成包括乐清湾港区A区多用途泊位、状元岙港区二期工程、华港石化码头等在内的20个项目，投资额为108.21亿元；争取开工建设项目9个，投资额54.8亿元；做深6个预备类项目的前期工作，投资额80亿元；以北麂深水港项目论证为目标，深化港口发展规划编制工作。
</p>
<p>
	“六城联创”活动对发展环境提出了高要求，为此，市港航管理局除加大港口建设投资外，港航部门还将出台《温州市鼓励和扶持集装箱发展若干政策意见》，下力气引进港航业大公司，推动温州港跨越式发展；并在温州航运史馆建设、海岸基干带建设、海岸带绿化、海涂围垦等方面发挥应有的作用。同时，港航部门将大力打造服务优质、管理高效、行风廉洁的软环境，通过提升港航文明素质、优化政务环境、洁化工作环境，进一步改善行业形象。&nbsp;（记者 林乃鹏）
</p>
<!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1488463929953.jpg', 24, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (57, N'政府集中采购机构综合考核揭晓 县公共资源交易中心再获优胜单位称号', N'社团公告', N'<p>
	苍南新闻网11月25日消息：2010-2011年度浙江省政府集中采购机构考核日前揭晓，苍南县公共资源交易中心再次摘得综合考核优胜单位桂冠。据了解，获此称号的全市仅三家，乐清市和瑞安市也名列其中。
</p>
<!--advertisement code begin--><!--advertisement code end-->
<p>
	据悉，省政府集中采购机构考核工作每两年举行一次，由省市两级财政、监察、审计等部门分别组成考核小组，从各个机构的队伍建设、制度建设、业务建设、采购绩效、社会评价等五个方面入手进行量化考核，最终评出综合优胜34家，单项考核先进单位24家，其余37家为合格。考核工作从2008年开始，共安排了两次。苍南是继2008-2009年度后，再次获此殊荣的。（新文 敬铨 ）
</p>', N'hsg', N'upload/1488463918801.jpg', 86, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (58, N'各地试点公车改革新招频出 媒体称反响不一', N'社团公告', N'<STRONG><FONT color=#000080>&nbsp;&nbsp;&nbsp; 重拳遏制“车轮腐败”</FONT></STRONG>
<P style="TEXT-ALIGN: left" align=left><FONT face=楷体_GB2312>&nbsp;&nbsp;&nbsp; 如果从1994年出台《关于党政机关汽车配备和使用管理的规定》算起，我国的公车改革已走过了17个年头。当前，新一轮公车改革正在深入推进。此次公车改革，被外界预测为“史上最严格”车改。新一轮公车改革——</FONT></P>
<P align=center><IMG id={206DCA26-50D5-4B4B-BA6D-5B25B914EB09} src="http://news.xinhuanet.com/politics/2011-05/03/121370311_11n.jpg"></P>
<P>　　4月25日，开展党政机关公务用车问题专项治理工作电视电话会议在京召开，会上成立了中央公务用车问题专项治理工作领导小组，将对中办、国办印发的《关于开展党政机关公务用车问题专项治理工作的实施意见》在各地区各部门的贯彻落实情况进行监督检查。</P>
<P>　　今年初，以中央下发的《党政机关公务用车配备使用管理办法》为标志，新一轮公车改革拉开帷幕。《办法》明确规定，党政机关配备公务用车应当严格执行一定的标准，一般公务用车配备排气量1.8升（含）以下、价格18万元以内的轿车，公务用车使用年限超过8年的方可更新，党政机关原则上不得配备越野车。</P>
<P>　　今年两会上，温家宝总理在政府工作报告中强调：2011年公务车辆购置及运行费等支出原则上零增长，切实降低行政成本。与此同时，财政部出台了《党政机关公务用车预算决算管理办法》，首次明确了公车的购置和运转费用都将单独设立预算科目，公车预算决算管理进一步加强。3月下旬，国务院第三次廉政工作会议上，温家宝又指出，目前我国已经具备了公务用车配备使用制度改革的条件，要在严格规范公务用车配备使用的同时，加快推进公务用车配备使用制度改革。</P>
<P>　　一系列的动作表明，中央已将公务用车专项治理工作作为解决反腐倡廉建设中人民群众反映强烈的突出问题，提上了议事日程。</P>', N'hsg', NULL, 58, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (59, N'县行政审批服务中心重服务促提效', N'社团公告', N'<div class="lh24" id="topic">
	<p>
		<a href="http://www.cnxw.com.cn/system/2010/06/26/010384927.shtml" target="_blank">“转作风，优环境”专题</a>
	</p>
</div>
<div class="content" id="ftcg">
	<!--function content() parse begin-->
	<p>
		2月17日消息：作为行政审批制度改革的前沿阵地，县行政审批服务中心全体工作人员不管生人熟人一样对待，确保群众能办成事，2010年该中心获了省效能建设创新创优先进典型。
	</p>
	<p>
		自开展创先争优活动以来，县行政审批中心确保进驻的每一个事项不在党员手中出现人为设障，确保服务的每一个流程不在党员手中出现差错失误。并带头推行预约服务、延时服务、上门服务，做到“哪里要行政服务的咨询，哪里就有中心党员的声音；哪里有行政服务的需求，哪里就有中心党员的身影”。
	</p>
<!--advertisement code begin--><!--advertisement code end-->
	<p>
		为方便群众办事，该中心于去年初在龙港镇成立了浙江省第一家履行县级审批职能的镇级行政审批服务中心即龙港行政审批服务中心，涉及审批事项119项。建立32个乡镇便民服务中心，采取“一门受理、内部动作、统一收费、限时办结”的“一站式”服务。同时稳步推进行政审批“两集中、两到位”改革工作；做好工业投资项目一条龙服务；推出网上审批计生窗口试点；创新窗口工作人员考核制度，开展中心领导巡查月活动；完善中心窗口优秀负责人考核机制等。通过开展创先争优活动，引导窗口人员转变思想观念和工作作风，为群众提供更好的服务。（记者 冯瑞元）
	</p>
</div>', N'hsg', N'upload/1488463900321.jpg', 58, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (60, N'钱库镇人民政府面向社会公开招聘合同工的通告', N'社团公告', N'<div align="left">
	因工作需要,决定面向社会公开招聘4名合同工，现将有关事项公告如下：
</div>
<div align="left">
	<b>一、工作岗位</b>
</div>
<div align="left">
	本次招聘图书馆工作人员1名，环境整治办工作人员2名，合作医疗办工作人员1名。
</div>
<div align="left">
	<b>二、招聘条件</b>
</div>
<div align="left">
	1、大专以上学历；
</div>
<div align="left">
	2、年龄在18周岁以上，35周岁以下，即1978年8月31日?1995年8月31日期间出生，图书馆工作人员年龄可放宽到1975年1月1日以后出生；
</div>
<div align="left">
	3、遵纪守法，作风正派，为人公正，责任心强，无社会治安不良记录和违反计划生育政策；
</div>
<div align="left">
	4、身体健康，具有正常履行职责的身体条件和工作能力；
</div>
<div align="left">
	5、同等条件下，文秘专业、计算机专业、会计专业优先录用。
</div>
<div align="left">
	<b>三、报名程序</b>
</div>
<div align="left">
	1、报名时间:2013年9月2日--9月6日。（上午8：30至11:30时，下午2:30至5：30）；
</div>
<div align="left">
	2、报名地点:镇党群办306室(联系电话: 59875626 )；
</div>
<div align="left">
	3、报名要求:符合条件者持本人身份证、毕业证、执业资格证和职称资格证原件及复印件各一份，近期正面免冠一寸彩照2张；
</div>
<div align="left">
	4、资格审查：由镇党群办有关人员对报名人员进行资格审查，根据报名情况择优或考试录用。
</div>
<div align="left">
	<b>四、体检和政审</b>
</div>
<div align="left">
	体检由招聘单位参照《公务员录用体检标准》统一组织进行，体检费用由考生自己承担。体检合格后，由招聘单位组织人员通过走访、审档等形式进行政审。
</div>
<div align="left">
	<b>五、聘用：</b>
</div>
<div align="left">
	体检、考核合格人员，经公示3天期满后，没有反映问题的，按有关规定办理录用手续，由镇党委统一安排岗位，与镇合同工享受同等福利待遇。参加工作后，因工作需要调剂到其他岗位的，必须服从镇党委的统一安排。
</div>
<div align="right">
</div>
<div align="right">
</div>
<div align="right">
</div>
<div align="right">
	钱库镇人民政府
</div>
<div align="right">
	2013年8月29日
</div>
<div>
</div>', N'hsg', N'upload/1488463884925.jpg', 18, CAST(0x0000A899015A6878 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (106, N'正昌律师事务所规范化管理受好评', N'规章制度', N'<P align=center><IMG src="http://pic2.66wz.com/0/10/38/22/10382201_773215.jpg" border=0></TD></TR></TABLE> </P>
<P></P><!--advertisement code begin--><!--advertisement code end-->
<P></P>
<CENTER>图为该所主任陈立森在介绍工作。（卢伟/摄）</CENTER>
<P></P>&nbsp;&nbsp; 2月23日，由温州市司法局组织开展的律师事务所“互看互学互评”参观交流活动一行40多人到我县浙江正昌律师事务所进行参观交流，对该所积极开展的规范化管理给予充分肯定。 
<P></P>
<P>&nbsp;&nbsp;&nbsp; 据了解，经各县（市、区）司法局和市直律师事务所推荐，并经市司法局审核，确定10家管理比较规范或者某一方面独具特色的律师事务所供全市律师事务所学习研讨，我县正昌律师事务所名列其中。近年来，该所共设立了52项规章制度，如收结案及收费管理办法、律师收案风险告知和利益冲突审查等相关制度，并根据工作情况先后两次对规章制度适时进行补充修改。为确保每位律师不违规矩，杜绝制度只停留在表面的现象，该所建立合伙人监督制度和责任追究制度，保证各项制度有效运行。同时还把规范化管理渗透到专业化分工和团队建设当中，设立了诉讼法律服务中心和非诉法律服务中心，下设民事、刑事、行政、公司法务、政府法务以及建筑房地产等8个法务部门，进而据此对律师、实习律师、律师助理进行分类管理，更好地为客户提供优质的法律服务。</P>
<P>&nbsp;&nbsp; 温州市律师事务所“互看互学互评”参观交流团在听取该所规范化管理工作汇报并通过实地参观后对该所予以充分肯定，认为该所管理和业务分工精细独到，环环相扣，体现了规范化管理；比较讲究事务所形象；案件档案管理比较规范；重视社会公益事业等。参观交流团还就该所进一步加强硬件建设提出要求。（记者 郑法群）</P>', N'hsg', NULL, 91, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (107, N'国务院关于推进社会主义新农村建设的若干意见', N'规章制度', N'<SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">&nbsp;&nbsp;&nbsp; 党的十六届五中全会通过的《中共中央关于制定国民经济和社会发展第十一个五年规划的建议》，明确了今后</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 5 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年我国经济社会发展的奋斗目标和行动纲领，提出了建设社会主义新农村的重大历史任务，为做好当前和今后一个时期的</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">工作指明了方向。</SPAN><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">近几年，党中央、国务院以科学发展观统领经济社会发展全局，按照统筹城乡发展的要求，采取了一系列支农惠农的重大政策。各地区各部门认真落实中央部署，切实加强</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">工作，农业和农村发展出现了积极变化，迎来了新的发展机遇。粮食连续两年较大幅度增产，农业结构调整向纵深推进，农民收入较快增长，农村税费改革取得重大成果，社会事业进一步发展，农村基层组织建设得到加强，干群关系明显改善。农业和农村发展的好形势，对保持国民经济平稳较快增长和社会稳定，发挥了重要的支撑作用。但必须看到，当前农业和农村发展仍然处在艰难的爬坡阶段，农业基础设施脆弱、农村社会事业发展滞后、城乡居民收入差距扩大的矛盾依然突出，解决好</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">问题仍然是工业化、城镇化进程中重大而艰巨的历史任务。各级党委和政府必须按照党的十六届五中全会的战略部署，始终把</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">工作放在重中之重，切实把建设社会主义新农村的各项任务落到实处，加快农村全面小康和现代化建设步伐</SPAN></FONT><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><BR></SPAN><FONT size=3><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">一、统筹城乡经济社会发展，扎实推进社会主义新农村建设</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 1 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）建设社会主义新农村是我国现代化进程中的重大历史任务。全面建设小康社会，最艰巨最繁重的任务在农村。加速推进现代化，必须妥善处理工农城乡关系。构建社会主义和谐社会，必须促进农村经济社会全面进步。农村人口众多是我国的国情，只有发展好农村经济，建设好农民的家园，让农民过上宽裕的生活，才能保障全体人民共享经济社会发展成果，才能不断扩大内需和促进国民经济持续发展。当前，我国总体上已进入以工促农、以城带乡的发展阶段，初步具备了加大力度扶持</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">的能力和条件。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">十一五</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">时期，必须抓住机遇，加快改变农村经济社会发展滞后的局面，扎实稳步推进社会主义新农村建设。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）围绕社会主义新农村建设做好农业和农村工作。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">十一五</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">时期是社会主义新农村建设打下坚实基础的关键时期，是推进现代农业建设迈出重大步伐的关键时期，是构建新型工农城乡关系取得突破进展的关键时期，也是农村全面建设小康加速推进的关键时期。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">十一五</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">时期要高举邓小平理论和</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三个代表</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">重要思想伟大旗帜，全面贯彻落实科学发展观，统筹城乡经济社会发展，实行工业反哺农业、城市支持农村和</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">多予少取放活</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">的方针，按照</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">生产发展、生活宽裕、乡风文明、村容整洁、管理民主</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">的要求，协调推进农村经济建设、政治建设、文化建设、社会建设和党的建设。当前，要完善强化支农政策，建设现代农业，稳定发展粮食生产，积极调整农业结构，加强基础设施建设，加强农村民主政治建设和精神文明建设，加快社会事业发展，推进农村综合改革，促进农民持续增收，确保社会主义新农村建设有良好开局。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 3 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）扎实稳步推进社会主义新农村建设。推进新农村建设是一项长期而繁重的历史任务，必须坚持以发展农村经济为中心，进一步解放和发展农村生产力，促进粮食稳定发展、农民持续增收；必须坚持农村基本经营制度，尊重农民的主体地位，不断创新农村体制机制；必须坚持以人为本，着力解决农民生产生活中最迫切的实际问题，切实让农民得到实惠；必须坚持科学规划，实行因地制宜、分类指导，有计划有步骤有重点地逐步推进；必须坚持发挥各方面积极性，依靠农民辛勤劳动、国家扶持和社会力量的广泛参与，使新农村建设成为全党全社会的共同行动。在推进新农村建设工作中，要注重实效，不搞形式主义；要量力而行，不盲目攀比；要民主商议，不强迫命令；要突出特色，不强求一律；要引导扶持，不包办代替。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 4 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加快建立以工促农、以城带乡的长效机制。顺应经济社会发展阶段性变化和建设社会主义新农村的要求，坚持</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">多予少取放活</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">的方针，重点在</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">多予</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">上下功夫。调整国民收入分配格局，国家财政支出、预算内固定资产投资和信贷投放，要按照存量适度调整、增量重点倾斜的原则，不断增加对农业和农村的投入。扩大公共财政覆盖农村的范围，建立健全财政支农资金稳定增长机制。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年，国家财政支农资金增量要高于上年，国债和预算内资金用于农村建设的比重要高于上年，其中直接用于改善农村生产生活条件的资金要高于上年，并逐步形成新农村建设稳定的资金来源。要把国家对基础设施建设投入的重点转向农村。提高耕地占用税税率，新增税收应主要用于</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">。抓紧制定将土地出让金一部分收入用于农业土地开发的管理和监督办法，依法严格收缴土地出让金和新增建设用地有偿使用费，土地出让金用于农业土地开发的部分和新增建设用地有偿使用费安排的土地开发整理项目，都要将小型农田水利设施建设作为重要内容，建设标准农田。进一步加大支农资金整合力度，提高资金使用效率。金融机构要不断改善服务，加强对</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">的支持。要加快建立有利于逐步改变城乡二元结构的体制，实行城乡劳动者平等就业的制度，建立健全与经济发展水平相适应的多种形式的农村社会保障制度。充分发挥市场配置资源的基础性作用，推进征地、户籍等制度改革，逐步形成城乡统一的要素市场，增强农村经济发展活力。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">二、推进现代农业建设，强化社会主义新农村建设的产业支撑</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 5 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）大力提高农业科技创新和转化能力。深化农业科研体制改革，加快建设国家创新基地和区域性农业科研中心，在机构设置、人员聘任和投资建设等方面实行新的运行机制。鼓励企业建立农业科技研发中心，国家在财税、金融和技术改造等方面给予扶持。改善农业技术创新的投资环境，发展农业科技创新风险投资。加强农业高技术研究，继续实施现代农业高技术产业化项目，尽快取得一批具有自主知识产权的重大农业科技成果。针对农业生产的迫切需要，加快农作物和畜禽良种繁育、动植物疫病防控、节约资源和防治污染技术的研发、推广。把农业科研投入放在公共财政支持的优先位置，提高农业科技在国家科技投入中的比重。继续安排农业科技成果转化资金和国外先进农业技术引进资金。加强种质资源和知识产权保护。要加快农业技术推广体系改革和建设，积极探索对公益性职能与经营性服务实行分类管理的办法，完善农技推广的社会化服务机制。深入实施农业科技入户工程，扩大重大农业技术推广项目专项补贴规模。鼓励各类农科教机构和社会力量参与多元化的农技推广服务。加强气象为农业服务，保障农业生产和农民生命财产安全。大力推进农业机械化，提高重要农时、重点作物、关键生产环节和粮食主产区的机械化作业水平。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 6 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加强农村现代流通体系建设。积极推进农产品批发市场升级改造，促进入市农产品质量等级化、包装规格化。鼓励商贸企业、邮政系统和其他各类投资主体通过新建、兼并、联合、加盟等方式，在农村发展现代流通业。积极发展农产品、农业生产资料和消费品连锁经营，建立以集中采购、统一配送为核心的新型营销体系，改善农村市场环境。继续实施</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">万村千乡市场工程</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">，建设连锁化</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">农家店</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">。培育和发展农村经纪人队伍。加快农业标准化工作，健全检验检测体系，强化农业生产资料和饲料质量管理，进一步提高农产品质量安全水平。供销合作社要创新服务方式，广泛开展联合、合作经营，加快现代经营网络建设，为农产品流通和农民生产生活资料供应提供服务。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年要完善全国鲜活农产品</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">绿色通道</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">网络，实现省际互通。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 7 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）稳定发展粮食生产。确保国家粮食安全是保持国民经济平稳较快增长和社会稳定的重要基础。必须坚持立足国内实现粮食基本自给的方针，稳定发展粮食生产，持续增加种粮收益，不断提高生产能力，适度利用国际市场，积极保持供求平衡。坚决落实最严格的耕地保护制度，切实保护基本农田，保护农民的土地承包经营权。继续实施优质粮食产业工程和粮食丰产科技工程，加快建设大型商品粮生产基地和粮食产业带，稳定粮食播种面积，不断提高粮食单产、品质和生产效益。坚持和完善重点粮食品种最低收购价政策，保持合理的粮价水平，加强农业生产资料价格调控，保护种粮农民利益。继续执行对粮食主产县的奖励政策，增加中央财政对粮食主产县的奖励资金。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 8 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）积极推进农业结构调整。按照高产、优质、高效、生态、安全的要求，调整优化农业结构。加快建设优势农产品产业带，积极发展特色农业、绿色食品和生态农业，保护农产品知名品牌，培育壮大主导产业。继续实施种子工程。大力发展畜牧业，扩大畜禽良种补贴规模，推广健康养殖方式，安排专项投入支持标准化畜禽养殖小区建设试点。要加强动物疫病特别是禽流感等重大疫病防控的基础设施建设，完善突发疫情应急机制，加快推进兽医管理体制改革，稳定基层兽医队伍。积极发展水产业，扩大优质水产品养殖，发展远洋渔业，保护渔业资源，继续做好渔民转产转业工作。提高农产品国际竞争力，扩大园艺、畜牧、水产等优势农产品出口，加强农产品对外贸易磋商，提高我国农业应对国际贸易争端的能力。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 9 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）发展农业产业化经营。要着力培育一批竞争力、带动力强的龙头企业和企业集群示范基地，推广龙头企业、合作组织与农户有机结合的组织形式，让农民从产业化经营中得到更多的实惠。各级财政要增加扶持农业产业化发展资金，支持龙头企业发展，并可通过龙头企业资助农户参加农业保险。发展大宗农产品期货市场和</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">订单农业</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">。通过创新信贷担保手段和担保办法，切实解决龙头企业收购农产品资金不足的问题。开展农产品精深加工增值税改革试点。积极引导和支持农民发展各类专业合作经济组织，加快立法进程，加大扶持力度，建立有利于农民合作经济组织发展的信贷、财税和登记等制度。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 10 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加快发展循环农业。要大力开发节约资源和保护环境的农业技术，重点推广废弃物综合利用技术、相关产业链接技术和可再生能源开发利用技术。制定相应的财税鼓励政策，组织实施生物质工程，推广秸秆气化、固化成型、发电、养畜等技术，开发生物质能源和生物基材料，培育生物质产业。积极发展节地、节水、节肥、节药、节种的节约型农业，鼓励生产和使用节电、节油农业机械和农产品加工设备，努力提高农业投入品的利用效率。加大力度防治农业面源污染。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三、促进农民持续增收，夯实社会主义新农村建设的经济基础</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> l1 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）拓宽农民增收渠道。要充分挖掘农业内部增收潜力，按照国内外市场需求，积极发展品质优良、特色明显、附加值高的优势农产品，推进</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">一村一品</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">，实现增值增效。要加快转移农村劳动力，不断增加农民的务工收入。鼓励和支持符合产业政策的乡镇企业发展，特别是劳动密集型企业和服务业。着力发展县城和在建制的重点镇，从财政、金融、税收和公共品投入等方面为小城镇发展创造有利条件，外来人口较多的城镇要从实际出发，完善社会管理职能。要着眼兴县富民，着力培育产业支撑，大力发展民营经济，引导企业和要素集聚，改善金融服务，增强县级管理能力，发展壮大县域经济。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 12 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）保障务工农民的合法权益。进一步清理和取消各种针对务工农民流动和进城就业的歧视性规定和不合理限制。建立健全城乡就业公共服务网络，为外出务工农民免费提供法律政策咨询、就业信息、就业指导和职业介绍。严格执行最低工资制度，建立工资保障金等制度，切实解决务工农民工资偏低和拖欠问题。完善劳动合同制度，加强务工农民的职业安全卫生保护。逐步建立务工农民社会保障制度，依法将务工农民全部纳入工伤保险范围，探索适合务工农民特点的大病医疗保障和养老保险办法。认真解决务工农民的子女上学问题。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 13 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）稳定、完善、强化对农业和农民的直接补贴政策。要加强国家对农业和农民的支持保护体系。对农民实行的</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三减免、三补贴</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">和退耕还林补贴等政策，深受欢迎，效果明显，要继续稳定、完善和强化。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年，粮食主产区要将种粮直接补贴的资金规模提高到粮食风险基金的</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 50 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">％以上，其他地区也要根据实际情况加大对种粮农民的补贴力度。增加良种补贴和农机具购置补贴。适应农业生产和市场变化的需要，建立和完善对种粮农民的支持保护制度。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 14 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加强扶贫开发工作。要因地制宜地实行整村推进的扶贫开发方式，加大力度改善贫困地区的生产生活条件，抓好贫困地区劳动力的转移培训，扶持龙头企业带动贫困地区调整结构，拓宽贫困农户增收渠道。对缺乏生存条件地区的贫困人口实行易地扶贫。继续增加扶贫投入，完善管理机制，提高使用效益。继续动员中央和国家机关、沿海发达地区和社会各界参与扶贫开发事业。切实做好贫困缺粮地区的粮食供应工作。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">四、加强农村基础设施建设，改善社会主义新农村建设的物质条件</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 15 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）大力加强农田水利、耕地质量和生态建设。在搞好重大水利工程建设的同时，不断加强农田水利建设。加快发展节水灌溉，继续把大型灌区续建配套和节水改造作为农业固定资产投资的重点。加大大型排涝泵站技术改造力度，配套建设田间工程。大力推广节水技术。实行中央和地方共同负责，逐步扩大中央和省级小型农田水利补助专项资金规模。切实抓好以小型灌区节水改造、雨水集蓄利用为重点的小型农田水利工程建设和管理。继续搞好病险水库除险加固，加强中小河流治理。要大力加强耕地质量建设，实施新一轮沃土工程，科学施用化肥，引导增施有机肥，全面提升地力。增加测土配方施肥补贴，继续实施保护性耕作示范工程和土壤有机质提升补贴试点。农业综合开发要重点支持粮食主产区改造中低产田和中型灌区节水改造。按照建设环境友好型社会的要求，继续推进生态建设，切实搞好退耕还林、天然林保护等重点生态工程，稳定完善政策，培育后续产业，巩固生态建设成果。继续推进退牧还草、山区综合开发。建立和完善生态补偿机制。做好重大病虫害防治工作，采取有效措施防止外来有害生物入侵。加强荒漠化治理，积极实施石漠化地区和东北黑土区等水土流失综合防治工程。建立和完善水电、采矿等企业的环境恢复治理责任机制，从水电、矿产等资源的开发收益中，安排一定的资金用于企业所在地环境的恢复治理，防止水土流失。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 16 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加快乡村基础设施建设。要着力加强农民最急需的生活基础设施建设。在巩固人畜饮水解困成果基础上，加快农村饮水安全工程建设，优先解决高氟、高砷、苦咸、污染水及血吸虫病区的饮水安全问题。有条件的地方，可发展集中式供水，提倡饮用水和其他生活用水分质供水。要加快农村能源建设步伐，在适宜地区积极推广沼气、秸秆气化、小水电、太阳能、风力发电等清洁能源技术。从</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年起，大幅度增加农村沼气建设投资规模，有条件的地方，要加快普及户用沼气，支持养殖场建设大中型沼气。以沼气池建设带动农村改圈、改厕、改厨。尽快完成农村电网改造的续建配套工程。加强小水电开发规划和管理，扩大小水电代燃料试点规模。要进一步加强农村公路建设，到</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">十一五</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">期末基本实现全国所有乡镇通油（水泥）路，东、中部地区所有具备条件的建制村通油（水泥）路，西部地区基本实现具备条件的建制村通公路。要积极推进农业信息化建设，充分利用和整合涉农信息资源，强化面向农村的广播电视电信等信息服务，重点抓好</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">金农</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">工程和农业综合信息服务平台建设工程。引导农民自愿出资出劳，开展农村小型基础设施建设，有条件的地方可采取以奖代补、项目补助等办法给予支持。按照建管并重的原则，逐步把农村公路等公益性基础设施的管护纳入国家支持范围。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 17 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加强村庄规划和人居环境治理。随着生活水平提高和全面建设小康社会的推进，农民迫切要求改善农村生活环境和村容村貌。各级政府要切实加强村庄规划工作，安排资金支持编制村庄规划和开展村庄治理试点；可从各地实际出发制定村庄建设和人居环境治理的指导性目录，重点解决农民在饮水、行路、用电和燃料等方面的困难，凡符合目录的项目，可给予资金、实物等方面的引导和扶持。加强宅基地规划和管理，大力节约村庄建设用地，向农民免费提供经济安全适用、节地节能节材的住宅设计图样。引导和帮助农民切实解决住宅与畜禽圈舍混杂问题，搞好农村污水、垃圾治理，改善农村环境卫生。注重村庄安全建设，防止山洪、泥石流等灾害对村庄的危害，加强农村消防工作。村庄治理要突出乡村特色、地方特色和民族特色，保护有历史文化价值的古村落和古民宅。要本着节约原则，充分立足现有基础进行房屋和设施改造，防止大拆大建，防止加重农民负担，扎实稳步地推进村庄治理。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">五、加快发展农村社会事业，培养推进社会主义新农村建设的新型农民</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 18 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加快发展农村义务教育。着力普及和巩固农村九年制义务教育。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年对西部地区农村义务教育阶段学生全部免除学杂费，对其中的贫困家庭学生免费提供课本和补助寄宿生生活费，</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2007 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年在全国农村普遍实行这一政策。继续实施国家西部地区</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">两基攻坚</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">工程和农村中小学现代远程教育工程。建立健全农村义务教育经费保障机制，进一步改善农村办学条件，逐步提高农村中小学公用经费的保障水平。加强农村教师队伍建设，加大城镇教师支援农村教育的力度，促进城乡义务教育均衡发展。加大力度监管和规范农村学校收费，进一步减轻农民的教育负担。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 19 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）大规模开展农村劳动力技能培训。提高农民整体素质，培养造就有文化、懂技术、会经营的新型农民，是建设社会主义新农村的迫切需要。继续支持新型农民科技培训，提高农民务农技能，促进科学种田。扩大农村劳动力转移培训阳光工程实施规模，提高补助标准，增强农民转产转岗就业的能力。加快建立政府扶助、面向市场、多元办学的培训机制。各级财政要将农村劳动力培训经费纳入预算，不断增加投入。整合农村各种教育资源，发展农村职业教育和成人教育。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 20 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）积极发展农村卫生事业。积极推进新型农村合作医疗制度试点工作，从</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年起，中央和地方财政较大幅度提高补助标准，到</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2008 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年在全国农村基本普及新型农村合作医疗制度。各级政府要不断增加投入，加强以乡镇卫生院为重点的农村卫生基础设施建设，健全农村三级医疗卫生服务和医疗救助体系。有条件的地方，可对乡村医生实行补助制度。建立与农民收入水平相适应的农村药品供应和监管体系，规范农村医疗服务。加大农村地方病、传染病和人畜共患疾病的防治力度。增加农村卫生人才培养的经费预算，组织城镇医疗机构和人员对口支持农村，鼓励各种社会力量参与发展农村卫生事业。加强农村计划生育服务设施建设，继续稳定农村低生育水平。（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 21 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）繁荣农村文化事业。各级财政要增加对农村文化发展的投入，加强县文化馆、图书馆和乡镇文化站、村文化室等公共文化设施建设，继续实施广播电视</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">村村通</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">和农村电影放映工程，发展文化信息资源共享工程农村基层服务点，构建农村公共文化服务体系。推动实施农民体育健身工程。积极开展多种形式的群众喜闻乐见、寓教于乐的文体活动，保护和发展有地方和民族特色的优秀传统文化，创新农村文化生活的载体和手段，引导文化工作者深入乡村，满足农民群众多层次、多方面的精神文化需求。扶持农村业余文化队伍，鼓励农民兴办文化产业。加强农村文化市场管理，抵制腐朽落后文化。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <SPAN lang=EN-US>22 </SPAN></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）逐步建立农村社会保障制度。按照城乡统筹发展的要求，逐步加大公共财政对农村社会保障制度建设的投入。进一步完善农村</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">五保户</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">供养、特困户生活救助、灾民补助等社会救助体系。探索建立与农村经济发展水平相适应、与其他保障措施相配套的农村社会养老保险制度。落实军烈属优抚政策。积极扩大对农村部分计划生育家庭实行奖励扶助制度试点和西部地区计划生育</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">少生快富</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">扶贫工程实施范围。有条件的地方，要积极探索建立农村最低生活保障制度。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 23 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）倡导健康文明新风尚。大力弘扬以爱国主义为核心的民族精神和以改革创新为核心的时代精神，激发农民群众发扬艰苦奋斗、自力更生的传统美德，为建设社会主义新农村提供强大的精神动力和思想保证。加强思想政治工作，深入开展农村形势和政策教育，认真实施公民道德建设工程，积极推动群众性精神文明创建活动，开展和谐家庭、和谐村组、和谐村镇创建活动。引导农民崇尚科学，抵制迷信，移风易俗，破除陋习，树立先进的思想观念和良好的道德风尚，提倡科学健康的生活方式，在农村形成文明向上的社会风貌。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">六、全面深化农村改革，健全社会主义新农村建设的体制保障</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 24 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）进一步深化以农村税费改革为主要内容的农村综合改革。</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年，在全国范围取消农业税。通过试点、总结经验，积极稳妥地推进乡镇机构改革，切实转变乡镇政府职能，创新乡镇事业站所运行机制，精简机构和人员，</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 5 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年内乡镇机构编制只减不增。妥善安置分流人员，确保社会稳定。要按照强化公共服务、严格依法办事和提高行政效率的要求，认真解决机构和人员臃肿的问题，切实加强政府社会管理和公共服务的职能。加快农村义务教育体制改革，建立和完善各级政府责任明确、财政分级投入、经费稳定增长、管理以县为主的农村义务教育管理体制，中央和省级政府要更多地承担发展农村义务教育的责任，深化农村学校人事和财务等制度改革。有条件的地方可加快推进</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">省直管县</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">财政管理体制和</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">乡财县管乡用</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">财政管理方式的改革。各地要对乡村债务进行清理核实，</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年选择部分县（市）开展化解乡村债务试点工作，妥善处理历年农业税尾欠，完善涉农税收优惠方式，确保农民直接受益。深化国有农场税费改革，将农业职工土地承包费中类似农村</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">乡镇五项统筹</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">的费用全部减除，农场由此减少的收入由中央和省级财政给予适当补助。国有农场要逐步剥离办社会的职能，转变经营机制，在现代农业建设中发挥示范作用。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 25 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加快推进农村金融改革。巩固和发展农村信用社改革试点成果，进一步完善治理结构和运行机制。县域内各金融机构在保证资金安全的前提下，将一定比例的新增存款投放当地，支持农业和农村经济发展，有关部门要抓紧制定管理办法。扩大邮政储蓄资金的自主运用范围，引导邮政储蓄资金返还农村。调整农业发展银行职能定位，拓宽业务范围和资金来源。国家开发银行要支持农村基础设施建设和农业资源开发。继续发挥农业银行支持农业和农村经济发展的作用。在保证资本金充足、严格金融监管和建立合理有效的退出机制的前提下，鼓励在县域内设立多种所有制的社区金融机构，允许私有资本、外资等参股。大力培育由自然人、企业法人或社团法人发起的小额贷款组织，有关部门要抓紧制定管理办法。引导农户发展资金互助组织。规范民间借贷。稳步推进农业政策性保险试点工作，加快发展多种形式、多种渠道的农业保险。各地可通过建立担保基金或担保机构等办法，解决农户和农村中小企业贷款抵押担保难问题，有条件的地方政府可给予适当扶持。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 26 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）统筹推进农村其他改革。稳定和完善以家庭承包经营为基础、统分结合的双层经营体制，健全在依法、自愿、有偿基础上的土地承包经营权流转机制，有条件的地方可发展多种形式的适度规模经营。加快集体林权制度改革，促进林业健康发展。完善粮食流通体制，深化国有粮食企业改革，建立产销区稳定的购销关系，加强国家对粮食市场的宏观调控。加快征地制度改革步伐，按照缩小征地范围、完善补偿办法、拓展安置途径、规范征地程序的要求，进一步探索改革经验。完善对被征地农民的合理补偿机制，加强对被征地农民的就业培训，拓宽就业安置渠道，健全对被征地农民的社会保障。推进小型农田水利设施产权制度改革。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">七、加强农村民主政治建设，完善建设社会主义新农村的乡村治理机制</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 27 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）不断增强农村基层党组织的战斗力、凝聚力和创造力。充分发挥农村基层党组织的领导核心作用，为建设社会主义新农村提供坚强的政治和组织保障。要以建设社会主义新农村为主题，在全国农村深入开展保持共产党员先进性教育活动，引导广大农村党员学习贯彻党章，坚定理想信念，坚持党的宗旨。要结合农村实际，有针对性地开展正面教育，解决党组织和党员队伍中存在的突出问题，解决影响改革发展稳定的主要问题，解决群众最关心的重点问题，务求取得实效。加强农村基层组织的阵地建设，继续搞好农村党员干部现代远程教育，加大政策理论、法律法规和实用技术培训力度，引导农村基层干部发扬求真务实、踏实苦干的工作作风，广泛联系群众，增强带领群众增收致富的能力。关心和爱护农村基层干部，继续开展农村党的建设</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三级联创</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">活动，加强基层党风廉政建设，巩固党在农村的执政基础。充分发挥农村共青团和妇联组织的作用。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 28 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）切实维护农民的民主权利。健全村党组织领导的充满活力的村民自治机制，进一步完善村务公开和民主议事制度，让农民群众真正享有知情权、参与权、管理权、监督权。完善村民</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">一事一议</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">制度，健全农民自主筹资筹劳的机制和办法，引导农民自主开展农村公益性设施建设。开展村务公开民主管理示范活动，推动农村基层志愿服务活动。加强农村法制建设，深入开展农村普法教育，增强农民的法制观念，提高农民依法行使权利和履行义务的自觉性。妥善处理农村各种社会矛盾，加强农村社会治安综合治理，打击</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">黄赌毒</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">等社会丑恶现象，建设平安乡村，创造农民安居乐业的社会环境。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 29 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）培育农村新型社会化服务组织。在继续增强农村集体组织经济实力和服务功能、发挥国家基层经济技术服务部门作用的同时，要鼓励、引导和支持农村发展各种新型的社会化服务组织。推动农产品行业协会发展，引导农业生产者和农产品加工、出口企业加强行业自律，搞好信息服务，维护成员权益。鼓励发展农村法律、财务等中介组织，为农民发展生产经营和维护合法权益提供有效服务。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">八、切实加强领导，动员全党全社会关心、支持和参与社会主义新农村建设</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 30 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）加强对社会主义新农村建设工作的领导。推进社会主义新农村建设事关我国农业和农村的长远发展，事关改革开放和现代化建设的大局，各级党委和政府要从战略和全局的高度出发，把建设社会主义新农村作为一件大事，真正列入议事日程，切实加强领导，明确工作重点，每年为农民办几件实事。各级党委和政府的工作部门都要明确自身在新农村建设中的职责和任务，特别是宏观管理、基础产业和公共服务部门，在制定发展规划、安排建设投资和事业经费时，要充分考虑统筹城乡发展的要求，更多地向农村倾斜。各地区各部门要建立推进新农村建设的工作协调机制，加强统一领导，明确职责分工，搞好配合协作。各级领导干部要深入农村调查研究，总结实践经验，加强指导服务，帮助基层解决新农村建设中遇到的各种矛盾和问题。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 31 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）科学制定社会主义新农村建设规划。新农村建设涉及经济、政治、文化和社会各个方面，是一项十分复杂的系统工程，必须切实加强规划工作。各地要按照统筹城乡经济社会发展的要求，把新农村建设纳入当地经济和社会发展的总体规划。要明确推进新农村建设的思路、目标和工作措施，统筹安排各项建设任务。做好第二次全国农业普查工作，为制定规划提供科学依据。要充分考虑农民的切身利益和发展要求，在促进农村经济发展的基础上，区分轻重缓急，突出建设重点，加强饮水安全、农田水利、乡村道路、农村能源等基础设施建设，加快教育、卫生等公共事业发展。要尊重自然规律、经济规律和社会发展规律，广泛听取基层和农民群众的意见和建议，提高规划的科学性、民主性、可行性，确保新农村建设扎实稳步推进。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">（</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 32 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">）动员全社会力量关心、支持和参与社会主义新农村建设。建设社会主义新农村是全社会的事业，需要动员各方面力量广泛参与。各行各业都要关心支持新农村建设，为新农村建设作出贡献。充分发挥城市带动农村发展的作用，加大城市经济对农村的辐射，加大城市人才、智力资源对农村的支持，加大城市科技、教育、医疗等方面对农民的服务。要形成全社会参与新农村建设的激励机制，鼓励各种社会力量投身社会主义新农村建设，引导党政机关、人民团体、企事业单位和社会知名人士、志愿者对乡村进行结对帮扶，加强舆论宣传，努力营造全社会关心、支持、参与建设社会主义新农村的浓厚氛围。</SPAN></FONT><FONT size=3><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <BR></FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">　　</SPAN><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">做好</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> 2006 </FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">年和</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">十一五</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">时期的农业和农村工作，任务艰巨，意义重大。我们要紧密团结在以胡锦涛同志为总书记的党中央周围，高举邓小平理论和</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">“</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">三个代表</SPAN><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">”</FONT></SPAN><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman''">重要思想伟大旗帜，全面贯彻落实科学发展观，解放思想，振奋精神，开拓进取，扎实工作，为建设社会主义新农村而努力奋斗。</SPAN></FONT>', N'hsg', NULL, 42, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (108, N'金华市面向全国公开选拔市规划局副局长公告', N'规章制度', N'&nbsp;&nbsp;&nbsp; 为进一步拓宽选人用人视野，优化领导班子结构，经研究，决定推出18个领导职位进行竞争性选拔[包括副县(处)级领导干部职位7个、“80后”乡镇(街道)党政正职职位11个]。现将面向全国范围公开选拔的市规划局副局长职位(1名)有关事项公告如下：
<P>　　一、选拔范围</P><!--advertisement code begin--><!--advertisement code end-->
<P>　　全国范围内各级党政机关、国有企事业单位中符合选拔条件的人员。</P>
<P>　　二、报考条件和要求</P>
<P>　　1、符合《干部任用条例》规定的基本条件。</P>
<P>　　2、现任党政机关正科级领导职务满1年或副科级领导职务满4年，从事城市规划设计、管理工作5年以上；国有企事业单位报考人员应具有相应的领导职务、任职年限和工作经历。</P>
<P>　　3、全日制大学本科以上学历，具有城市规划相关专业学历或副高以上相关专业技术职务。</P>
<P>　　4、具有国家注册城市规划师资格，熟悉规划专业知识和法律法规，有丰富的城市规划工作经验。</P>
<P>　　5、年龄在45岁以下(1968年1月1日以后出生)。</P>
<P>　　现任县级地方规划局局长职务满1年的，可不受专业、职称和执业资格的限制。任职时间、工作年限均计算到2013年4月30日。</P>
<P>　　三、报名时间和方式</P>
<P>　　1、报名时间：2013年4月7日—11日(11日下午5:00截止)。</P>
<P>　　2、报名方式、要求及选拔程序等相关事宜，请登录金华政府网(www.jinhua.gov.cn)、金华先锋网(www.jhxf.gov.cn)和金华人才网(www.jhrcsc.com)查询具体公告，未尽事宜请与金华市竞争性选拔干部工作办公室直接联系。联系人：黄涨锋；联系电话：(0579)82469304、13867973292。</P>
<P>　　金华市竞争性选拔干部工作办公室</P>
<P>　　2013年4月3日</P>', N'hsg', NULL, 7, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (109, N'温州东片规划建设首个综合交通枢纽', N'规章制度', N'<P align=center><IMG height=238 src="http://www.wenzhou.gov.cn/picture/0/110617045143803.jpg" width=300 border=0></P> 
<META name=ImageEnd>
<P align=center><FONT color=#004080>温州东片综合交通枢纽规划示意图。 （制图/瓯龙）</FONT></P>
<P>　　可媲美上海虹桥综合交通枢纽，在一个交通综合体内即可实现公路、轨道、民航等多种交通方式的高效转换。这样的综合交通枢纽将在温州城市东部崛起。据悉，温州现代化大都市首个综合交通枢纽——温州东片综合交通枢纽规划正在编制中。 </P>
<P>　<STRONG>　目标：无需日晒雨淋即可交通换乘</STRONG></P>
<P>　　综合交通枢纽是将多种交通运输方式在一个集中区域内进行有机整合，实现共同办理客货中转、发送、到达所需的多种运输设施的综合交通体。</P>
<P>　　此次规划的温州东部综合交通枢纽位于瓯江口，在以温州永强机场为核心的30平方公里范围内，将形成融合民航飞机、中长途汽车、BRT公交快线、轨道交通、出租车、普通城市公交、城际公交、水上巴士、慢行系统等交通方式于一体的城市交通综合体。</P>
<P>　　据介绍，预计整个瓯江口区域将形成：四横四纵快速路网、一个机场、一个港口、一个中长途客运中心、两个物流园区、一条疏港铁路、两条轨道、多条BRT（快速公交）线路。届时，各交通元素汇聚于东片综合交通枢纽，形成立体而紧密的衔接点。旅客不用在日晒雨淋中奔波，就能便捷地选择自己所需的交通工具。</P>
<P>　　市交通局相关负责人表示， 东片综合交通枢纽是我市“1650”大都市格局的重要基础设施，也是温州城市由交通通道型向交通枢纽型转变的有效载体。根据市委市政府的指示，该综合枢纽设计要达到“全国领先，全球一流”的水平，体现温州政治、经济、地理特征以及温州城市从滨江时代向滨海时代跨越的城市发展趋势。</P>
<P>　<STRONG>　进展：本月底完成规划送审稿&nbsp;&nbsp;</STRONG></P>
<P>　　据悉，温州东片综合交通枢纽专项规划由上海市政工程设计研究总院(集团)有限公司编制，预计本月底可以完成该规划的送审稿。</P>
<P>　　在编制规划方案前，市交通局深入研究了温州交通现状，邀请上海市政总院及我市相关部门参与交流调研，在吸取上海虹桥综合交通枢纽精华的基础上，结合温州的发展要求和实际情况，形成了初步方案设想，以便把该规划设计得科学、合理、高水平。</P>
<P>　　作为东片综合交通枢纽的重要组成部分，温州机场T2航站楼（新航站楼）建设预计年底前开工，其他交通配套部分后续跟上。</P>
<P>　<STRONG>　意义：为温州大都市建设“撑腰”</STRONG></P>
<P>　　温州已经具备民航、铁路、高速公路、港口等发达的交通方式。然而，我市至今还未形成完善的综合交通枢纽，站场功能单一造成交通转换效率低，很难跟上城市大发展的需求。据预测，到2020年，温州机场年旅客吞吐量将达1000万人次，同时，伴随温州城市东部板块的崛起，城市东部的人流、货流将高度集聚，必须由强大的综合交通枢纽支撑。</P>
<P>　　交通部门表示，如果您对该规划有宝贵建议，可以向交通部门提出，电子邮箱:wzjtglc@163.com。&nbsp;（记者 林乃鹏）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', NULL, 48, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (110, N'钱库镇第六次人口普查工作规划', N'规章制度', N'<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">国务院决定于<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年进行的第六次全国人口普查，是继<SPAN lang=EN-US><FONT size=5>2000</FONT></SPAN>年第五次全国人口普查以来又一次重大的国情国力调查，为了准确及时地完成这次普查任务，遵照国务院、省、市和县政府的通知精神，根据《苍南县第六次人口普查工作规划》的统一要求，并结合本镇的实际情况，制定本工作规划，以指导全镇人口普查工作的开展。<SPAN lang=EN-US><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">一、普查的目的<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查是我国最基本的国情国力调查，是和平时期最大的社会动员。这次普查的主要目的，是查清<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2000</FONT></SPAN>年第五次全国人口普查以来，我国人口在数量、结构、地区分布、受教育程度、迁移流动和居住环境方面的变化情况，为科学制定国民经济和社会发展规划，统筹安排人民的物质和文化生活，实施可持续发展战略，构建社会主义和谐社会，提供科学准确的统计信息支持。对于我镇来说，通过这次人口普查，还可以查清流动人口新情况、新趋势，掌握出生人口实际情况、分析人口老龄化的进展状况等，为研究制定人口发展战略及经济社会发展规划、政策提供依据，并为社会公众提供统计信息服务。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">二、普查的对象、范围和规模<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">普查对象：第六次人口普查对象是指普查标准时点在中华人民共和国境内的自然人以及在中华人民共和国境舛但未定居的中国公居，不包括在中华人民共和国境内短期停留的境外人员。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">普查范围：全镇<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>22</FONT></SPAN>平方公里土地上有人居住的所有区域。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">普查规模：约<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2.2</FONT></SPAN>万个家庭户、集体户，约<SPAN lang=EN-US><FONT size=5>7.5</FONT></SPAN>万现有人口与户籍外出人口。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">普查区的划分和设置：普查区域的划分坚持地域的原则。以村民委员会和居民委员会所辖区域为基础划分普查区。全镇<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>4</FONT></SPAN>个办事处所含的<SPAN lang=EN-US><FONT size=5>44</FONT></SPAN>个村（居）。都各设一个普查区。每个普查区按照一个普查员所能承担的工作量（原则上按<SPAN lang=EN-US><FONT size=5>80-100</FONT></SPAN>户以内），划分成若干个普查小区。各普查小区在地域上不能交叉、重叠和遗漏，所有普查小区连接起来，要完全覆盖全镇。全镇约<SPAN lang=EN-US><FONT size=5>220</FONT></SPAN>个普查小区。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">三、普查标准时间、登记原则和方式<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查标准时点是<?xml:namespace prefix = st1 ns = "urn:schemas-microsoft-com:office:smarttags" /><st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="1" Month="11" Year="2010"><FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>1</FONT></SPAN>日</FONT></st1:chsdate>零时。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查采用按现住地登记的原则。每个人必须在现住地进行登记。普查对象不在户口登记地居住的，户口登记地要登记相应信息。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查以户为单位进行登记，户分为家庭户和集体户。普查登记的方法，采用普查员入户查点询问、当场填报的方式进行。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">四、普查项目和普查组织形式<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查登记的主要内容包括：姓名、性别、年龄、民族、户口登记状况、受教育程度、行业、职业、迁移流动、社会保障、婚姻、生育、死亡、住房情况等。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查表分为《第六次全国人口普查表短表》和《第六次全国人口普查表长表》。普查表长表抽取百分之十的户填报；普查表短表由其余的户填报。<FONT face=仿宋_GB2312><st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="1" Month="11" Year="2009"><SPAN lang=EN-US><FONT size=5>2009</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>1</FONT></SPAN>日</st1:chsdate>至<st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="31" Month="10" Year="2010"><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>10</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>31</FONT></SPAN>日</st1:chsdate></FONT>期间有死亡人口的户，同时填报《第六次全国人口普查死亡人口调查表》。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">依法被判处徒刑、劳动教养（强制隔离戒毒）的人员，由当地公安机关和监狱、劳教机关进行普查，普查表移交乡镇、县人口普查办公室。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">五、普查需要投入的力量<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">根据苍南县第六次全国人口普查领导小组办公室的要求，<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>3</FONT></SPAN>万人以上人口，乡镇普查办需配备<SPAN lang=EN-US><FONT size=5>8-10</FONT></SPAN>名工作人员，办事处配备<SPAN lang=EN-US><FONT size=5>2-3</FONT></SPAN>名工作人员，每个普查区（村、居委会）配备<SPAN lang=EN-US><FONT size=5>2-5</FONT></SPAN>名工作人员，每个普查小区至少配备一名普查员，每个普查区至少一名普查指导员，原则上四至五个普查小区配备一名普查指导员。据此测算，这次人口普查全镇需投入大约在<SPAN lang=EN-US><FONT size=5>370</FONT></SPAN>人左右。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">六、普查的工作步骤<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查分四个主要工作阶段进行：<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">第一阶段为准备阶段，从<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>2</FONT></SPAN>月至<SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>10</FONT></SPAN>月底。主要包括：建立各级普查机构；落实普查经费和办公用房、人员；制定工作规划和流程；召开工作会议全面部署普查工作；进行各项普查试点；筹备普查物资；开展普查宣传动员；编制审核地址码本；培训业务骨干；选调、培训普查指导员和普查员；会员公安部门进行户口整顿；绘制普查地图；进行清查摸底；进行长表的样本抽取；准备普查数据处理工作等。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">第二阶段为普查登记和复查阶段，从<FONT face=仿宋_GB2312><st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="1" Month="11" Year="2010"><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>1</FONT></SPAN>日</st1:chsdate>至<st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="20" Month="11" Year="2010"><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>20</FONT></SPAN>日</st1:chsdate>。主要包括：入户登记；进行复查和事后质量抽查。共中<st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="1" Month="11" Year="2010"><SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>1</FONT></SPAN>日</st1:chsdate>至<SPAN lang=EN-US><FONT size=5>10</FONT></SPAN>日完成全面登记；<st1:chsdate w:st="on" IsROCDate="False" IsLunarDate="False" Day="11" Month="11" Year="2010"><SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>日</st1:chsdate>至<SPAN lang=EN-US><FONT size=5>25</FONT></SPAN>日完成全面复查、验收和上报。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">第三阶段为数据处理阶段，从<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>11</FONT></SPAN>月至<SPAN lang=EN-US><FONT size=5>2011</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>4</FONT></SPAN>月（包括进行快速汇总）。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">第四阶段为资料开发和总结阶段（<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2011</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>5</FONT></SPAN>月）。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 黑体; FONT-SIZE: 16pt">七、普查工作的主要措施<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查是和平是期最大的社会动员，是一项十分庞大、十分复杂的社会系统工程，高质量地完成普查任务十分艰巨。办事处、村（居）必须根据当地的实际情况，采取有效措施保证这次人口普查的顺利进行。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt" lang=EN-US>1</SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">、加强领导。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">办事处、村（居）高度重视是搞好人口普查的关键。各办事处、村（居）要把人口普查工作摆在重要位置，作为<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年重点工作之一，要明确责任，下定决心，按照国家、省、市、县的要求认真准备，科学部署，力争人口普查工作达到较高水平。在清查摸底、登记阶段更应集中力量，全力以赴完成人口普查工作。要及时掌握工作动态，切实解决普查中遇到的种种困难和出现的问题。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt" lang=EN-US>2</SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">、建立、健全各级普查机构。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">办事处、村（居）必须建立人口普查领导小组，确定一位主要负责同志任组长。领导小组下设办公室，负责人口普查的日常事务工作。选调德才兼备，积极负责，工作认真细致的业务骨干从事调查、审核、复查等工作，组织起一支强有力的工作班子。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt" lang=EN-US>3</SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">、组织协调各有关部门的力量，共同搞好人口普查工作。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">人口普查工作是一项庞大的系统工程，涉及面广，需要各部门的相互配合，协同作战，既有统一安排的工作，又有侧重分工。公安部门要根据全省的统一部署，会同各级人口普查机构和计生、民政、卫生等有关部门共同做好户口整顿工作，协调提出查准流动人口，并协助配合人口普查登记阶段的相关工作；民政部门要负责提供婚姻登记信息和死亡火化登记信息等工作；人口计生部门要负责协调制定有利于开展人口普查的相关政策，以及查准出生人口方面的协调配合工作；宣传部门要广泛开展人口普查的宣传教育和动员工作；教育部门要负责协调提出查准学龄人口的有关政策，配合做好宣传动员以及协调在教育系统选调普查员的工作；卫生部门要协助做好在医疗机构出生、死亡人口的相关数据。总之各个部门都要通力合作，群策群力，把人口普查工作搞好。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt" lang=EN-US>4</SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">、开展广泛深入的人口普查宣传教育活动。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">组织各方面宣传力量，运用各种宣传工具，采取形式多样的宣传方式开展广泛宣传活动，使人口普查做到家喻户晓、人人皆知。特别是<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN-US><FONT size=5>10</FONT></SPAN>月份，要组织好声势浩大的宣传月活动。在临近全面开展清查、登记之前，办事处、村（居）要张贴标语，镇普查办在重点路口要有横幅。要大力宣传人民群众积极支持、配合普查登记的情况和广大普查工作者不怕困难、乐于奉献的精神。通过广泛深入的宣传发动，使广大干部群众明白依法如实申报人口情况是每个公民的应尽义务，消除各种疑虑，积极、主动、如实申报各项普查项目。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt" lang=EN-US>5</SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">、切实做好社会力量动员工作。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">发挥社会主义制度的优越性和政治优势，开展广泛的社会动员。要做到全面动员，分类指导，精心组织，逐个落实，使人口普查的繁重任务由社会各界来共同分担。普查指导员和普查员可以从村官、驻村、联村、社会团体、企事业单位借调，也可以从村民委员会、居民委员会干部中选调，或者面向社会招聘。配备的“两员”，必须具备政治素质好、工作责任心强、文化素质高、身体健康、熟悉当地情况等基本条件。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>
<P style="LINE-HEIGHT: 25pt; TEXT-INDENT: 32.3pt; MARGIN: 0cm 0cm 0pt; mso-line-height-rule: exactly" class=MsoNormal><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt" lang=EN-US>6</SPAN></B><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">、采取切实有效的措施，查准流动人口数量。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt">针对我镇人口流动频繁的难点，应采取切实有效的措施：（<FONT face=仿宋_GB2312><SPAN lang=EN-US><FONT size=5>1</FONT></SPAN>）搞好户口整顿工作和清查摸底。摸清人口、住房，特别是外来人口、外出人口、出生人口、死亡人口，人户分离等情况。将摸底数据与有关部门的数进行比较评估。（<SPAN lang=EN-US><FONT size=5>2</FONT></SPAN>）对一些居无定所的流动人员进行专项整治和登记。（<SPAN lang=EN-US><FONT size=5>3</FONT></SPAN>）每个普查小区登记结束后，组织知情人议查，查漏补缺，剔除重复，做到不重不漏的要求。<SPAN lang=EN-US><o:p></o:p></SPAN></FONT></SPAN></P><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt; mso-font-kerning: 1.0pt; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang=EN-US>7</SPAN><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt; mso-font-kerning: 1.0pt; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">、建立质量控制岗位责任制，确保人口普查的质量。</SPAN></B><SPAN style="FONT-FAMILY: 仿宋_GB2312; FONT-SIZE: 16pt; mso-font-kerning: 1.0pt; mso-hansi-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">镇人口普查办公室要成立质量控制组。质量控制组由普查办公室调查业务组牵头，各业务组人员参与，分类负责的方式组成。各办事处、村（居）要切实落实和完成好本单位所负责的工作任务。要发动全体普查工作人员千方百计提高登记质量。同时，要采取各种有效措施（镇政府建立工作考核目标与工作责任制），做到环环控制，步步把关，确保人口普查工作的高质量。</SPAN>', N'hsg', NULL, 73, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (111, N'温家宝主持国务院常务会议 研究部署规范农村土地', N'规章制度', N'&nbsp;&nbsp;&nbsp; 北京１１月１０日电　国务院总理温家宝１０日主持召开国务院常务会议，研究部署规范农村土地整治和城乡建设用地增减挂钩试点工作。
<P>　　会议指出，近年来，各地区开展农村土地整治，有效促进了耕地保护；同时，一些地方开展城乡建设用地增减挂钩试点，对统筹城乡发展发挥了积极作用，但也出现了一些亟须规范的问题。主要是：少数地方片面追求增加城镇建设用地指标，擅自开展城乡建设用地增减挂钩试点或扩大试点范围，擅自扩大挂钩周转指标规模；有的地方违背农民意愿强拆强建，侵害农民利益；挂钩周转指标使用收益分配不规范等。必须采取有力措施，严格规范农村土地整治和城乡建设用地增减挂钩试点，促进其有序健康发展。</P>
<P>　　会议强调，开展农村土地整治，要以促进农民增收、农业增效和农村发展为出发点和落脚点，把维护农民合法权益放在首位，坚持最严格的耕地保护和节约用地制度，坚持群众自愿、因地制宜、量力而行、依法推进，按照统筹规划、整合资源、加大投入、实施田水路林村综合治理的原则，以农田整治为重点，提高高产稳产农田比重和节约集约用地水平。要充分尊重农民意愿，涉及村庄撤并等方面的土地整治，必须由农村集体经济组织和农户自主决定，不得强拆强建。严禁违法调整、收回和强迫流转农民承包地。坚决防止违背农民意愿搞大拆大建、盲目建高楼等现象。</P>
<P>　　会议强调，要严格控制城乡建设用地增减挂钩试点规模和范围。经批准开展城乡建设用地增减挂钩试点的地方要严格按照有关规定，坚持局部试点、封闭运行、规范管理，不得扩大试点范围。农村建设用地整治所腾出的土地首先要复垦为耕地，严禁以整治为名，扩大城镇建设用地规模。对未经批准擅自开展挂钩试点、超出试点范围开展增减挂钩和建设用地置换或擅自扩大挂钩周转指标规模的，要严肃追究有关地方政府负责人及相关人员的责任，并相应扣减土地利用年度计划指标。会议要求各地区、各有关部门加强指导和督促检查，加大对违法违规用地行为的处罚力度，切实抓好落实。</P>
<P>　　会议审议并原则通过《外国企业常驻代表机构登记管理条例（草案）》。草案明确了外国企业常驻代表机构的性质和业务范围，规定了代表机构开展业务活动的规则，完善了登记管理制度和违法行为的法律责任。</P>
<P>　　会议还研究了其他事项。&nbsp;</P>', N'hsg', NULL, 34, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (112, N'钱库杯2012年秋季幼鸽大奖赛竞赛规程', N'规章制度', N'<P><FONT face=Verdana>指导单位：苍南体育局&nbsp; 苍南信鸽协会<BR>主办单位：钱库镇人民政府&nbsp;&nbsp; 协办单位：钱库体育联合会&nbsp;&nbsp; <BR>承办单位：钱库镇体育联合会信鸽协会</FONT></P>
<P><FONT face=Verdana>一、售环对象：苍南信鸽协会会员和养鸽爱好者 </FONT></P>
<P><FONT face=Verdana>二、脚环发放： <BR>&nbsp;&nbsp;&nbsp; 1、 脚环发放总数为1922枚，其中附加50元为983枚。<BR>&nbsp;&nbsp;&nbsp; 2、 脚环销售金额每枚为50元，附加环100元。</FONT></P>
<P><FONT face=Verdana>三、 录取名次及奖金分配 <BR>决赛：总录取名次为100名，附加赛50元录取50名，团体赛3名。 <BR>&nbsp;&nbsp;&nbsp; 冠军13800元，亚军8000元，季军5000元，殿军3500元，第五名2800元，6至10名1700元，11名至20名1100元，21名至40名800元，41名至100各300元。<BR>附加50元：冠军7800元，亚军4800元，季军3500元，殿军2000元。第五名1500元，6至10名1000元，11名至20名700元，21名至50名400元。<BR>&nbsp;&nbsp;&nbsp; 1--10名各发奖杯一座，11名－80名发奖牌。<BR>&nbsp;&nbsp;&nbsp; 本赛次团体赛规定，本次参加团体赛鸽友务必买脚环30个起方可参加团体赛。<BR>团体赛冠军2500元，亚军1500元，季军1000元各发奖杯一座录取方法，以决赛进名次多为胜，相同羽数取前名次。</FONT></P>
<P><FONT face=Verdana>四、预决赛时间及地点 <BR>&nbsp;&nbsp;&nbsp; 1、决赛地点与苍大赛相同<BR>&nbsp;&nbsp;&nbsp; 2、预赛时间和苍大赛相同、决赛在苍大赛后3天举行（雨天顺延）。<BR>&nbsp;&nbsp;&nbsp; 3、本大奖赛协会组织训放，路费自负，自由参加，预决赛上笼非本大赛脚环和作废脚环一律不得带放，若个别鸽友带放上笼一经发现将取消该会员这次比赛的所有成绩，决赛空距以钱库镇人民政府为准（500公里左右），预决赛免费放鸽。<BR>&nbsp;&nbsp;&nbsp; 4、比赛采用信鸽声讯热线和安捷电子扫描系统方法报到，其他均无效，如（错拨、漏扫）不符规定者一律无效，安捷电子扫描系统一律不读机，前10名扫描后须持鸽验证。 <BR>5、决赛报到限期为次日下午18点整，获奖鸽前10名“测量空距”计算到户。 <BR>&nbsp;&nbsp;&nbsp; 6、拍卖时间为决赛后15天左右，获奖鸽全部举行颁奖、拍卖，提取拍卖鸽10%当作开 支费用。不参加拍卖者一律扣奖金30%，获奖鸽死亡（以脚环为证）按前一名鸽拍卖价提取。 <BR>&nbsp;&nbsp;&nbsp; 7、本次大奖赛如果决赛当天晚上19:00还不到鸽，奖金的90%由参加决赛鸽平分，如果获奖鸽少于3羽（包括3羽）本鸽获得名次奖金，剩余奖金由决赛上笼鸽平分，若获奖鸽超过3羽，奖金由获奖鸽平分。<BR>8、本赛事由组委会负责组织，赛事所有的事项将有组委会商议表决。<BR>组委会顾问：徐焕实　 <BR>主&nbsp; 任：陈福品　　 副主任：陈瑞豪&nbsp; 章国建<BR>委&nbsp; 员：陈芝文　何献敏&nbsp; 项延游<BR>竞翔组：林庆祥 林天将 项方雷 卢声村 方介校 金亦栋<BR>9、本章程由钱库信鸽协会负责解释。</FONT></P>
<P align=right><FONT face=Verdana>钱库镇体育联合会<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 钱库信鸽协会<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012年8月14日</FONT></P>
<P><FONT face=Verdana></FONT>&nbsp;</P>
<P><FONT face=Verdana></FONT>&nbsp;</P>
<P><FONT face=Verdana></FONT>&nbsp;</P>
<P><FONT face=Verdana>以下号码有效：000001-000120、000131-000300、000306-000948、000950-0001069<BR>001071-001078、001081-001120、001126-001138、001140-001150、001161-001167<BR>001169-001212、001214-001300、001303-001305、001310-001550、001571-001580<BR>001591-001822、001827-002000<BR></FONT></P>', N'hsg', NULL, 5, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (113, N'《温州市饭店与餐饮业行为规范》出台', N'规章制度', N'&nbsp;&nbsp;&nbsp; 算错账说声“对不起”不管用了。11月17日，记者从市消保委了解到，《温州市饭店与餐饮业行为规范》在多方努力下出台。该《规范》明确规定，饭店与餐饮业经营者要免费提供消毒餐具，经营者不得草率结账，若出错，要向消费者额外补偿此项消费金额的5%。 
<P>　　据市消保委工作人员介绍，此《规范》是根据《消法》、《食品安全法》等相关法律法规，并结合我市饭店与餐饮业实际，由市消保委、市饭店与餐饮行业协会共同牵头，各行业协会成员共同参与，经4个月的反复调研、集体讨论后才出台的。</P>
<P>　　“不但明确了消费者的权益、经营者的义务、消费者的投诉与处理等基本内容，还对当前消费争议较大、处理难度较高、法律法规尚处空白的热点及难点问题做出明确规定。”参与出台该《规范》的工作人员告诉记者，此次主要明确规定了6个方面：</P>
<P>　　<FONT face=楷体_GB2312>1.经营者不得另行收取餐具消毒费，要求各饭店、餐饮企业经营者的消毒措施要规范到位，提供消费者使用的餐具、炊具和盛放直接入口食品的器皿，使用前必须洗净、消毒，充分保证消费者的利益；</FONT></P>
<P><FONT face=楷体_GB2312>　　2. 经营者不得草率结账，在结账时应要求消费者如实核对账单，若草率结错账的，将额外给予此项消费（不包括酒水）金额5%的补偿；</FONT></P>
<P><FONT face=楷体_GB2312>　　3. 经营者实行“订房、订餐合同”制度，在接到消费者的客房、酒席预订后，必须订立行业统一的“订房、订餐合同”，合同格式应由行业协会制定，并报市消保委备案；</FONT></P>
<P><FONT face=楷体_GB2312>　　4.经营者应备有应急电源，若遇停电，应保证在半小时内恢复正常或提供临时照明；</FONT></P>
<P><FONT face=楷体_GB2312>　　5.经营者提供服务应符合保障财产安全要求，应在服务场所醒目位置设置安全告示牌，并免费向消费者提供保管箱，随时提醒消费者将贵重物品存入保管箱；</FONT></P>
<P><FONT face=楷体_GB2312>　　6. 经营者负有妥善处理消费者投诉的义务，应设立专门机构，负责处理消费争议或纠纷。</FONT></P>
<P>　　据了解，此行规的出台，是市消保委加强社会监督职能，推动行业协会加强行业自律的一次重要尝试，它将有利于提高全市饭店与餐饮业整体服务质量，减少消费纠纷的发生，更好地维护消费者的合法权益。</P>', N'hsg', NULL, 79, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (114, N'江苏拟立法规定老人有权拒绝子女经济资助要求', N'规章制度', N'<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG><FONT color=navy>江苏拟立法禁止子女“啃老” </FONT></STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG><FONT color=navy>“江苏版”老年法昨二审，有关人士称“子女常回家看看”为倡导性规定</FONT></STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;已经成年，却还成天赖在家中，啃老爸老妈的老本，这样的人被称为“啃老族”，被“啃”的父母即便有怨言，通常也无可奈何。今后，法律将为这些被啃父母撑腰，对“啃老”的子女说“不”。昨日，江苏省十一届人大常委会第二十次会议开幕，就《江苏省老年人权益保障条例（草案修改稿）》进行了审议。记者发现，跟一审的草案相比，修改稿增了对“啃老”现象的规定：“有独立生活能力的成年子女要求老年人经济资助的，老年人有权拒绝。子女或者其他亲属不得以物业或者其他理由，骗取、克扣或者强行索取老年人的财物”。</P>
<P><STRONG><FONT color=blue>&nbsp;&nbsp;&nbsp;&nbsp;变化 老人有权对“啃老”的子女“说不”</FONT></STRONG></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;对比去年10月中旬向社会征求意见的《江苏省老年人权益保障条例（草案）》，记者发现，昨日二审的修改稿，最大的一个变化就是增加了对“啃老”现象的规定。修改稿第十五条规定：“有独立生活能力的成年子女要求老年人经济资助的，老年人有权拒绝。子女或者其他亲属不得以无业或者其他理由，骗取、克扣或者强行索取老年人的财物。老年人有依法继承和接受赠与的权利。子女或者其他亲属不得侵吞、抢夺、转移、隐匿或者破坏应当由老年人继承或者接受赠与的财物。”</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;俗话说，“清官难断家务事”，对于“啃老”这种“家务事”，如今上升到法律层面加以规定，这缘于现实的迫切需要。南京市民徐阿姨对此深有体会。“我儿子都32岁了，啥毛病都没有，可就是不找工作，儿媳也不好好上班，小两口就住在我家，全靠我们老两口养着。”一谈到这些，徐阿姨就直摇头。“他们既不出去找工作，也不说什么时候搬出去，吃喝玩乐都让我们负责，尤其是出去玩没钱了，心安理得地跟我们要钱花，不给的话，就把家里翻个底朝天。”</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;其实，啃老族不少见，还发生过“啃老”的子女将父母砍成重伤的情况。据中国老龄科研中心统计，在城市里，有30﹪的年轻人靠“啃老”过活，65﹪的家庭存在“啃老”问题。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;若违反这一规定，要承担什么责任？省老年法修改稿第五十条明确规定：“家庭成员盗窃、诈骗、抢夺、勒索、故意毁坏老年人财物，情节较轻的，依照《中华人民共和国治安管理处罚法》的有关规定处罚；构成犯罪的，依法追究刑事责任。”</P>', N'hsg', NULL, 89, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (115, N'陈运泰委员：“十二五”规划草案取消地震预测不妥', N'规章制度', N'&nbsp;&nbsp;&nbsp;&nbsp; 著名地球物理学家、全国政协委员陈运泰院士在接受中国青年报记者采访时说，目前社会上流行的一种“地震不能预测”的说法在科学上并无定论。他还说，我们不能因为地震预测难度很大，就放弃这方面的努力。
<P>&nbsp;&nbsp;&nbsp;&nbsp;2008年汶川地震和2010年玉树地震，使我国广大公众更为关注地震预测问题。一种流行的说法是，地震是不能预测的。对此，曾经长期担任中国地震局地球物理研究所所长的北京大学地球与空间科学学院名誉院长、中国科学院院士陈运泰表示，这是从一个极端走到了另外一个极端。在上世纪70年代，经历过几次成功的地震预测预报，国内外不少地震学家、包括一些顶级的地震学家认为地震预测已经“过关”，像气象预报那样进行常规的地震预报已指日可待，十分乐观。后来经历一次又一次大的地震没有预测出来，相当一部分地震学家又走到了另外一个极端，认为地震是永远不能预测的，十分悲观。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;“地震是不是永远不能预测，在科学上是一个没有定论的问题，是不能靠‘少数服从多数’就可以解决的问题。”陈运泰说，国际上对于地震预测尽管存在不同看法，但普遍还是承认，地震长期预测还是有可行的办法的，中期预测也有成功的例子，争论的焦点是短（期）临（震）预测。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;陈运泰说，2009年4月6日，意大利拉奎拉市发生6.3级地震，这次地震造成了308人死亡。由于意大利科学家没有预测出这次地震，便被告上法庭，至今官司未了。汶川地震和玉树地震发生后，有人把地震短临预测没有过关简单地说成是地震不能预测，把科学上现在还不能预测说成是地震永远不能预测，甚至把地震预测与抗震设防人为地割裂开或对立起来，造成不要搞地震预测、只要把房子盖得好一点就可达到防震减灾的目的。实际上，造成地震灾害的因素很多，地震的大小、震源的深度、震源破裂的特性、土层条件、地形地貌、地震发生的时间、当然还有建筑物的质量，等等，都是影响地震灾害的因素。地震灾害并不与震级简单地成正比。再富裕的国家如美国、日本，也不会把所有的房子盖成能抗12度（烈度的最大值）。要因地制宜，要考虑到建筑物的使用期限内可能会发生多大的地震，这就离不开地震的中长期预测。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;针对这种说法，他举了最近的一个例子：当地时间2010年9月5日，新西兰克赖斯特彻奇市附近发生7.1级地震，主要是由于地震震源深度较深（33公里），使得人员伤亡大大减少。当时网上议论很多，说是这是因为西方先进国家房子抗震性能好，所以不搞地震预报，只要把房子盖好就行了。这听起来好像很有道理。结果今年2月22日当地又发生了6.3级地震，震级比前一次低得多，房子还是那些房子，但是因为这次地震的震源深度较上一次浅得多（5公里），房屋倒塌和人员伤亡比上次多得多。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;“不能把抗震设防与地震预测割裂开或对立起来。提高震灾防御能力既要靠抗震设防，也离不开地震预测，当然更不等于简单地把房子盖好一点。”陈运泰说。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;在全国政协会议上审读我国“十二五”规划纲要草案时，陈运泰委员注意到，草案里在谈到防灾减灾体系建设问题上，是这样表述的：“提高地震监测分析与震灾防御能力。”他指出，按照我国的《防震减灾法》，“预测”不应被“分析”所取代。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;这位地球物理学家建议，把“十二五”规划纲要草案中的“提高地震监测分析与震灾防御能力”，改为“提高地震监测、预报、预警与震灾防御能力”。因为防灾减灾能力的提高离不开地震预测预报。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;陈运泰对记者说，地震预测的确是个科学难题，不能奢望在三年五年之内取得突破性进展，不能苛求科学家在短时期内实现地震预测的目标。他说：“有一点是现在就可以预测的：这就是如果不做地震预测研究，那就永远预测不了地震；如果因为地震预测很难就放弃，在国家规划里也放弃，从长远看，损失将会是非常大的。”</P>', N'hsg', NULL, 20, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (116, N'中华人民共和国文物保护法', N'规章制度', N'<DIV align=center><B>中华人民共和国文物保护法</B></DIV>
<DIV align=center>（2002年10月28日第九届全国人民代表大会常务委员会第三十次会议通过） </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left>第一章 总 则 </DIV>
<DIV align=left>第二章 不可移动文物 </DIV>
<DIV align=left>第三章 考古发掘 </DIV>
<DIV align=left>第四章 馆藏文物 </DIV>
<DIV align=left>第五章 民间收藏文物 </DIV>
<DIV align=left>第六章 文物出境进境 </DIV>
<DIV align=left>第七章 法律责任 </DIV>
<DIV align=left>第八章 附 则 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第一章 总 则</B> </DIV>
<DIV align=left>第一条 为了加强对文物的保护，继承中华民族优秀的历史文化遗产，促进科学研究工作，进行爱国主义和革命传统教育，建设社会主义精神文明和物质文明，根据宪法，制定本法。 </DIV>
<DIV align=left>第二条 在中华人民共和国境内，下列文物受国家保护： </DIV>
<DIV align=left>（一）具有历史、艺术、科学价值的古文化遗址、古墓葬、古建筑、石窟寺和石刻、壁画； </DIV>
<DIV align=left>（二）与重大历史事件、革命运动或者著名人物有关的以及具有重要纪念意义、教育意义或者史料价值的近代现代重要史迹、实物、代表性建筑； </DIV>
<DIV align=left>（三）历史上各时代珍贵的艺术品、工艺美术品； </DIV>
<DIV align=left>（四）历史上各时代重要的文献资料以及具有历史、艺术、科学价值的手稿和图书资料等； </DIV>
<DIV align=left>（五）反映历史上各时代、各民族社会制度、社会生产、社会生活的代表性实物。 </DIV>
<DIV align=left>文物认定的标准和办法由国务院文物行政部门制定，并报国务院批准。 </DIV>
<DIV align=left>具有科学价值的古脊椎动物化石和古人类化石同文物一样受国家保护。 </DIV>
<DIV align=left>第三条 古文化遗址、古墓葬、古建筑、石窟寺、石刻、壁画、近代现代重要史迹和代表性建筑等不可移动文物，根据它们的历史、艺术、科学价值，可以分别确定为全国重点文物保护单位，省级文物保护单位，市、县级文物保护单位。 </DIV>
<DIV align=left>历史上各时代重要实物、艺术品、文献、手稿、图书资料、代表性实物等可移动文物，分为珍贵文物和一般文物；珍贵文物分为一级文物、二级文物、三级文物。 </DIV>
<DIV align=left>第四条 文物工作贯彻保护为主、抢救第一、合理利用、加强管理的方针。 </DIV>
<DIV align=left>第五条 中华人民共和国境内地下、内水和领海中遗存的一切文物，属于国家所有。 </DIV>
<DIV align=left>古文化遗址、古墓葬、石窟寺属于国家所有。国家指定保护的纪念建筑物、古建筑、石刻、壁画、近代现代代表性建筑等不可移动文物，除国家另有规定的以外，属于国家所有。 </DIV>
<DIV align=left>国有不可移动文物的所有权不因其所依附的土地所有权或者使用权的改变而改变。 </DIV>
<DIV align=left>下列可移动文物，属于国家所有： </DIV>
<DIV align=left>（一）中国境内出土的文物，国家另有规定的除外； </DIV>
<DIV align=left>（二）国有文物收藏单位以及其他国家机关、部队和国有企业、事业组织等收藏、保管的文物； </DIV>
<DIV align=left>（三）国家征集、购买的文物； </DIV>
<DIV align=left>（四）公民、法人和其他组织捐赠给国家的文物； </DIV>
<DIV align=left>（五）法律规定属于国家所有的其他文物。 </DIV>
<DIV align=left>属于国家所有的可移动文物的所有权不因其保管、收藏单位的终止或者变更而改变。 </DIV>
<DIV align=left>国有文物所有权受法律保护，不容侵犯。 </DIV>
<DIV align=left>第六条 属于集体所有和私人所有的纪念建筑物、古建筑和祖传文物以及依法取得的其他文物，其所有权受法律保护。文物的所有者必须遵守国家有关文物保护的法律、法规的规定。 </DIV>
<DIV align=left>第七条 一切机关、组织和个人都有依法保护文物的义务。 </DIV>
<DIV align=left>第八条 国务院文物行政部门主管全国文物保护工作。 </DIV>
<DIV align=left>地方各级人民政府负责本行政区域内的文物保护工作。县级以上地方人民政府承担文物保护工作的部门对本行政区域内的文物保护实施监督管理。 </DIV>
<DIV align=left>县级以上人民政府有关行政部门在各自的职责范围内，负责有关的文物保护工作。 </DIV>
<DIV align=left>第九条 各级人民政府应当重视文物保护，正确处理经济建设、社会发展与文物保护的关系，确保文物安全。 </DIV>
<DIV align=left>基本建设、旅游发展必须遵守文物保护工作的方针，其活动不得对文物造成损害。 </DIV>
<DIV align=left>公安机关、工商行政管理部门、海关、城乡建设规划部门和其他有关国家机关，应当依法认真履行所承担的保护文物的职责，维护文物管理秩序。 </DIV>
<DIV align=left>第十条 国家发展文物保护事业。县级以上人民政府应当将文物保护事业纳入本级国民经济和社会发展规划，所需经费列入本级财政预算。 </DIV>
<DIV align=left>国家用于文物保护的财政拨款随着财政收入增长而增加。 </DIV>
<DIV align=left>国有博物馆、纪念馆、文物保护单位等的事业性收入，专门用于文物保护，任何单位或者个人不得侵占、挪用。 </DIV>
<DIV align=left>国家鼓励通过捐赠等方式设立文物保护社会基金，专门用于文物保护，任何单位或者个人不得侵占、挪用。 </DIV>
<DIV align=left>第十一条 文物是不可再生的文化资源。国家加强文物保护的宣传教育，增强全民文物保护的意识，鼓励文物保护的科学研究，提高文物保护的科学技术水平。 </DIV>
<DIV align=left>第十二条 有下列事迹的单位或者个人，由国家给予精神鼓励或者物质奖励： </DIV>
<DIV align=left>（一）认真执行文物保护法律、法规，保护文物成绩显著的； </DIV>
<DIV align=left>（二）为保护文物与违法犯罪行为作坚决斗争的； </DIV>
<DIV align=left>（三）将个人收藏的重要文物捐献给国家或者为文物保护事业作出捐赠的； </DIV>
<DIV align=left>（四）发现文物及时上报或者上交，使文物得到保护的； </DIV>
<DIV align=left>（五）在考古发掘工作中作出重大贡献的； </DIV>
<DIV align=left>（六）在文物保护科学技术方面有重要发明创造或者其他重要贡献的； </DIV>
<DIV align=left>（七）在文物面临破坏危险时，抢救文物有功的； </DIV>
<DIV align=left>（八）长期从事文物工作，作出显著成绩的。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第二章 不可移动文物 </B><B></B></DIV>
<DIV align=left>第十三条 国务院文物行政部门在省级、市、县级文物保护单位中，选择具有重大历史、艺术、科学价值的确定为全国重点文物保护单位，或者直接确定为全国重点文物保护单位，报国务院核定公布。 </DIV>
<DIV align=left>省级文物保护单位，由省、自治区、直辖市人民政府核定公布，并报国务院备案。 </DIV>
<DIV align=left>市级和县级文物保护单位，分别由设区的市、自治州和县级人民政府核定公布，并报省、自治区、直辖市人民政府备案。 </DIV>
<DIV align=left>尚未核定公布为文物保护单位的不可移动文物，由县级人民政府文物行政部门予以登记并公布。 </DIV>
<DIV align=left>第十四条 保存文物特别丰富并且具有重大历史价值或者革命纪念意义的城市，由国务院核定公布为历史文化名城。 </DIV>
<DIV align=left>保存文物特别丰富并且具有重大历史价值或者革命纪念意义的城镇、街道、村庄，由省、自治区、直辖市人民政府核定公布为历史文化街区、村镇，并报国务院备案。 </DIV>
<DIV align=left>历史文化名城和历史文化街区、村镇所在地的县级以上地方人民政府应当组织编制专门的历史文化名城和历史文化街区、村镇保护规划，并纳入城市总体规划。 </DIV>
<DIV align=left>历史文化名城和历史文化街区、村镇的保护办法，由国务院制定。 </DIV>
<DIV align=left>第十五条 各级文物保护单位，分别由省、自治区、直辖市人民政府和市、县级人民政府划定必要的保护范围，作出标志说明，建立记录档案，并区别情况分别设置专门机构或者专人负责管理。全国重点文物保护单位的保护范围和记录档案，由省、自治区、直辖市人民政府文物行政部门报国务院文物行政部门备案。 </DIV>
<DIV align=left>县级以上地方人民政府文物行政部门应当根据不同文物的保护需要，制定文物保护单位和未核定为文物保护单位的不可移动文物的具体保护措施，并公告施行。 </DIV>
<DIV align=left>第十六条 各级人民政府制定城乡建设规划，应当根据文物保护的需要，事先由城乡建设规划部门会同文物行政部门商定对本行政区域内各级文物保护单位的保护措施，并纳入规划。 </DIV>
<DIV align=left>第十七条 文物保护单位的保护范围内不得进行其他建设工程或者爆破、钻探、挖掘等作业。但是，因特殊情况需要在文物保护单位的保护范围内进行其他建设工程或者爆破、钻探、挖掘等作业的，必须保证文物保护单位的安全，并经核定公布该文物保护单位的人民政府批准，在批准前应当征得上一级人民政府文物行政部门同意；在全国重点文物保护单位的保护范围内进行其他建设工程或者爆破、钻探、挖掘等作业的，必须经省、自治区、直辖市人民政府批准，在批准前应当征得国务院文物行政部门同意。 </DIV>
<DIV align=left>第十八条 根据保护文物的实际需要，经省、自治区、直辖市人民政府批准，可以在文物保护单位的周围划出一定的建设控制地带，并予以公布。 </DIV>
<DIV align=left>在文物保护单位的建设控制地带内进行建设工程，不得破坏文物保护单位的历史风貌；工程设计方案应当根据文物保护单位的级别，经相应的文物行政部门同意后，报城乡建设规划部门批准。 </DIV>
<DIV align=left>第十九条 在文物保护单位的保护范围和建设控制地带内，不得建设污染文物保护单位及其环境的设施，不得进行可能影响文物保护单位安全及其环境的活动。对已有的污染文物保护单位及其环境的设施，应当限期治理。 </DIV>
<DIV align=left>第二十条 建设工程选址，应当尽可能避开不可移动文物；因特殊情况不能避开的，对文物保护单位应当尽可能实施原址保护。 </DIV>
<DIV align=left>实施原址保护的，建设单位应当事先确定保护措施，根据文物保护单位的级别报相应的文物行政部门批准，并将保护措施列入可行性研究报告或者设计任务书。 </DIV>
<DIV align=left>无法实施原址保护，必须迁移异地保护或者拆除的，应当报省、自治区、直辖市人民政府批准；迁移或者拆除省级文物保护单位的，批准前须征得国务院文物行政部门同意。全国重点文物保护单位不得拆除；需要迁移的，须由省、自治区、直辖市人民政府报国务院批准。 </DIV>
<DIV align=left>依照前款规定拆除的国有不可移动文物中具有收藏价值的壁画、雕塑、建筑构件等，由文物行政部门指定的文物收藏单位收藏。 </DIV>
<DIV align=left>本条规定的原址保护、迁移、拆除所需费用，由建设单位列入建设工程预算。 </DIV>
<DIV align=left>第二十一条 国有不可移动文物由使用人负责修缮、保养；非国有不可移动文物由所有人负责修缮、保养。非国有不可移动文物有损毁危险，所有人不具备修缮能力的，当地人民政府应当给予帮助；所有人具备修缮能力而拒不依法履行修缮义务的，县级以上人民政府可以给予抢救修缮，所需费用由所有人负担。 </DIV>
<DIV align=left>对文物保护单位进行修缮，应当根据文物保护单位的级别报相应的文物行政部门批准；对未核定为文物保护单位的不可移动文物进行修缮，应当报登记的县级人民政府文物行政部门批准。 </DIV>
<DIV align=left>文物保护单位的修缮、迁移、重建，由取得文物保护工程资质证书的单位承担。 </DIV>
<DIV align=left>对不可移动文物进行修缮、保养、迁移，必须遵守不改变文物原状的原则。 </DIV>
<DIV align=left>第二十二条 不可移动文物已经全部毁坏的，应当实施遗址保护，不得在原址重建。但是，因特殊情况需要在原址重建的，由省、自治区、直辖市人民政府文物行政部门征得国务院文物行政部门同意后，报省、自治区、直辖市人民政府批准；全国重点文物保护单位需要在原址重建的，由省、自治区、直辖市人民政府报国务院批准。 </DIV>
<DIV align=left>第二十三条 核定为文物保护单位的属于国家所有的纪念建筑物或者古建筑，除可以建立博物馆、保管所或者辟为参观游览场所外，如果必须作其他用途的，应当经核定公布该文物保护单位的人民政府文物行政部门征得上一级文物行政部门同意后，报核定公布该文物保护单位的人民政府批准；全国重点文物保护单位作其他用途的，应当由省、自治区、直辖市人民政府报国务院批准。国有未核定为文物保护单位的不可移动文物作其他用途的，应当报告县级人民政府文物行政部门。 </DIV>
<DIV align=left>第二十四条 国有不可移动文物不得转让、抵押。建立博物馆、保管所或者辟为参观游览场所的国有文物保护单位，不得作为企业资产经营。 </DIV>
<DIV align=left>第二十五条 非国有不可移动文物不得转让、抵押给外国人。 </DIV>
<DIV align=left>非国有不可移动文物转让、抵押或者改变用途的，应当根据其级别报相应的文物行政部门备案；由当地人民政府出资帮助修缮的，应当报相应的文物行政部门批准。 </DIV>
<DIV align=left>第二十六条 使用不可移动文物，必须遵守不改变文物原状的原则，负责保护建筑物及其附属文物的安全，不得损毁、改建、添建或者拆除不可移动文物。 </DIV>
<DIV align=left>对危害文物保护单位安全、破坏文物保护单位历史风貌的建筑物、构筑物，当地人民政府应当及时调查处理，必要时，对该建筑物、构筑物予以拆迁。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第三章 考古发掘 </B><B></B></DIV>
<DIV align=left>第二十七条 一切考古发掘工作，必须履行报批手续；从事考古发掘的单位，应当经国务院文物行政部门批准。 </DIV>
<DIV align=left>地下埋藏的文物，任何单位或者个人都不得私自发掘。 </DIV>
<DIV align=left>第二十八条 从事考古发掘的单位，为了科学研究进行考古发掘，应当提出发掘计划，报国务院文物行政部门批准；对全国重点文物保护单位的考古发掘计划，应当经国务院文物行政部门审核后报国务院批准。国务院文物行政部门在批准或者审核前，应当征求社会科学研究机构及其他科研机构和有关专家的意见。 </DIV>
<DIV align=left>第二十九条 进行大型基本建设工程，建设单位应当事先报请省、自治区、直辖市人民政府文物行政部门组织从事考古发掘的单位在工程范围内有可能埋藏文物的地方进行考古调查、勘探。 </DIV>
<DIV align=left>考古调查、勘探中发现文物的，由省、自治区、直辖市人民政府文物行政部门根据文物保护的要求会同建设单位共同商定保护措施；遇有重要发现的，由省、自治区、直辖市人民政府文物行政部门及时报国务院文物行政部门处理。 </DIV>
<DIV align=left>第三十条 需要配合建设工程进行的考古发掘工作，应当由省、自治区、直辖市文物行政部门在勘探工作的基础上提出发掘计划，报国务院文物行政部门批准。国务院文物行政部门在批准前，应当征求社会科学研究机构及其他科研机构和有关专家的意见。 </DIV>
<DIV align=left>确因建设工期紧迫或者有自然破坏危险，对古文化遗址、古墓葬急需进行抢救发掘的，由省、自治区、直辖市人民政府文物行政部门组织发掘，并同时补办审批手续。 </DIV>
<DIV align=left>第三十一条 凡因进行基本建设和生产建设需要的考古调查、勘探、发掘，所需费用由建设单位列入建设工程预算。 </DIV>
<DIV align=left>第三十二条 在进行建设工程或者在农业生产中，任何单位或者个人发现文物，应当保护现场，立即报告当地文物行政部门，文物行政部门接到报告后，如无特殊情况，应当在二十四小时内赶赴现场，并在七日内提出处理意见。文物行政部门可以报请当地人民政府通知公安机关协助保护现场；发现重要文物的，应当立即上报国务院文物行政部门，国务院文物行政部门应当在接到报告后十五日内提出处理意见。 </DIV>
<DIV align=left>依照前款规定发现的文物属于国家所有，任何单位或者个人不得哄抢、私分、藏匿。 </DIV>
<DIV align=left>第三十三条 非经国务院文物行政部门报国务院特别许可，任何外国人或者外国团体不得在中华人民共和国境内进行考古调查、勘探、发掘。 </DIV>
<DIV align=left>第三十四条 考古调查、勘探、发掘的结果，应当报告国务院文物行政部门和省、自治区、直辖市人民政府文物行政部门。 </DIV>
<DIV align=left>考古发掘的文物，应当登记造册，妥善保管，按照国家有关规定移交给由省、自治区、直辖市人民政府文物行政部门或者国务院文物行政部门指定的国有博物馆、图书馆或者其他国有收藏文物的单位收藏。经省、自治区、直辖市人民政府文物行政部门或者国务院文物行政部门批准，从事考古发掘的单位可以保留少量出土文物作为科研标本。 </DIV>
<DIV align=left>考古发掘的文物，任何单位或者个人不得侵占。 </DIV>
<DIV align=left>第三十五条 根据保证文物安全、进行科学研究和充分发挥文物作用的需要，省、自治区、直辖市人民政府文物行政部门经本级人民政府批准，可以调用本行政区域内的出土文物；国务院文物行政部门经国务院批准，可以调用全国的重要出土文物。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第四章 馆藏文物 </B><B></B></DIV>
<DIV align=left>第三十六条 博物馆、图书馆和其他文物收藏单位对收藏的文物，必须区分文物等级，设置藏品档案，建立严格的管理制度，并报主管的文物行政部门备案。 </DIV>
<DIV align=left>县级以上地方人民政府文物行政部门应当分别建立本行政区域内的馆藏文物档案；国务院文物行政部门应当建立国家一级文物藏品档案和其主管的国有文物收藏单位馆藏文物档案。 </DIV>
<DIV align=left>第三十七条 文物收藏单位可以通过下列方式取得文物： </DIV>
<DIV align=left>（一）购买； </DIV>
<DIV align=left>（二）接受捐赠； </DIV>
<DIV align=left>（三）依法交换； </DIV>
<DIV align=left>（四）法律、行政法规规定的其他方式。 </DIV>
<DIV align=left>国有文物收藏单位还可以通过文物行政部门指定保管或者调拨方式取得文物。 </DIV>
<DIV align=left>第三十八条 文物收藏单位应当根据馆藏文物的保护需要，按照国家有关规定建立、健全管理制度，并报主管的文物行政部门备案。未经批准，任何单位或者个人不得调取馆藏文物。 </DIV>
<DIV align=left>文物收藏单位的法定代表人对馆藏文物的安全负责。国有文物收藏单位的法定代表人离任时，应当按照馆藏文物档案办理馆藏文物移交手续。 </DIV>
<DIV align=left>第三十九条 国务院文物行政部门可以调拨全国的国有馆藏文物。省、自治区、直辖市人民政府文物行政部门可以调拨本行政区域内其主管的国有文物收藏单位馆藏文物；调拨国有馆藏一级文物，应当报国务院文物行政部门备案。 </DIV>
<DIV align=left>国有文物收藏单位可以申请调拨国有馆藏文物。 </DIV>
<DIV align=left>第四十条 文物收藏单位应当充分发挥馆藏文物的作用，通过举办展览、科学研究等活动，加强对中华民族优秀的历史文化和革命传统的宣传教育。 </DIV>
<DIV align=left>国有文物收藏单位之间因举办展览、科学研究等需借用馆藏文物的，应当报主管的文物行政部门备案；借用馆藏一级文物，应当经国务院文物行政部门批准。 </DIV>
<DIV align=left>非国有文物收藏单位和其他单位举办展览需借用国有馆藏文物的，应当报主管的文物行政部门批准；借用国有馆藏一级文物，应当经国务院文物行政部门批准。 </DIV>
<DIV align=left>文物收藏单位之间借用文物的最长期限不得超过三年。 </DIV>
<DIV align=left>第四十一条 已经建立馆藏文物档案的国有文物收藏单位，经省、自治区、直辖市人民政府文物行政部门批准，并报国务院文物行政部门备案，其馆藏文物可以在国有文物收藏单位之间交换；交换馆藏一级文物的，必须经国务院文物行政部门批准。 </DIV>
<DIV align=left>第四十二条 未建立馆藏文物档案的国有文物收藏单位，不得依照本法第四十条、第四十一条的规定处置其馆藏文物。 </DIV>
<DIV align=left>第四十三条 依法调拨、交换、借用国有馆藏文物，取得文物的文物收藏单位可以对提供文物的文物收藏单位给予合理补偿，具体管理办法由国务院文物行政部门制定。 </DIV>
<DIV align=left>国有文物收藏单位调拨、交换、出借文物所得的补偿费用，必须用于改善文物的收藏条件和收集新的文物，不得挪作他用；任何单位或者个人不得侵占。 </DIV>
<DIV align=left>调拨、交换、借用的文物必须严格保管，不得丢失、损毁。 </DIV>
<DIV align=left>第四十四条 禁止国有文物收藏单位将馆藏文物赠与、出租或者出售给其他单位、个人。 </DIV>
<DIV align=left>第四十五条 国有文物收藏单位不再收藏的文物的处置办法，由国务院另行制定。 </DIV>
<DIV align=left>第四十六条 修复馆藏文物，不得改变馆藏文物的原状；复制、拍摄、拓印馆藏文物，不得对馆藏文物造成损害。具体管理办法由国务院制定。 </DIV>
<DIV align=left>不可移动文物的单体文物的修复、复制、拍摄、拓印，适用前款规定。 </DIV>
<DIV align=left>第四十七条 博物馆、图书馆和其他收藏文物的单位应当按照国家有关规定配备防火、防盗、防自然损坏的设施，确保馆藏文物的安全。 </DIV>
<DIV align=left>第四十八条 馆藏一级文物损毁的，应当报国务院文物行政部门核查处理。其他馆藏文物损毁的，应当报省、自治区、直辖市人民政府文物行政部门核查处理；省、自治区、直辖市人民政府文物行政部门应当将核查处理结果报国务院文物行政部门备案。 </DIV>
<DIV align=left>馆藏文物被盗、被抢或者丢失的，文物收藏单位应当立即向公安机关报案，并同时向主管的文物行政部门报告。 </DIV>
<DIV align=left>第四十九条 文物行政部门和国有文物收藏单位的工作人员不得借用国有文物，不得非法侵占国有文物。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第五章 民间收藏文物 </B><B></B></DIV>
<DIV align=left>第五十条 文物收藏单位以外的公民、法人和其他组织可以收藏通过下列方式取得的文物： </DIV>
<DIV align=left>（一）依法继承或者接受赠与； </DIV>
<DIV align=left>（二）从文物商店购买； </DIV>
<DIV align=left>（三）从经营文物拍卖的拍卖企业购买； </DIV>
<DIV align=left>（四）公民个人合法所有的文物相互交换或者依法转让； </DIV>
<DIV align=left>（五）国家规定的其他合法方式。 </DIV>
<DIV align=left>文物收藏单位以外的公民、法人和其他组织收藏的前款文物可以依法流通。 </DIV>
<DIV align=left>第五十一条 公民、法人和其他组织不得买卖下列文物： </DIV>
<DIV align=left>（一）国有文物，但是国家允许的除外； </DIV>
<DIV align=left>（二）非国有馆藏珍贵文物； </DIV>
<DIV align=left>（三）国有不可移动文物中的壁画、雕塑、建筑构件等，但是依法拆除的国有不可移动文物中的壁画、雕塑、建筑构件等不属于本法第二十条第四款规定的应由文物收藏单位收藏的除外； </DIV>
<DIV align=left>（四）来源不符合本法第五十条规定的文物。 </DIV>
<DIV align=left>第五十二条 国家鼓励文物收藏单位以外的公民、法人和其他组织将其收藏的文物捐赠给国有文物收藏单位或者出借给文物收藏单位展览和研究。 </DIV>
<DIV align=left>国有文物收藏单位应当尊重并按照捐赠人的意愿，对捐赠的文物妥善收藏、保管和展示。 </DIV>
<DIV align=left>国家禁止出境的文物，不得转让、出租、质押给外国人。 </DIV>
<DIV align=left>第五十三条 文物商店应当由国务院文物行政部门或者省、自治区、直辖市人民政府文物行政部门批准设立，依法进行管理。 </DIV>
<DIV align=left>文物商店不得从事文物拍卖经营活动，不得设立经营文物拍卖的拍卖企业。 </DIV>
<DIV align=left>第五十四条 依法设立的拍卖企业经营文物拍卖的，应当取得国务院文物行政部门颁发的文物拍卖许可证。 </DIV>
<DIV align=left>经营文物拍卖的拍卖企业不得从事文物购销经营活动，不得设立文物商店。 </DIV>
<DIV align=left>第五十五条 文物行政部门的工作人员不得举办或者参与举办文物商店或者经营文物拍卖的拍卖企业。 </DIV>
<DIV align=left>文物收藏单位不得举办或者参与举办文物商店或者经营文物拍卖的拍卖企业。 </DIV>
<DIV align=left>禁止设立中外合资、中外合作和外商独资的文物商店或者经营文物拍卖的拍卖企业。 </DIV>
<DIV align=left>除经批准的文物商店、经营文物拍卖的拍卖企业外，其他单位或者个人不得从事文物的商业经营活动。 </DIV>
<DIV align=left>第五十六条 文物商店销售的文物，在销售前应当经省、自治区、直辖市人民政府文物行政部门审核；对允许销售的，省、自治区、直辖市人民政府文物行政部门应当作出标识。 </DIV>
<DIV align=left>拍卖企业拍卖的文物，在拍卖前应当经省、自治区、直辖市人民政府文物行政部门审核，并报国务院文物行政部门备案；省、自治区、直辖市人民政府文物行政部门不能确定是否可以拍卖的，应当报国务院文物行政部门审核。 </DIV>
<DIV align=left>第五十七条 文物商店购买、销售文物，拍卖企业拍卖文物，应当按照国家有关规定作出记录，并报原审核的文物行政部门备案。 </DIV>
<DIV align=left>拍卖文物时，委托人、买受人要求对其身份保密的，文物行政部门应当为其保密；但是，法律、行政法规另有规定的除外。 </DIV>
<DIV align=left>第五十八条 文物行政部门在审核拟拍卖的文物时，可以指定国有文物收藏单位优先购买其中的珍贵文物。购买价格由文物收藏单位的代表与文物的委托人协商确定。 </DIV>
<DIV align=left>第五十九条 银行、冶炼厂、造纸厂以及废旧物资回收单位，应当与当地文物行政部门共同负责拣选掺杂在金银器和废旧物资中的文物。拣选文物除供银行研究所必需的历史货币可以由人民银行留用外，应当移交当地文物行政部门。移交拣选文物，应当给予合理补偿。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第六章 文物出境进境 </B><B></B></DIV>
<DIV align=left>第六十条 国有文物、非国有文物中的珍贵文物和国家规定禁止出境的其他文物，不得出境；但是依照本法规定出境展览或者因特殊需要经国务院批准出境的除外。 </DIV>
<DIV align=left>第六十一条 文物出境，应当经国务院文物行政部门指定的文物进出境审核机构审核。经审核允许出境的文物，由国务院文物行政部门发给文物出境许可证，从国务院文物行政部门指定的口岸出境。 </DIV>
<DIV align=left>任何单位或者个人运送、邮寄、携带文物出境，应当向海关申报；海关凭文物出境许可证放行。 </DIV>
<DIV align=left>第六十二条 文物出境展览，应当报国务院文物行政部门批准；一级文物超过国务院规定数量的，应当报国务院批准。 </DIV>
<DIV align=left>一级文物中的孤品和易损品，禁止出境展览。 </DIV>
<DIV align=left>出境展览的文物出境，由文物进出境审核机构审核、登记。海关凭国务院文物行政部门或者国务院的批准文件放行。出境展览的文物复进境，由原文物进出境审核机构审核查验。 </DIV>
<DIV align=left>第六十三条 文物临时进境，应当向海关申报，并报文物进出境审核机构审核、登记。 </DIV>
<DIV align=left>临时进境的文物复出境，必须经原审核、登记的文物进出境审核机构审核查验；经审核查验无误的，由国务院文物行政部门发给文物出境许可证，海关凭文物出境许可证放行。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第七章 法律责任 </B><B></B></DIV>
<DIV align=left>第六十四条 违反本法规定，有下列行为之一，构成犯罪的，依法追究刑事责任： </DIV>
<DIV align=left>（一）盗掘古文化遗址、古墓葬的； </DIV>
<DIV align=left>（二）故意或者过失损毁国家保护的珍贵文物的； </DIV>
<DIV align=left>（三）擅自将国有馆藏文物出售或者私自送给非国有单位或者个人的； </DIV>
<DIV align=left>（四）将国家禁止出境的珍贵文物私自出售或者送给外国人的； </DIV>
<DIV align=left>（五）以牟利为目的倒卖国家禁止经营的文物的； </DIV>
<DIV align=left>（六）走私文物的； </DIV>
<DIV align=left>（七）盗窃、哄抢、私分或者非法侵占国有文物的； </DIV>
<DIV align=left>（八）应当追究刑事责任的其他妨害文物管理行为。 </DIV>
<DIV align=left>第六十五条 违反本法规定，造成文物灭失、损毁的，依法承担民事责任。 </DIV>
<DIV align=left>违反本法规定，构成违反治安管理行为的，由公安机关依法给予治安管理处罚。 </DIV>
<DIV align=left>违反本法规定，构成走私行为，尚不构成犯罪的，由海关依照有关法律、行政法规的规定给予处罚。 </DIV>
<DIV align=left>第六十六条 有下列行为之一，尚不构成犯罪的，由县级以上人民政府文物主管部门责令改正，造成严重后果的，处五万元以上五十万元以下的罚款；情节严重的，由原发证机关吊销资质证书： </DIV>
<DIV align=left>（一）擅自在文物保护单位的保护范围内进行建设工程或者爆破、钻探、挖掘等作业的； </DIV>
<DIV align=left>（二）在文物保护单位的建设控制地带内进行建设工程，其工程设计方案未经文物行政部门同意、报城乡建设规划部门批准，对文物保护单位的历史风貌造成破坏的； </DIV>
<DIV align=left>（三）擅自迁移、拆除不可移动文物的； </DIV>
<DIV align=left>（四）擅自修缮不可移动文物，明显改变文物原状的； </DIV>
<DIV align=left>（五）擅自在原址重建已全部毁坏的不可移动文物，造成文物破坏的； </DIV>
<DIV align=left>（六）施工单位未取得文物保护工程资质证书，擅自从事文物修缮、迁移、重建的。 </DIV>
<DIV align=left>刻划、涂污或者损坏文物尚不严重的，或者损毁依照本法第十五条第一款规定设立的文物保护单位标志的，由公安机关或者文物所在单位给予警告，可以并处罚款。 </DIV>
<DIV align=left>第六十七条 在文物保护单位的保护范围内或者建设控制地带内建设污染文物保护单位及其环境的设施的，或者对已有的污染文物保护单位及其环境的设施未在规定的期限内完成治理的，由环境保护行政部门依照有关法律、法规的规定给予处罚。 </DIV>
<DIV align=left>第六十八条 有下列行为之一的，由县级以上人民政府文物主管部门责令改正，没收违法所得，违法所得一万元以上的，并处违法所得二倍以上五倍以下的罚款；违法所得不足一万元的，并处五千元以上二万元以下的罚款： </DIV>
<DIV align=left>（一）转让或者抵押国有不可移动文物，或者将国有不可移动文物作为企业资产经营的； </DIV>
<DIV align=left>（二）将非国有不可移动文物转让或者抵押给外国人的； </DIV>
<DIV align=left>（三）擅自改变国有文物保护单位的用途的。 </DIV>
<DIV align=left>第六十九条 历史文化名城的布局、环境、历史风貌等遭到严重破坏的，由国务院撤销其历史文化名城称号；历史文化城镇、街道、村庄的布局、环境、历史风貌等遭到严重破坏的，由省、自治区、直辖市人民政府撤销其历史文化街区、村镇称号；对负有责任的主管人员和其他直接责任人员依法给予行政处分。 </DIV>
<DIV align=left>第七十条 有下列行为之一，尚不构成犯罪的，由县级以上人民政府文物主管部门责令改正，可以并处二万元以下的罚款，有违法所得的，没收违法所得： </DIV>
<DIV align=left>（一）文物收藏单位未按照国家有关规定配备防火、防盗、防自然损坏的设施的； </DIV>
<DIV align=left>（二）国有文物收藏单位法定代表人离任时未按照馆藏文物档案移交馆藏文物，或者所移交的馆藏文物与馆藏文物档案不符的； </DIV>
<DIV align=left>（三）将国有馆藏文物赠与、出租或者出售给其他单位、个人的； </DIV>
<DIV align=left>（四）违反本法第四十条、第四十一条、第四十五条规定处置国有馆藏文物的； </DIV>
<DIV align=left>（五）违反本法第四十三条规定挪用或者侵占依法调拨、交换、出借文物所得补偿费用的。 </DIV>
<DIV align=left>第七十一条 买卖国家禁止买卖的文物或者将禁止出境的文物转让、出租、质押给外国人，尚不构成犯罪的，由县级以上人民政府文物主管部门责令改正，没收违法所得，违法经营额一万元以上的，并处违法经营额二倍以上五倍以下的罚款；违法经营额不足一万元的，并处五千元以上二万元以下的罚款。 </DIV>
<DIV align=left>第七十二条 未经许可，擅自设立文物商店、经营文物拍卖的拍卖企业，或者擅自从事文物的商业经营活动，尚不构成犯罪的，由工商行政管理部门依法予以制止，没收违法所得、非法经营的文物，违法经营额五万元以上的，并处违法经营额二倍以上五倍以下的罚款；违法经营额不足五万元的，并处二万元以上十万元以下的罚款。 </DIV>
<DIV align=left>第七十三条 有下列情形之一的，由工商行政管理部门没收违法所得、非法经营的文物，违法经营额五万元以上的，并处违法经营额一倍以上三倍以下的罚款；违法经营额不足五万元的，并处五千元以上五万元以下的罚款；情节严重的，由原发证机关吊销许可证书： </DIV>
<DIV align=left>（一）文物商店从事文物拍卖经营活动的； </DIV>
<DIV align=left>（二）经营文物拍卖的拍卖企业从事文物购销经营活动的； </DIV>
<DIV align=left>（三）文物商店销售的文物、拍卖企业拍卖的文物，未经审核的； </DIV>
<DIV align=left>（四）文物收藏单位从事文物的商业经营活动的。 </DIV>
<DIV align=left>第七十四条 有下列行为之一，尚不构成犯罪的，由县级以上人民政府文物主管部门会同公安机关追缴文物；情节严重的，处五千元以上五万元以下的罚款： </DIV>
<DIV align=left>（一）发现文物隐匿不报或者拒不上交的； </DIV>
<DIV align=left>（二）未按照规定移交拣选文物的。 </DIV>
<DIV align=left>第七十五条 有下列行为之一的，由县级以上人民政府文物主管部门责令改正： </DIV>
<DIV align=left>（一）改变国有未核定为文物保护单位的不可移动文物的用途，未依照本法规定报告的； </DIV>
<DIV align=left>（二）转让、抵押非国有不可移动文物或者改变其用途，未依照本法规定备案的； </DIV>
<DIV align=left>（三）国有不可移动文物的使用人拒不依法履行修缮义务的； </DIV>
<DIV align=left>（四）考古发掘单位未经批准擅自进行考古发掘，或者不如实报告考古发掘结果的； </DIV>
<DIV align=left>（五）文物收藏单位未按照国家有关规定建立馆藏文物档案、管理制度，或者未将馆藏文物档案、管理制度备案的； </DIV>
<DIV align=left>（六）违反本法第三十八条规定，未经批准擅自调取馆藏文物的； </DIV>
<DIV align=left>（七）馆藏文物损毁未报文物行政部门核查处理，或者馆藏文物被盗、被抢或者丢失，文物收藏单位未及时向公安机关或者文物行政部门报告的； </DIV>
<DIV align=left>（八）文物商店销售文物或者拍卖企业拍卖文物，未按照国家有关规定作出记录或者未将所作记录报文物行政部门备案的。 </DIV>
<DIV align=left>第七十六条 文物行政部门、文物收藏单位、文物商店、经营文物拍卖的拍卖企业的工作人员，有下列行为之一的，依法给予行政处分，情节严重的，依法开除公职或者吊销其从业资格；构成犯罪的，依法追究刑事责任： </DIV>
<DIV align=left>（一）文物行政部门的工作人员违反本法规定，滥用审批权限、不履行职责或者发现违法行为不予查处，造成严重后果的； </DIV>
<DIV align=left>（二）文物行政部门和国有文物收藏单位的工作人员借用或者非法侵占国有文物的； </DIV>
<DIV align=left>（三）文物行政部门的工作人员举办或者参与举办文物商店或者经营文物拍卖的拍卖企业的； </DIV>
<DIV align=left>（四）因不负责任造成文物保护单位、珍贵文物损毁或者流失的； </DIV>
<DIV align=left>（五）贪污、挪用文物保护经费的。 </DIV>
<DIV align=left>前款被开除公职或者被吊销从业资格的人员，自被开除公职或者被吊销从业资格之日起十年内不得担任文物管理人员或者从事文物经营活动。 </DIV>
<DIV align=left>第七十七条 有本法第六十六条、第六十八条、第七十条、第七十一条、第七十四条、第七十五条规定所列行为之一的，负有责任的主管人员和其他直接责任人员是国家工作人员的，依法给予行政处分。 </DIV>
<DIV align=left>第七十八条 公安机关、工商行政管理部门、海关、城乡建设规划部门和其他国家机关，违反本法规定滥用职权、玩忽职守、徇私舞弊，造成国家保护的珍贵文物损毁或者流失的，对负有责任的主管人员和其他直接责任人员依法给予行政处分；构成犯罪的，依法追究刑事责任。 </DIV>
<DIV align=left>第七十九条 人民法院、人民检察院、公安机关、海关和工商行政管理部门依法没收的文物应当登记造册，妥善保管，结案后无偿移交文物行政部门，由文物行政部门指定的国有文物收藏单位收藏。 </DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left><B>第八章 附 则 </B><B></B></DIV>
<DIV>第八十条 本法自公布之日起施行。</DIV>', N'hsg', NULL, 39, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (117, N'娱乐场所管理条例（国务院令第458号）', N'规章制度', N'<TABLE height=293 width=834 border=0>
<TBODY>
<TR>
<TD class=s-18 align=middle height=53><B><FONT class=s-18-z color=#006666><FONT color=#000e0e size=6>娱乐场所管理条例（国务院令第458号）</FONT> </FONT></B></TD></TR>
<TR>
<TD class=s-18 align=middle><B><FONT class=s-14 color=#006666></FONT></B></TD></TR>
<TR align=middle>
<TD class=s-12></TD></TR>
<TR>
<TD class=s-12>
<TABLE width="100%" border=0>
<TBODY>
<TR>
<TD><FONT id=zoom>
<STYLE id=_Custom_Style_>
.h1 {
	FONT-WEIGHT: bold; TEXT-JUSTIFY: inter-ideograph; FONT-SIZE: 22pt; MARGIN: 17pt 0cm 16.5pt; LINE-HEIGHT: 240%; TEXT-ALIGN: justify
}
.h2 {
	FONT-WEIGHT: bold; TEXT-JUSTIFY: inter-ideograph; FONT-SIZE: 16pt; MARGIN: 13pt 0cm; LINE-HEIGHT: 173%; TEXT-ALIGN: justify
}
.h3 {
	FONT-WEIGHT: bold; TEXT-JUSTIFY: inter-ideograph; FONT-SIZE: 16pt; MARGIN: 13pt 0cm; LINE-HEIGHT: 173%; TEXT-ALIGN: justify
}

</STYLE>
<FONT id=Zoom>&nbsp; 
<P align=center><STRONG><FONT style="FONT-SIZE: 14pt">中华人民共和国国务院令</FONT></STRONG></P>
<P align=center>第 458 号</P>
<P>　　《娱乐场所管理条例》已经2006年1月18日国务院第122次常务会议通过，现予公布，自2006年3月1日起施行。</P>
<P>　　　　　　　　　　　　　　　　　　　　　　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 总　理　 温家宝<BR>　　　　　　　　　　　　　　　　　　　　　　　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;二○○六年一月二十九日</P>
<P>&nbsp;</P>
<P align=center><STRONG><FONT style="FONT-SIZE: 14pt">娱乐场所管理条例</FONT></STRONG></P>
<P align=center>第一章　总　　则</P>
<P>　　<STRONG>第一条</STRONG>　为了加强对娱乐场所的管理，保障娱乐场所的健康发展，制定本条例。<BR>　　<STRONG>第二条</STRONG>　本条例所称娱乐场所，是指以营利为目的，并向公众开放、消费者自娱自乐的歌舞、游艺等场所。<BR>　　<STRONG>第三条</STRONG>　县级以上人民政府文化主管部门负责对娱乐场所日常经营活动的监督管理；县级以上公安部门负责对娱乐场所消防、治安状况的监督管理。<BR>　　<STRONG>第四条</STRONG>　国家机关及其工作人员不得开办娱乐场所，不得参与或者变相参与娱乐场所的经营活动。<BR>　　与文化主管部门、公安部门的工作人员有夫妻关系、直系血亲关系、三代以内旁系血亲关系以及近姻亲关系的亲属，不得开办娱乐场所，不得参与或者变相参与娱乐场所的经营活动。</P>
<P align=center>第二章　设　　立</P>
<P>　　<STRONG>第五条</STRONG>　有下列情形之一的人员，不得开办娱乐场所或者在娱乐场所内从业：<BR>　　（一）曾犯有组织、强迫、引诱、容留、介绍卖淫罪，制作、贩卖、传播淫秽物品罪，走私、贩卖、运输、制造毒品罪，强奸罪，强制猥亵、侮辱妇女罪，赌博罪，洗钱罪，组织、领导、参加黑社会性质组织罪的；<BR>　　（二）因犯罪曾被剥夺政治权利的；<BR>　　（三）因吸食、注射毒品曾被强制戒毒的；<BR>　　（四）因卖淫、嫖娼曾被处以行政拘留的。<BR>　　<STRONG>第六条</STRONG>　外国投资者可以与中国投资者依法设立中外合资经营、中外合作经营的娱乐场所，不得设立外商独资经营的娱乐场所。<BR>　　<STRONG>第七条</STRONG>　娱乐场所不得设在下列地点：<BR>　　（一）居民楼、博物馆、图书馆和被核定为文物保护单位的建筑物内；<BR>　　（二）居民住宅区和学校、医院、机关周围；<BR>　　（三）车站、机场等人群密集的场所；<BR>　　（四）建筑物地下一层以下；<BR>　　（五）与危险化学品仓库毗连的区域。<BR>　　娱乐场所的边界噪声，应当符合国家规定的环境噪声标准。<BR>　　<STRONG>第八条</STRONG>　娱乐场所的使用面积，不得低于国务院文化主管部门规定的最低标准；设立含有电子游戏机的游艺娱乐场所，应当符合国务院文化主管部门关于总量和布局的要求。<BR>　　<STRONG>第九条</STRONG>　设立娱乐场所，应当向所在地县级人民政府文化主管部门提出申请；设立中外合资经营、中外合作经营的娱乐场所，应当向所在地省、自治区、直辖市人民政府文化主管部门提出申请。<BR>　　申请设立娱乐场所，应当提交投资人员、拟任的法定代表人和其他负责人没有本条例第五条规定情形的书面声明。申请人应当对书面声明内容的真实性负责。<BR>　　受理申请的文化主管部门应当就书面声明向公安部门或者其他有关单位核查，公安部门或者其他有关单位应当予以配合；经核查属实的，文化主管部门应当依据本条例第七条、第八条的规定进行实地检查，作出决定。予以批准的，颁发娱乐经营许可证，并根据国务院文化主管部门的规定核定娱乐场所容纳的消费者数量；不予批准的，应当书面通知申请人并说明理由。<BR>　　有关法律、行政法规规定需要办理消防、卫生、环境保护等审批手续的，从其规定。<BR>　　<STRONG>第十条</STRONG>　文化主管部门审批娱乐场所应当举行听证。有关听证的程序，依照《中华人民共和国行政许可法》的规定执行。<BR>　　<STRONG>第十一条</STRONG>　申请人取得娱乐经营许可证和有关消防、卫生、环境保护的批准文件后，方可到工商行政管理部门依法办理登记手续，领取营业执照。<BR>　　娱乐场所取得营业执照后，应当在15日内向所在地县级公安部门备案。<BR>　　<STRONG>第十二条</STRONG>　娱乐场所改建、扩建营业场所或者变更场地、主要设施设备、投资人员，或者变更娱乐经营许可证载明的事项的，应当向原发证机关申请重新核发娱乐经营许可证，并向公安部门备案；需要办理变更登记的，应当依法向工商行政管理部门办理变更登记。</P>
<P align=center>第三章　经　　营</P>
<P>　　<STRONG>第十三条</STRONG>　国家倡导弘扬民族优秀文化，禁止娱乐场所内的娱乐活动含有下列内容：<BR>　　（一）违反宪法确定的基本原则的；<BR>　　（二）危害国家统一、主权或者领土完整的；<BR>　　（三）危害国家安全，或者损害国家荣誉、利益的；<BR>　　（四）煽动民族仇恨、民族歧视，伤害民族感情或者侵害民族风俗、习惯，破坏民族团结的；<BR>　　（五）违反国家宗教政策，宣扬邪教、迷信的；<BR>　　（六）宣扬淫秽、赌博、暴力以及与毒品有关的违法犯罪活动，或者教唆犯罪的；<BR>　　（七）违背社会公德或者民族优秀文化传统的；<BR>　　（八）侮辱、诽谤他人，侵害他人合法权益的；<BR>　　（九）法律、行政法规禁止的其他内容。<BR>　　<STRONG>第十四条</STRONG>　娱乐场所及其从业人员不得实施下列行为，不得为进入娱乐场所的人员实施下列行为提供条件：<BR>　　（一）贩卖、提供毒品，或者组织、强迫、教唆、引诱、欺骗、容留他人吸食、注射毒品；<BR>　　（二）组织、强迫、引诱、容留、介绍他人卖淫、嫖娼；<BR>　　（三）制作、贩卖、传播淫秽物品；<BR>　　（四）提供或者从事以营利为目的的陪侍；<BR>　　（五）赌博；<BR>　　（六）从事邪教、迷信活动；<BR>　　（七）其他违法犯罪行为。<BR>　　娱乐场所的从业人员不得吸食、注射毒品，不得卖淫、嫖娼；娱乐场所及其从业人员不得为进入娱乐场所的人员实施上述行为提供条件。<BR>　　<STRONG>第十五条</STRONG>　歌舞娱乐场所应当按照国务院公安部门的规定在营业场所的出入口、主要通道安装闭路电视监控设备，并应当保证闭路电视监控设备在营业期间正常运行，不得中断。<BR>　　歌舞娱乐场所应当将闭路电视监控录像资料留存30日备查，不得删改或者挪作他用。<BR>　　<STRONG>第十六条</STRONG>　歌舞娱乐场所的包厢、包间内不得设置隔断，并应当安装展现室内整体环境的透明门窗。包厢、包间的门不得有内锁装置。<BR>　　<STRONG>第十七条</STRONG>　营业期间，歌舞娱乐场所内亮度不得低于国家规定的标准。<BR>　　<STRONG>第十八条</STRONG>　娱乐场所使用的音像制品或者电子游戏应当是依法出版、生产或者进口的产品。<BR>　　歌舞娱乐场所播放的曲目和屏幕画面以及游艺娱乐场所的电子游戏机内的游戏项目，不得含有本条例第十三条禁止的内容；歌舞娱乐场所使用的歌曲点播系统不得与境外的曲库联接。<BR>　　<STRONG>第十九条</STRONG>　游艺娱乐场所不得设置具有赌博功能的电子游戏机机型、机种、电路板等游戏设施设备，不得以现金或者有价证券作为奖品，不得回购奖品。<BR>　　<STRONG>第二十条</STRONG>　娱乐场所的法定代表人或者主要负责人应当对娱乐场所的消防安全和其他安全负责。<BR>　　娱乐场所应当确保其建筑、设施符合国家安全标准和消防技术规范，定期检查消防设施状况，并及时维护、更新。<BR>　　娱乐场所应当制定安全工作方案和应急疏散预案。<BR>　　<STRONG>第二十一条</STRONG>　营业期间，娱乐场所应当保证疏散通道和安全出口畅通，不得封堵、锁闭疏散通道和安全出口，不得在疏散通道和安全出口设置栅栏等影响疏散的障碍物。<BR>　　娱乐场所应当在疏散通道和安全出口设置明显指示标志，不得遮挡、覆盖指示标志。<BR>　　<STRONG>第二十二条</STRONG>　任何人不得非法携带枪支、弹药、管制器具或者携带爆炸性、易燃性、毒害性、放射性、腐蚀性等危险物品和传染病病原体进入娱乐场所。<BR>　　迪斯科舞厅应当配备安全检查设备，对进入营业场所的人员进行安全检查。<BR>　　<STRONG>第二十三条</STRONG>　歌舞娱乐场所不得接纳未成年人。除国家法定节假日外，游艺娱乐场所设置的电子游戏机不得向未成年人提供。<BR>　　<STRONG>第二十四条</STRONG>　娱乐场所不得招用未成年人；招用外国人的，应当按照国家有关规定为其办理外国人就业许可证。<BR>　　<STRONG>第二十五条</STRONG>　娱乐场所应当与从业人员签订文明服务责任书，并建立从业人员名簿；从业人员名簿应当包括从业人员的真实姓名、居民身份证复印件、外国人就业许可证复印件等内容。<BR>　　娱乐场所应当建立营业日志，记载营业期间从业人员的工作职责、工作时间、工作地点；营业日志不得删改，并应当留存60日备查。<BR>　　<STRONG>第二十六条</STRONG>　娱乐场所应当与保安服务企业签订保安服务合同，配备专业保安人员；不得聘用其他人员从事保安工作。<BR>　　<STRONG>第二十七条</STRONG>　营业期间，娱乐场所的从业人员应当统一着工作服，佩带工作标志并携带居民身份证或者外国人就业许可证。<BR>　　从业人员应当遵守职业道德和卫生规范，诚实守信，礼貌待人，不得侵害消费者的人身和财产权利。<BR>　　<STRONG>第二十八条</STRONG>　每日凌晨2时至上午8时，娱乐场所不得营业。<BR>　　<STRONG>第二十九条</STRONG>　娱乐场所提供娱乐服务项目和出售商品，应当明码标价，并向消费者出示价目表；不得强迫、欺骗消费者接受服务、购买商品。<BR>　　<STRONG>第三十条</STRONG>　娱乐场所应当在营业场所的大厅、包厢、包间内的显著位置悬挂含有禁毒、禁赌、禁止卖淫嫖娼等内容的警示标志、未成年人禁入或者限入标志。标志应当注明公安部门、文化主管部门的举报电话。<BR>　　<STRONG>第三十一条</STRONG>　娱乐场所应当建立巡查制度，发现娱乐场所内有违法犯罪活动的，应当立即向所在地县级公安部门、县级人民政府文化主管部门报告。</P>
<P align=center>第四章　监督管理</P>
<P>　　<STRONG>第三十二条</STRONG>　文化主管部门、公安部门和其他有关部门的工作人员依法履行监督检查职责时，有权进入娱乐场所。娱乐场所应当予以配合，不得拒绝、阻挠。<BR>　　文化主管部门、公安部门和其他有关部门的工作人员依法履行监督检查职责时，需要查阅闭路电视监控录像资料、从业人员名簿、营业日志等资料的，娱乐场所应当及时提供。<BR>　　<STRONG>第三十三条</STRONG>　文化主管部门、公安部门和其他有关部门应当记录监督检查的情况和处理结果。监督检查记录由监督检查人员签字归档。公众有权查阅监督检查记录。<BR>　　<STRONG>第三十四条</STRONG>　文化主管部门、公安部门和其他有关部门应当建立娱乐场所违法行为警示记录系统；对列入警示记录的娱乐场所，应当及时向社会公布，并加大监督检查力度。<BR>　　<STRONG>第三十五条</STRONG>　文化主管部门、公安部门和其他有关部门应当建立相互间的信息通报制度，及时通报监督检查情况和处理结果。<BR>　　<STRONG>第三十六条</STRONG>　任何单位或者个人发现娱乐场所内有违反本条例行为的，有权向文化主管部门、公安部门等有关部门举报。<BR>　　文化主管部门、公安部门等有关部门接到举报，应当记录，并及时依法调查、处理；对不属于本部门职责范围的，应当及时移送有关部门。<BR>　　<STRONG>第三十七条</STRONG>　上级人民政府文化主管部门、公安部门在必要时，可以依照本条例的规定调查、处理由下级人民政府文化主管部门、公安部门调查、处理的案件。<BR>　　下级人民政府文化主管部门、公安部门认为案件重大、复杂的，可以请求移送上级人民政府文化主管部门、公安部门调查、处理。<BR>　　<STRONG>第三十八条</STRONG>　文化主管部门、公安部门和其他有关部门及其工作人员违反本条例规定的，任何单位或者个人可以向依法有权处理的本级或者上一级机关举报。接到举报的机关应当依法及时调查、处理。<BR>　　<STRONG>第三十九条</STRONG>　娱乐场所行业协会应当依照章程的规定，制定行业自律规范，加强对会员经营活动的指导、监督。</P>
<P align=center>第五章　法律责任</P>
<P>　　<STRONG>第四十条</STRONG>　违反本条例规定，擅自从事娱乐场所经营活动的，由工商行政管理部门、文化主管部门依法予以取缔；公安部门在查处治安、刑事案件时，发现擅自从事娱乐场所经营活动的，应当依法予以取缔。<BR>　　<STRONG>第四十一条</STRONG>　违反本条例规定，以欺骗等不正当手段取得娱乐经营许可证的，由原发证机关撤销娱乐经营许可证。<BR>　　<STRONG>第四十二条</STRONG>　娱乐场所实施本条例第十四条禁止行为的，由县级公安部门没收违法所得和非法财物，责令停业整顿3个月至6个月；情节严重的，由原发证机关吊销娱乐经营许可证，对直接负责的主管人员和其他直接责任人员处1万元以上2万元以下的罚款。<BR>　　<STRONG>第四十三条</STRONG>　娱乐场所违反本条例规定，有下列情形之一的，由县级公安部门责令改正，给予警告；情节严重的，责令停业整顿1个月至3个月：<BR>　　（一）照明设施、包厢、包间的设置以及门窗的使用不符合本条例规定的；<BR>　　（二）未按照本条例规定安装闭路电视监控设备或者中断使用的；<BR>　　（三）未按照本条例规定留存监控录像资料或者删改监控录像资料的；<BR>　　（四）未按照本条例规定配备安全检查设备或者未对进入营业场所的人员进行安全检查的；<BR>　　（五）未按照本条例规定配备保安人员的。<BR>　　<STRONG>第四十四条</STRONG>　娱乐场所违反本条例规定，有下列情形之一的，由县级公安部门没收违法所得和非法财物，并处违法所得2倍以上5倍以下的罚款；没有违法所得或者违法所得不足1万元的，并处2万元以上5万元以下的罚款；情节严重的，责令停业整顿1个月至3个月：<BR>　　（一）设置具有赌博功能的电子游戏机机型、机种、电路板等游戏设施设备的；<BR>　　（二）以现金、有价证券作为奖品，或者回购奖品的。<BR>　　<STRONG>第四十五条</STRONG>　娱乐场所指使、纵容从业人员侵害消费者人身权利的，应当依法承担民事责任，并由县级公安部门责令停业整顿1个月至3个月；造成严重后果的，由原发证机关吊销娱乐经营许可证。<BR>　　<STRONG>第四十六条</STRONG>　娱乐场所取得营业执照后，未按照本条例规定向公安部门备案的，由县级公安部门责令改正，给予警告。<BR>　　<STRONG>第四十七条</STRONG>　违反本条例规定，有下列情形之一的，由县级人民政府文化主管部门没收违法所得和非法财物，并处违法所得1倍以上3倍以下的罚款；没有违法所得或者违法所得不足1万元的，并处1万元以上3万元以下的罚款；情节严重的，责令停业整顿1个月至6个月：<BR>　　（一）歌舞娱乐场所的歌曲点播系统与境外的曲库联接的；<BR>　　（二）歌舞娱乐场所播放的曲目、屏幕画面或者游艺娱乐场所电子游戏机内的游戏项目含有本条例第十三条禁止内容的；<BR>　　（三）歌舞娱乐场所接纳未成年人的；<BR>　　（四）游艺娱乐场所设置的电子游戏机在国家法定节假日外向未成年人提供的；<BR>　　（五）娱乐场所容纳的消费者超过核定人数的。<BR>　　<STRONG>第四十八条</STRONG>　娱乐场所违反本条例规定，有下列情形之一的，由县级人民政府文化主管部门责令改正，给予警告；情节严重的，责令停业整顿1个月至3个月：<BR>　　（一）变更有关事项，未按照本条例规定申请重新核发娱乐经营许可证的；<BR>　　（二）在本条例规定的禁止营业时间内营业的；<BR>　　（三）从业人员在营业期间未统一着装并佩带工作标志的。<BR>　　<STRONG>第四十九条</STRONG>　娱乐场所未按照本条例规定建立从业人员名簿、营业日志，或者发现违法犯罪行为未按照本条例规定报告的，由县级人民政府文化主管部门、县级公安部门依据法定职权责令改正，给予警告；情节严重的，责令停业整顿1个月至3个月。<BR>　　<STRONG>第五十条</STRONG>　娱乐场所未按照本条例规定悬挂警示标志、未成年人禁入或者限入标志的，由县级人民政府文化主管部门、县级公安部门依据法定职权责令改正，给予警告。<BR>　　<STRONG>第五十一条</STRONG>　娱乐场所招用未成年人的，由劳动保障行政部门责令改正，并按照每招用一名未成年人每月处5000元罚款的标准给予处罚。<BR>　　<STRONG>第五十二条</STRONG>　因擅自从事娱乐场所经营活动被依法取缔的，其投资人员和负责人终身不得投资开办娱乐场所或者担任娱乐场所的法定代表人、负责人。<BR>　　娱乐场所因违反本条例规定，被吊销或者撤销娱乐经营许可证的，自被吊销或者撤销之日起，其法定代表人、负责人5年内不得担任娱乐场所的法定代表人、负责人。<BR>　　娱乐场所因违反本条例规定，2年内被处以3次警告或者罚款又有违反本条例的行为应受行政处罚的，由县级人民政府文化主管部门、县级公安部门依据法定职权责令停业整顿3个月至6个月；2年内被2次责令停业整顿又有违反本条例的行为应受行政处罚的，由原发证机关吊销娱乐经营许可证。<BR>　　<STRONG>第五十三条</STRONG>　娱乐场所违反有关治安管理或者消防管理法律、行政法规规定的，由公安部门依法予以处罚；构成犯罪的，依法追究刑事责任。<BR>　　娱乐场所违反有关卫生、环境保护、价格、劳动等法律、行政法规规定的，由有关部门依法予以处罚；构成犯罪的，依法追究刑事责任。<BR>　　娱乐场所及其从业人员与消费者发生争议的，应当依照消费者权益保护的法律规定解决；造成消费者人身、财产损害的，由娱乐场所依法予以赔偿。<BR>　　<STRONG>第五十四条</STRONG>　娱乐场所违反本条例规定被吊销或者撤销娱乐经营许可证的，应当依法到工商行政管理部门办理变更登记或者注销登记；逾期不办理的，吊销营业执照。<BR>　　<STRONG>第五十五条</STRONG>　国家机关及其工作人员开办娱乐场所，参与或者变相参与娱乐场所经营活动的，对直接负责的主管人员和其他直接责任人员依法给予撤职或者开除的行政处分。<BR>　　文化主管部门、公安部门的工作人员明知其亲属开办娱乐场所或者发现其亲属参与、变相参与娱乐场所的经营活动，不予制止或者制止不力的，依法给予行政处分；情节严重的，依法给予撤职或者开除的行政处分。<BR>　　<STRONG>第五十六条</STRONG>　文化主管部门、公安部门、工商行政管理部门和其他有关部门的工作人员有下列行为之一的，对直接负责的主管人员和其他直接责任人员依法给予行政处分；构成犯罪的，依法追究刑事责任：<BR>　　（一）向不符合法定设立条件的单位颁发许可证、批准文件、营业执照的；<BR>　　（二）不履行监督管理职责，或者发现擅自从事娱乐场所经营活动不依法取缔，或者发现违法行为不依法查处的；<BR>　　（三）接到对违法行为的举报、通报后不依法查处的；<BR>　　（四）利用职务之便，索取、收受他人财物或者谋取其他利益的；<BR>　　（五）利用职务之便，参与、包庇违法行为，或者向有关单位、个人通风报信的；<BR>　　（六）有其他滥用职权、玩忽职守、徇私舞弊行为的。</P>
<P align=center>第六章　附　　则</P>
<P>　　<STRONG>第五十七条</STRONG>　本条例所称从业人员，包括娱乐场所的管理人员、服务人员、保安人员和在娱乐场所工作的其他人员。<BR>　　<STRONG>第五十八条</STRONG>　本条例自2006年3月1日起施行。1999年3月26日国务院发布的《娱乐场所管理条例》同时废止。</P></FONT></FONT></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>', N'hsg', NULL, 90, CAST(0x0000A899010F1EA4 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (76, N'微博成最新反腐方式 更直接、更给力', N'社团新闻', N'　&nbsp; 记者昨日采访了一些官员和相关专家，不少人认为微博已成为一种最新的反腐方式。
<P><STRONG>　　官员应加强个人修养</STRONG></P>
<P>　　省委党校党史党建教研部主任董连翔教授对记者表示，这一事件给广大党员干部敲响了警钟：在现在监督手段越来越健全的大环境下，党员干部更应该加强自身修养，严守道德底线。“你可以有私生活，但你的私生活也应当建立在社会公德的制约之下。”而且，董连翔指出，作为党员干部，那就是公众人物，更应当自觉接受社会各界、各种形式的监督。</P>
<P><STRONG>　　网络监督更直接有力</STRONG></P>
<P>　　董连翔认为，从前几年的周久耕事件，到今天的溧阳卫生局长事件，人们可以看到的是，包括微博在内的网络舆论已经成为群众监督的非常重要的途径。对党委政府而言，多了一个制约监督权力的平台；对公众来说，也多了一种快速监督的途径。对领导干部而言，也多了一种约束自己的机制。“事实证明，网络监督往往更直接，更有力。”</P>
<P><STRONG>　　纪检部门应主动介入</STRONG></P>
<P>　　前不久重庆市丰都县检察院微博通过开通“防腐微博”，发现了粉丝在微博跟帖评论中的线索，成功挖出当地一家医院包括一名副院长在内的两名贪腐人员。</P>
<P>　　对此，董连翔教授指出：纪检部门对微博等网论线索的介入，不但是非常必要的，而且应当越及时越好。尤其是，到一定的时期可以将调查的真相在制度和纪律允许的范围内及时公之于众，为公众打开一种新的畅通、公开的监督渠道。 本报记者　石小磊</P>', N'hsg', N'upload/1317085910921.jpg', 1, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (77, N'“温州健康生态城”选址瓯江口新区', N'社团新闻', N'　&nbsp; 昨天（5月5日）下午，市人民政府与中国残疾人福利基金会就合作建设“温州健康生态城”项目正式签约。中国残联副主席、中国残疾人福利基金理事长汤小泉，副省长、市委书记陈德荣出席签约仪式并讲话，市委副书记、市长赵一德代表市政府签约。 
<P>　　据了解，“温州健康生态城”项目选址瓯江口新区，计划占地2000亩，总投资约计40亿元。项目主要由温州康复医学院、温州国际康复医院、温州国际康护中心、生态休闲社区等四部分内容和配套设施组成。其中，温州康复医学院占地约200亩，用于康复类学科专业教学和实践；温州国际康复医院占地约250亩，计划规模500至1000床；国际康护中心占地约250亩。项目力求打造成立足温州、面向全国的高水准、综合性、国际化的康复人才培养基地和现代康复生态社区。</P>
<P>　　汤小泉在致辞中首先感谢温州对全国残疾人事业和老年事业所给予的重视和支持，并指出目前温州的残疾人达50万，占全市人口总数的6.34%，60周岁以上的老年人口达110.7万人，空巢老人家庭占到55%。“温州健康生态城”的建成将会为老年人提供一个安享晚年的乐园，将推动温州残疾人、老年人康复事业发展，让老人健康的时间更长，让有功能缺陷的老人尽量减少痛苦，减轻家庭负担。</P>
<P>　　陈德荣说，从产业前景来看，我市人口结构老龄化加剧，城市转型和产业升级进程的不断推进，决定了养老、康复事业，在温州有着巨大的潜在市场需求；从发展条件来看，温州素以气候温和宜居闻名，冬暖夏凉的气候条件得天独厚，是温州发展养老健康、医疗康复事业的天然土壤。建设“温州健康生态城”项目，是温州打造“生产、生活、生态”三生融合的现代化国际性大都市的重要举措，各地各部门要以此次签约仪式为契机，大力支持该项工程的开发建设，从规划到审批等各个环节一路开绿灯，力争早日把项目建成瓯江口新区现代产业集聚的龙头示范工程。</P>
<P>　　市委常委、秘书长葛益平，副市长仇杨均，市政府秘书长詹永枢等出席签约仪式。（记者 吴勇）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/1317086069593.jpg', 65, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (78, N'发票使用又出新规定 虚开普通发票将获刑', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 昨天下午，市工商联、公安、地税、国税等部门联合举办关于“发票使用新规定”的宣导座谈会，我市35个行业协会代表参加了会议。
<P>　　据介绍，从5月1日起，《中华人民共和国刑法修正案(八)》正式施行。新修正案首次明确提出将追究“虚开普通发票”及“非法持有伪造发票”者的刑事责任，使得虚开普通发票从“无罪”到“有罪”，伪造发票的买方市场也将依法得到严惩。</P><!--advertisement code begin--><!--none--><!--advertisement code end-->
<P>　　另外，新修订的《中华人民共和国发票管理办法》已于今年2月1日开始施行。《办法》规定，禁止非法代开发票，不得介绍他人转让发票；对知道或者应当知道是假发票的，不得受让、开具、存放、携带、邮寄和运输；不得以其他凭证代替发票使用；对虚开、伪造、变造、转让发票等违法行为的罚款上限由5万元提高为50万元。</P>
<P>　　记者 朱则金 实习生 邵卢静</P>', N'hsg', N'upload/1317086056687.jpg', 49, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (79, N'人民论坛杂志调查评出 领导干部十大新观念', N'社团新闻', N'<P>&nbsp;&nbsp;&nbsp;&nbsp; 近日，人民论坛杂志联合人民论坛网、人民网、新浪网、腾讯网等进行了专题调查，评选出2010年领导干部十大新观念。<BR>&nbsp;&nbsp;&nbsp; 人民论坛问卷调查中心梳理了近一年来国内发生的与干部有关的重大新闻事件，征求干部、专家意见，归纳概括出当前领导干部应当树立的15个创新观念。此后，问卷调查中心随机调查了1020位干部，同时开展网络调查评选，3320人参与调查。调查结果使用统计学方法，对官员群体调查结果和网友调查结果各按权重60%、40%加权处理。</P>
<P>&nbsp;&nbsp;&nbsp; 1　眼睛向下看</P>
<P>&nbsp;&nbsp;&nbsp; 上榜理由：作为领导干部，决不能总是“眼睛向上看”，而是要“眼睛向下看”，倾听群众呼声，关心群众疾苦，解决群众实际问题，多向群众学习。</P>
<P>&nbsp;&nbsp;&nbsp; 2　网络是个好东西</P>
<P>&nbsp;&nbsp;&nbsp; 上榜理由：领导干部应加强网络意识，不仅要充分运用网络了解民情民意，而且要充分认识到网络监督的重要意义和价值，自觉接受网络监督，积极回应网络监督。</P>
<P>&nbsp;&nbsp;&nbsp; 3　拼GDP不如比民生</P>
<P>&nbsp;&nbsp;&nbsp; 上榜理由： 社会贫富差距拉大、分配不公是近年来群众反映最为集中的问题，领导干部应牢记发展是第一要务，富民是永恒主题。</P>
<P>&nbsp;&nbsp;&nbsp; 4　孩子老婆得管住</P>
<P>&nbsp;&nbsp;&nbsp; 上榜理由：子女老婆没有特权，作为一名领导干部，要注重家庭教育，管好带好家庭成员。</P>
<P>&nbsp;&nbsp;&nbsp; 5　科学发展是硬道理</P>
<P>&nbsp;&nbsp;&nbsp; 上榜理由：发展是执政兴国的第一要务，发展要可持续，必须以科学发展观为指导，当前尤其要强调转变经济发展方式。<BR></P>', N'hsg', N'upload/1317085936937.jpg', 42, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (80, N'新春民族音乐会举行（图）', N'社团新闻', N'<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366914_779610.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366915_105758.jpg"><BR></CENTER>
<P></P><!--advertisement code begin--><!--advertisement code end-->
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366916_893893.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366917_860186.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366918_035628.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366922_733033.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366919_821686.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366920_923546.jpg"><BR></CENTER>
<P></P>
<P>
<CENTER><IMG src="http://pic2.66wz.com/0/10/36/69/10366921_176302.jpg"><BR></CENTER>
<P></P>
<P>&nbsp;&nbsp;&nbsp; 1月20日消息：19日晚，由县文化广电新闻出版局主办、温州市民族乐团演出的“雪花啤酒之夜”2011年苍南县新春民族音乐会在苍南影城举行，充满喜庆、祥和、欢快、优美、悠扬的乐曲将观众带入了一个美妙的艺术世界。乐手们精湛的技艺使整场音乐会跌宕起伏，赢得了观众的热烈掌声和喝彩。（李士明/摄）</P>', N'hsg', N'upload/1317085922265.jpg', 29, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (81, N'县食药监局创新监管方式 保障“舌尖上”的安全', N'社团新闻', N'<P>&nbsp;&nbsp;&nbsp; 苍南新闻网12月26日消息：自2013年1月1日起，餐饮食品安全监管列入县食药监局职责范围，县食药监局便积极创新监管方式，紧紧围绕食品安全主题，实现监管工作思路“三个转变”，有效保障了全县百姓“舌尖上”的安全。</P>
<P>&nbsp;&nbsp;&nbsp; 该局首先从监管理念上转变，将监管理念从外部的“卫生”转变到“安全”的内涵上来，除了做好日常对餐饮单位的场所、设施设备及菜品卫生与整洁的“外部”要求外，还通过加大对食品及相关产品的抽检等手段，更多更严更细地排查“危险源”，切实保障餐饮食品的“内在”安全。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 与此同时，县食药监局将监管模式从一个部门监管转变到社会共管上来。通过开展“我执法、你参与”、餐饮服务单位互查等活动，积极邀请人大代表、政协委员、行业代表、社会团体及新闻媒体参与到食品安全监管与执法工作中，形成全社会共同参与、共同监督、共同治理的大监管模式，克服了监管部门“单打独斗”的被动局面。</P>
<P>&nbsp;&nbsp;&nbsp; 此外，县食药监局还积极参与“平安苍南”、“省级卫生县城复评”、“餐饮服务食品安全示范创建”等文明示范创建活动，将监管层面从日常监管转变到文明示范创建上来，以更高的标准，加大日常监管巡查力度，深入开展食品安全整治，努力推进全县餐饮行业食品安全整体水平，确保不发生重大食品安全事故，为社会和谐稳定提供强有力的保障。（记者 陈薇拉）</P>', N'hsg', NULL, 50, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (82, N'在外温商地产新方向：“城市包围农村”', N'社团新闻', N'<P>&nbsp;&nbsp;&nbsp; 前不久，记者在江苏盱眙县采访时发现，一座小小的县城，竟然出现8家来自温州的地产商，开发的商业和住宅楼盘占据着盱眙县一半以上的市场。业内人士称这种集中县城开发地产的现象为“盱眙现象”。</P>
<P>　　温商地产企业向着三线城市聚集，这种现象已经在多地温商地产界显现出来，他们越来越多地青睐三线城市的地产市场。</P>
<P>　　温商地产“城市包围农村”</P>
<P>　　张奕早是温州泰顺人，江苏五丰物流商贸投资有限公司副总裁。2011年，五丰投资公司在盱眙征地266亩，开发总投资超过10亿元的盱眙五丰义乌商贸城。今时今日，这个集专业市场、高档酒店、现代物流、百货等为一体的商业综合体，已基本完成了一期工程。</P>
<P>　　据了解，在小小的盱眙县城，除了“五丰投资”外，还有“五洲”等7家来自温州的地产开发商。他们正在盱眙开发的楼盘超过8个，占据当地一半以上份额。</P>
<P>　　这么多温商地产企业集中在一个县城里投资开发地产，在国内实属少见，但是，张奕早却不以为意，他说，温商地产投资三线城市，早已是一种趋势。如以投资商业地产闻名全国的泰顺商人，许多规模较大的企业起步时，多在上海、天津、济南等大城市，而今，他们中的大部分已经把投资方向变更为三线城市，大有“城市包围农村”之意。</P>
<P>　　张奕早还介绍，早些年，投资专业市场非常单一，只要将专业市场建起来，再招商卖出去就行了，投资的成本相对不高，竞争也不大。如今，随着一线城市建设的不断完善，规划要求不断提高，投资要求都比较高，几亿甚至几十亿元的投资，都难以达到一线城市的投资要求，在这种情况下，温商才逐步盯上三线城市。</P>
<P>　　上海大博联企业(集团)有限公司是温商中的佼佼者，该企业起步于上世纪90年代初的上海，曾成功开发了上海铝型材市场。企业越来越大，但现在的投资项目也几乎都集中在山东泰州、盐城等三线城市里。</P>
<P>　　无论是温商的商业地产还是住宅地产项目，投资方向基本上都集中在三线城市里，可以说，每一座三线城市里，都有一两家温商的地产企业在投资地产。</P>
<P>　　投资三线城市是“错位经营”</P>
<P>　　济南市温州商会会长、山东海那产业有限公司董事总经理夏三忠认为，温商地产企业主打三线城市投资，是与国内的地产上市企业打了一张“错位”牌。</P>
<P>　　夏三忠说，虽然温商企业经历了几十年的发展，有了一定的资金实力，但是，与国内的地产大鳄比起来，还有一定的距离。特别是现代城市地产向综合体方向发展，资金要求非常高，动辄几十亿上百亿元，甚至几百亿的项目层出不穷，与其在一二线城市与地产大鳄抢饭吃，还不如退居三线城市，打造自己的地产品牌。</P>
<P>　　为此，海那产业公司于2004年进军济南，在济南二环西路边上投资了济南国际农产品贸易加工中心后，目前，逐步向山东的地级市和县城投资，并逐步形成了“海那”品牌，得到了许多三线城市的老百姓和政府的信任。</P>
<P>　　来自乐清的夏建鹏有着多年投资地产的经历，2011年，他在离四川乐山市不远的一个镇上投资了旧城改造综合体项目，该项目集高级商场、住宅、娱乐和文化中心为一体，建成后将全面改变乐山的城市面貌。</P>
<P>　　夏建鹏说，投资三线城市是温商的拿手好戏，基本上是做一个成一个，投资效果非常好。现在是地产大鳄从一线城市向二线城市扩张，而温商是从二线城市向三线城市跨越。</P>
<P>　　投资三线城市“大有可为”</P>
<P>　　这些年来，夏三忠曾对山东众多的县域进行过调研。他发现，山东的中心城镇发展明显比浙江落后。浙江的中心城镇因乡镇企业而兴，随着企业数量、规模的扩张而膨胀，再加上政府的有意识推动，许多中心镇的规模和城市化程度已经不亚于县城。</P>
<P>　　从夏三忠的调查中不难发现，国内成千上万的县域城镇将要经历快速发展期，蕴藏着巨大的投资商机。</P>
<P>　　张奕早说，在人口达70万的盱眙县城，至今还没有一个专业市场，城市功能的完善，需要五丰义乌商贸城这样的项目，这是五丰集团投资盱眙的主要原因，当然，商贸城的投资不能局限于简单的市场，而是集高级酒店、物流、电商等配套于一体的综合体。</P>
<P>　　据悉，在盱眙的其他地产投资商却是看上盱眙城市人口的集聚，目前，盱眙正在申请撤县建市，城市的快速发展，吸引着温商地产企业。</P>
<P>　　夏三忠说，中国的县域城镇化将迎来一个快速发展时期，投资三线城市虽然利润薄一些，但是资金回收比较快，温商投资三线城市大有可为。</P>
<P>　　记者胡文瑾</P>', N'hsg', NULL, 84, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (83, N'苍南县建立机关党建工作分片联系新机制', N'社团新闻', N'&nbsp;&nbsp; 为改进工作作风，进一步推动“转作风、优环境”活动的 
<DIV>&nbsp;&nbsp; 开展，苍南县直机关工委建立了工委领导分片联系党建工作新机制，把工作做到机关各级党组织、企业以及新社会组织党组织，面对面地开展党建工作，从而有效地促进机关党建工作示范点创建活动的整体水平的提高，进一步推进全年机关党建各项工作任务的落实。</DIV>
<DIV>&nbsp;&nbsp; 党建工作分片联系工作机制涉及苍南机关、企业以及新社会组织等97个党组织，工委领导带队分三个联系小组。主要任务：一是指导所联系的机关党组织抓好理论学习，帮助解决党委(总支、支部)班子存在的问题。指导开展机关党建工作示范点和学习型党组织创建活动。二是指导所联系的机关党组织抓好基层组织建设，按时完成工委部署的各项任务，督促有关部门和党组织落实苍南县委(2009]27号文件精神，督促开展“创先争优”活动，指导机关党组织开展与农村或社区基层党组织结对工作。三是指导所联系的机关党组织牵头抓好深化文明机关创建活动，督促机关党员干部遵守效能规定，进一步转变机关作风。四是及时帮助解决基层党组织反映的问题，重大问题向工委主要领导汇报，并适时进行反馈。 &nbsp;&nbsp; </DIV>
<DIV>&nbsp;&nbsp; 各联系小组主动与所联系片组的机关单位进行联系，开展调研，加强沟通，全面了解党组织面上情况，工委会议每月听取各组汇报，各小组针对存在的问题提出建议和对策，经研究同意后帮助有关单位加以解决。党建工作分片联系新机制的实行，使苍南县直机关党建工作的发展势头出现了整体推进的良好局面。(苍南县直机关工委)</DIV>
<DIV>&nbsp;</DIV>', N'hsg', NULL, 83, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (84, N'宜山镇给新上任“村官”打廉政“预防针”', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 3月23日消息：村级组织换届结束后，宜山镇一大批新上任村干部走上了村两委岗位。为了给新上任“村官”打好廉政“预防针”，3月22日，宜山镇组织新一届200多名村官进行集中培训，以提高和增强村干部对农村基层党风廉政建设的认识，增强廉洁自律、廉洁从政意识。
<P>&nbsp;&nbsp;&nbsp; 在廉政课上，县纪委工作人员结合纪委工作实际，详细讲解了农村基层党风廉政建设的基本知识、当前形势、农村基层党风廉政建设存在的突出问题和原因以及农村干部应该怎么做等六个方面内容。廉政课还采取反面案例，以案明纪，以案说法，对新换届上任的村党员干部进行了廉政教育，引导他们树立正确的权力观、地位观，增强拒腐防变能力，自觉抵制各种不良风气，做到为人民群众办实事、办好事，为新农村建设添砖增瓦。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 接受培训的村干部纷纷表示，这次廉政课很及时，让他们对农村基层党风廉政建设有了全新的认识。今后，他们将不断强化廉洁自律意识，加强党性修养，主动接受群众监督，做一名让群众放心的村干部。（通讯员&nbsp; 江飞&nbsp; 爱选）</P>', N'hsg', NULL, 3, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (85, N'奥康产业创新联盟成立', N'社团新闻', N'<P>　　9月3日在上海召开的中国皮革协会第七届理事会第三次扩大会议上，奥康宣布将联合产业链上下游企业，共同发起成立中国皮革行业首个产业创新联盟。中国皮革行业协会理事长苏超英评价说，奥康产业创新联盟是行业合作的突破式创新，在极大提高企业竞争力的同时，也将为行业发展带来新的希望。</P>
<P>　　“创新联盟是以‘引导产业发展、推动技术创新’为宗旨，坚持面向市场、平等自愿、风险共担、利益共享原则，建立在产业创新价值链基础之上的一个协作组织。”奥康集团董事长王振滔介绍，通过联合各产业链上下游企业的力量，我们将促进产业共性技术的研发与应用，引导产业协调发展。</P>
<P>　　据了解，我国皮革毛皮及制品出口已占世界出口总额的38.4%，但国内鞋革行业仍处于依靠资本扩张和资源过度消耗来实现增长的状态，对外技术依赖程度高，技术创新能力偏弱。现阶段原材料供应商、制鞋企业以及下游销售平台之间尚未形成有效协调机制的产业创新联盟，行业相关技术标准的滞后与不统一也制约了皮革产业的发展，以产业创新联盟的形式开展共性技术研究已成为当前皮革行业发展中十分迫切的任务。</P>
<P>　　此次产业创新联盟首批成员包括奥康、福建兴业皮革、淘宝分销商、劲浪电子商务公司等。创新联盟成立后将通过产业链上下游人才互访、互派、轮岗等形式，改善联盟人才的知识结构和能力结构，不断提升素质和水平，最终实现全联盟人才整体素质的提升。此外，联盟还将建立一个面向联盟全体成员的综合数据库，将整合各成员的优势资源对制约行业发展的重大难题和关键技术进行联合攻关，突破行业在环保型原材料、鞋款设计数字化和商业模式创新上遇到的瓶颈。</P>', N'hsg', NULL, 10, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (86, N'逸行网携手支付宝推出“先旅游，后买单”新计划', N'社团新闻', N'<SPAN id=content>
<P><SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG"></SPAN>　　十一黄金周及前两个月是一年中最热的旅游季节，但是各种宰客、强制购物、擅自更改行程等众多突出问题都在困扰着想要出游的人们。今年的8月8日-10月31日期间，逸行网将联手支付宝、中国旅游协会，推出“先旅游，后买单”计划，合力打造适合旅游行业的“货到付款”，必将给游客一个真正的放心之旅。本活动已于今日上线。</P>
<P>　　据了解，支付宝在本次活动中扮演着“旅游担保”的角色，所有在逸行网报名游客的团费都会由支付宝暂时冻结保管。待旅行结束后2至3天内，确定游客对本次行程没有异议，支付宝才会放款给逸行网。在此期间，一旦出现纠纷，投诉后3天内游客和逸行网自行协商解决，根据协商结果处理冻结资金。如果双方协调不成功，将由双方举证，7个工作日内由<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">旅游协会</SPAN>指定机构进行纠纷调解。在调解期间，游客的团款将会被继续冻结，直到纠纷处理结束。</P>
<P>　　支付宝市场部相关负责人对记者表示“支付宝已于去年末正式推出旅游担保交易解决方案。该方案通过引入担保交易和行业维权，为消费者在支持旅游担保交易的网站下单购买的<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">旅游产品</SPAN>做全程担保，即为国内首个实现“旅游担保”的方案。由于引入了电子合同备案，解决了取证难的问题，使用纠纷处理更具公理和效率保证。通过支付宝旅游担保交易，困扰在线旅游" &gt;在线旅游市场的‘信任’问题将迎刃而解。”</P>
<P>　　逸行网执行总裁常啸介绍说，能否通过建立信任保障体系，有效化解在线旅游交易的纠纷问题，一直被看作是在线旅游市场发展的分水岭，逸行网此次选择与支付宝合作，就是想从自身做起，引领和规范旅游在线市场，建议在线旅游交易诚信标准，促进行业健康发展。逸行网从创立以来一直坚持精品旅游战略，从产品的研发、渠道的选择、全程服务等方面均高标准要求，力求做到行程透明、管家服务、先行赔付、财害保障、签证无忧，给<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">游客</SPAN>创造一个安心、快乐的旅程。</P>
<P>　　据悉，逸行网隶属于逸行旅游集团，该集团是由全球最大的旅行社集团公司JTB等10家世界五百强企业基于全球化战略协作而联合出资组建，目前主要面向国内中高端旅游市场，以深度主题游、个性化自由行、单团订制做为核心产品，其日本深度游和海岛游等出境旅游产品拥有独特的资源优势，在同业中处于领先地位。现已开设北京、上海两站。作者：伍策</P></SPAN>', N'hsg', NULL, 37, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (87, N'县城新区中心湖历史河岸公园启动基础施工', N'社团新闻', N'<DIV id=topic class=lh24>
<DIV style="TEXT-INDENT: 2em"></DIV></DIV>
<DIV id=showvideo>
<DIV align=center><!-- rm url is empty!--></DIV></DIV>
<DIV id=ftcg class=content><!--function content() parse begin-->
<DIV align=center>
<DIV align=center><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819111_999602.jpg" width=610 height=403></SPAN></DIV>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819112_563823.jpg" width=610 height=416></SPAN></DIV>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/81/91/10819113_390331.jpg" width=610 height=408></SPAN></DIV>
<DIV align=center>&nbsp;</DIV></DIV>
<P><!--epe-->&nbsp;&nbsp; 苍南新闻网7月10日消息：7月9日，县城新区工程建设指挥部联合县城新区派出所、灵溪镇两违办，对县城新区中心湖历史河岸公园工程所属地块进行地表附属物清理，同时进行施工便道的填筑和土方堆砌整形等基础性施工，为公园正式开工建设奠定坚实基础。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 中心湖历史河岸景观工程位于县城新区站前大道和人民大道交叉口东南侧，国际大酒店对面，占地6.2万㎡，被塘河划分为北岸历史河岸公园和南岸历史河岸公园两部分。公园设计主题为疏林草地、阳光草坪，其中布置以旱喷广场、亲水平台、林荫场地、竹文化广场等景观设施，并配置了两个停车场和一个生态厕所，为市民休闲游玩提供充分的便利。自5月份完成中心湖104间房屋拆迁以来，基础性施工正有条不紊的进行中，预计下月可正式进行工程招投标工作。（星文&nbsp; 颜丽）</P></DIV>', N'hsg', NULL, 71, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (88, N'新安社区全力以赴对抗台风', N'社团新闻', N'<DIV>&nbsp;&nbsp;&nbsp; 8月台风季，台风一个个接踵而来。“苏拉”和“达维”刚携手离去，第11号强台风&nbsp;“海葵”又将袭来。新安社区全体总动员，大家全力以赴做好各项抗台防御工作。社区召开抗台紧急动员会议，传达县镇会议精神，部署各项抗台工作，确保有备无患。社区书记谢剑南要求各村干部一定要高度重视，迅速行动，发扬连续作战精神，以对人民群众生命财产安全高度负责的态度，把防台工作作为当前压倒一切的中心工作来抓，要按照正面袭击的最不利情况做最充分的准备，确保“不死人、不伤人”，把台风损失降到最低。&nbsp;</DIV>', N'hsg', NULL, 56, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (89, N'周国辉:舟山群岛新区有必要建成自由贸易区', N'社团新闻', N'<P>　　舟山依海而立，是我国最大的群岛。沐浴在故土的亲情雨和开放海风中，6月4日，舟山市委副书记、市长周国辉回到家乡宁波参加第四届中国开放论坛。他说：“<STRONG>今年3月舟山群岛新区上升为国家战略，成为继上海浦东、天津滨海、重庆两江之后的国家级新区，也是我国唯一的海洋群岛型新区</STRONG>。有必要在新区探索设立管理更科学、体制更开放的自由贸易区。”</P>
<P>　　周国辉现年51岁，香港理工大学高级工商管理硕士。最初在浙江省人大常委会办公厅工作，期间曾赴美国培训，曾任浙江省台州市委副书记，2008年调任舟山市。</P>
<P>　　舟山市海洋经济总产值占GDP比重达到68%，是我国海洋经济比重最高的城市。在国家“十二五”规划纲要和《浙江海洋经济发展示范区》发展规划中，“舟山群岛”被多次提及。</P>
<P>　　如今，舟山跨海大桥把舟山与长三角广阔的经济腹地紧密结合起来，使其成为我国大陆地区唯一深入太平洋的海上战略之城。谈及舟山未来发展方向，周国辉说：“我们要依靠舟山独特的区位优势，致力打造长三角海洋经济发展的增长极、东部重要的国际性海上开放门户、大宗物资储备中转贸易中心，以及海洋海岛科学保护利用的示范区。”</P>
<P>　　国务院赋予舟山先行先试权利，寄希望舟山创新海洋经济发展和海岛综合开发的模式。“我们将在海岛土地政策调整、岸线集约节约利用、无人岛开发、海岛城乡统筹、海洋开发投融资体制等方面，不断破除体制性障碍，拓展海洋开发空间。”周国辉说。</P>
<P>　　区域一体化是舟山群岛建设的背景。宁波—舟山港2010年货物吞吐量达6.27亿吨，超越上海洋山港成为世界第一大港。然而，该港的现代化程度还不高，今后要优化港航配置，提高无障碍运输能力，拓展港口、航运企业腹地。</P>
<P>　　周国辉曾在香港学习，如何借鉴香港的港口经验，主动参与上海国际航运中心和宁波—舟山港一体化进程，是舟山有待破解的难题。“我们要在丰富港口功能、承接产业转移中发挥作用，发展集储备、物流、贸易、金融、集散、航运于一体的战略储备中心，高水平建设亚太地区的国际枢纽港。”周国辉说。</P>
<P>　　舟山占据对外开放的战略要地，自贸区的概念也浮现在周国辉的脑海中。</P>
<P>　　“我国建立自贸区的条件日趋成熟，有必要在舟山群岛新区探索设立自贸区。”周说，他们正在申报设立舟山保税港区，探索建立大宗商品保税集散中心、流转中心、金融服务商业中心和货币金融的离岸中心。</P>
<P>　　面向海洋的世纪，在周国辉主政下的舟山群岛瞄准新加坡、香港等世界一流港口城市，将建设具有海岛特色、城乡一体、生态和谐的港口宜居城市。</P><!-- end_ct -->', N'hsg', NULL, 79, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (90, N'王晨光参加龙港等代表团审议讨论：突出经济中心 再铸新的辉煌', N'社团新闻', N'&nbsp;&nbsp;&nbsp; 1月24日消息：今天上午，县委副书记、代县长董庆华参加龙港代表团审议讨论政府工作报告时表示，龙港的发展是县委县政府及广大人民群众的共同责任，一定会给予高度重视，通过大家共同努力，再铸龙港新辉煌。
<P>&nbsp;&nbsp;&nbsp; 在龙港代表团，代表们一个接着一个争先发言，谈心得提建议，有要求政府关注三农的，有要求治理交通堵塞的，有要求加快灵龙快速通道建设的，有要求加大龙港医疗设施投入的，还有要求做大做强龙港礼品产业，推动三产发展等。董庆华一一认真听着，记录着。他说，听了十多位代表的发言，看到大家这么关心民生，关注民情，真的很感动。龙港作为中国第一农民城，这张金名片曾闻名遐迩，是苍南的一面旗帜，荣誉来之不易。但近年来这张金名片已失去它的优越性，发展有所缓慢，现有规划远远不能满足经济社会发展需求，并在一定程度上阻碍了龙港的发展。县委县政府对龙港高度重视，在今年的政府工作报告中明确提出，要突出龙港经济中心地位，发挥滨江临海的区位优势，打破行政区划，把龙港的规划和临港滨海新城的规划合二为一，做好龙港“东面城市化、西面工业化”和临港滨海新城“北面城市化、南面工业化”的空间布局，推进工业化和城市化良性互动发展，把龙港打造成现代化新城。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp;&nbsp; 董庆华指出，为了使龙港新城规划在布局上更趋合理性，县委县政府进行了很多思考，作为联系龙港的县领导，他曾多次在双休日深入龙港各地进行调研，布置“两规合一”相关事宜。当前，龙港要崛起，要赶超，必须抓住机遇，要有大平台、大动作、大计划，把龙港的基础设施建设好。同时，龙港在前几年的发展过程中留下了很多历史遗留问题，我们要在体制机制上进行完善，把它处理好，促进龙港的和谐稳定。董庆华最后表示，龙港的发展是县委县政府及广大人民群众共同的责任，一定会给予高度重视，通过大家共同努力，再铸龙港新辉煌。</P>
<P>&nbsp;&nbsp;&nbsp; 之后，董庆华还参加了舥艚、望里等代表团的审议讨论。（记者 冯瑞元）</P>', N'hsg', NULL, 84, CAST(0x0000A8990107D3D8 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (118, N'《三人篮球赛规则》', N'规章制度', N'<DIV align=center>《三人篮球赛规则》</DIV>
<DIV align=center>&nbsp;</DIV>
<DIV>&nbsp;&nbsp; 中国篮协颁布了最新“三人篮球规则”并在第四届全国体育大会中执行，现将该规则结合我省第十四届省运会行业系统部“三人篮球规程”整理如下，并望在十四届省运会“三人篮球赛”和省首届体育大会“三人篮球赛”中执行， </DIV>
<DIV>&nbsp;&nbsp; 国际篮球正式篮球规则对三人篮球规则未明确提及的比赛规则均有效。公平竞争和体育道德精神是国际篮联和中国篮球协会“三人篮球规则”的组成部分。</DIV>
<DIV>第一条：场地</DIV>
<DIV>&nbsp;&nbsp; 国际篮联标准场地的半场。</DIV>
<DIV>第二条：球队</DIV>
<DIV>&nbsp;&nbsp; 每队最多由4名队员（三名上场球员和1名替补队员），1名教练和1名领队组成。</DIV>
<DIV>第三条：裁判员</DIV>
<DIV>&nbsp;&nbsp; 裁判人员由一名临场裁判员和3名记录员（1名记分员,1名计时员和1名14（20）秒计时员）组成。第二阶段比赛采用2名临场裁判员</DIV>
<DIV>第四条：比赛开始</DIV>
<DIV>&nbsp;&nbsp; 4．1&nbsp; 两队同时进行3分钟热身活动</DIV>
<DIV>&nbsp;&nbsp; 4．2&nbsp; 比赛在罚球线以跳球开始，主队面向篮筐。跳球后获得球权的队即可尝试投篮，不必将球运至三分线外。在随后所有跳球情况、下节比赛开始和决胜期比赛开始都将采用球权交替拥有的规则，交替拥有指示器箭头指运动员席。</DIV>
<DIV>第五条：比赛时期和胜队。</DIV>
<DIV>&nbsp;&nbsp; 5．1&nbsp; 比赛分两节进行（上、下二半时）每节6分钟，第二阶段每节8分钟，每节和决胜节之间休息1分钟。比赛中除队员受伤和裁判要求停表以及第二节和决胜期的最后一分钟外概不停表。</DIV>
<DIV>&nbsp;&nbsp; 5．2&nbsp; 在比赛时间内得分多的队为优胜队。</DIV>
<DIV>&nbsp;&nbsp; 5．3&nbsp; 第二节（下半时）比赛时间结束如二队得分相等，将进行2分钟的决胜期比赛，如再相等即场上队员进行一对一的罚球赛，并以一队领先，立即结束比赛。</DIV>
<DIV>&nbsp;&nbsp; 5．4&nbsp; 第二节和决胜期的最后一分钟须按正式国际篮球规则进行、投中也须停表。</DIV>
<DIV>&nbsp;&nbsp; 5．5&nbsp; 如在比赛规定开始时间3分钟后某队不足3人，则视该队弃权（比分记为0︰20）。</DIV>
<DIV>第六条：队员和球队犯规处罚。</DIV>
<DIV>&nbsp;&nbsp; 队员犯规达到4次须立即离开比赛场地。球队每节队员犯规累计达到3次时该队处于全队犯规处罚状态。</DIV>
<DIV>第七条：20秒钟装置</DIV>
<DIV>&nbsp;&nbsp; 进攻方须在20秒内尝试投篮</DIV>
<DIV>第八条：如何打球</DIV>
<DIV>&nbsp;&nbsp; 8．1&nbsp; 投中或最后一次罚球中篮后的行为：</DIV>
<DIV>&nbsp;&nbsp;&nbsp; ﹡非得分队一名球员在端线外掷界外球，球传至场内队员触球后，即视为比赛开始，在两分区内的持球者须将球传或运至三分线外。</DIV>
<DIV>&nbsp;&nbsp; ﹡球在三分线外后，须经进攻队两名球员（运球者或接球者和他的同队球员）的触球后尝试投篮。</DIV>
<DIV>8．2&nbsp; 每次投篮不中或最后一次罚球不中后的行为：</DIV>
<DIV>&nbsp;&nbsp; ﹡进攻队拥有篮板球权，不用将球至三分线外，可直接尝试投篮。</DIV>
<DIV>&nbsp;&nbsp; ﹡防守队拥有篮板球权，须将球至三分线外。</DIV>
<DIV>&nbsp;&nbsp; ﹡球在三分线外后，须经进攻队员两名球员（运球者或接球者和他的同队球员）的触球后尝试投篮。</DIV>
<DIV>8．3&nbsp; 抢断、失误等球权转换后的行为：</DIV>
<DIV>&nbsp;&nbsp; ﹡如果在二分区内出现球权转换情况，须至球三分线外，并经队员两名球员（运球者或接球者和他的同队球员）的触球后尝试投篮。</DIV>
<DIV>&nbsp;&nbsp; ﹡如果在三分线外出现球权转换情况，须经进攻队两名球员（抢断者和他的同队球员）的触球后尝试投篮。</DIV>
<DIV>8．4&nbsp; 进攻队球员在不足触球人数和投篮动作时，视为违例：但是做投篮动作的人在球未出手时被侵犯，视为防守队员犯规。</DIV>
<DIV>8．5&nbsp; 第二节（下半时）和每决胜期比赛开始、犯规（罚球除外）违例和球出界后的所有掷界外球的地点均在（靠边裁判员的一侧的）三分线弧顶&nbsp; 的延长线至边线交界处外，该处应用5厘米的标志线画出。裁判员须将球递交给掷界外球队员。场内的队员获得该队员掷入场内的球后，应按本规则第8条有关规定的行为继续比赛。</DIV>
<DIV>8．6&nbsp; 除非篮筐具有减压装置，不允许扣篮。</DIV>
<DIV>第九条：替换</DIV>
<DIV>&nbsp;&nbsp; 球死球和裁判鸣哨停止比赛时，允许替换并须尽快进行。</DIV>
<DIV>第十条：暂停</DIV>
<DIV>&nbsp;&nbsp; 比赛任何时候均不允许暂停。</DIV>
<DIV>&nbsp;</DIV>', N'hsg', NULL, 73, CAST(0x0000A899010F1EA4 AS DateTime))
SET IDENTITY_INSERT [dbo].[xinwentongzhi] OFF
/****** Object:  Table [dbo].[shoucangjilu]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shoucangjilu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[xwid] [varchar](50) NULL,
	[ziduan] [varchar](50) NULL,
	[biao] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shoucangjilu] ON
INSERT [dbo].[shoucangjilu] ([ID], [username], [xwid], [ziduan], [biao], [addtime]) VALUES (1, N'555', N'3', N'rizhibiaoti', N'rizhi', CAST(0x0000A899014CD000 AS DateTime))
SET IDENTITY_INSERT [dbo].[shoucangjilu] OFF
/****** Object:  Table [dbo].[shetuanxinxi]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shetuanxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shetuanbianhao] [varchar](50) NULL,
	[shetuanmingcheng] [varchar](50) NULL,
	[chenglishijian] [datetime] NULL,
	[shetuanshuxing] [varchar](50) NULL,
	[shetuanleibie] [varchar](50) NULL,
	[suoshuxuexiao] [varchar](50) NULL,
	[shetuanyouxiang] [varchar](50) NULL,
	[shetuanqqqun] [varchar](50) NULL,
	[shetuantupian] [varchar](50) NULL,
	[shechang] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[baomingfeiyong] [varchar](50) NULL,
	[shetuanjianjie] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shetuanxinxi] ON
INSERT [dbo].[shetuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [chenglishijian], [shetuanshuxing], [shetuanleibie], [suoshuxuexiao], [shetuanyouxiang], [shetuanqqqun], [shetuantupian], [shechang], [shouji], [baomingfeiyong], [shetuanjianjie], [issh], [addtime]) VALUES (1, N'03022221403711', N'志愿者', CAST(0x0000A8A100000000 AS DateTime), NULL, N'A类别', N'北京大学', N'4456465@qq.com', N'4456465', N'upload/1488464513013.jpg', N's001', N'13367752235', N'20', N'发个梵蒂冈的豆腐干豆腐大范甘迪法国打得过古典', N'是', CAST(0x0000A89901709D3C AS DateTime))
INSERT [dbo].[shetuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [chenglishijian], [shetuanshuxing], [shetuanleibie], [suoshuxuexiao], [shetuanyouxiang], [shetuanqqqun], [shetuantupian], [shechang], [shouji], [baomingfeiyong], [shetuanjianjie], [issh], [addtime]) VALUES (2, N'03022249413943', N'戏曲社', CAST(0x0000A8A600000000 AS DateTime), NULL, N'B类别', N'清华大学', N'445354453@qq.com', N'445354453', N'upload/1488466195423.jpg', N's002', N'18988576978', N'15', N'的非官方的高峰', N'是', CAST(0x0000A89901784A78 AS DateTime))
INSERT [dbo].[shetuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [chenglishijian], [shetuanshuxing], [shetuanleibie], [suoshuxuexiao], [shetuanyouxiang], [shetuanqqqun], [shetuantupian], [shechang], [shouji], [baomingfeiyong], [shetuanjianjie], [issh], [addtime]) VALUES (3, N'03022312166210', N'dsdg ', CAST(0x0000A87D00000000 AS DateTime), NULL, N'C类别', N'浙江大学', N'1564564156@qq.com', N'1564564156', N'upload/1488467544957.jpg', N's003', N'13367752235', N'20', N'dfgdfgf ', N'是', CAST(0x0000A899017E7628 AS DateTime))
SET IDENTITY_INSERT [dbo].[shetuanxinxi] OFF
/****** Object:  Table [dbo].[shetuanxiangce]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shetuanxiangce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[zhaopianbianhao] [varchar](50) NULL,
	[biaoti] [varchar](50) NULL,
	[tupian] [varchar](50) NULL,
	[jieshao] [varchar](500) NULL,
	[faburen] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shetuanxiangce] ON
INSERT [dbo].[shetuanxiangce] ([ID], [zhaopianbianhao], [biaoti], [tupian], [jieshao], [faburen], [issh], [addtime]) VALUES (1, N'235523', N'的非官方的高峰', N'upload/1488464563239.jpg', N'地方大幅度发鬼地方', N's001', N'否', CAST(0x0000A8990170CD48 AS DateTime))
INSERT [dbo].[shetuanxiangce] ([ID], [zhaopianbianhao], [biaoti], [tupian], [jieshao], [faburen], [issh], [addtime]) VALUES (2, N'2342412', N'丰东股份公告发', N'upload/1488464593810.jpg', N'地方个地方噶地方 ', N's001', N'否', CAST(0x0000A8990170EF44 AS DateTime))
INSERT [dbo].[shetuanxiangce] ([ID], [zhaopianbianhao], [biaoti], [tupian], [jieshao], [faburen], [issh], [addtime]) VALUES (3, N'是发斯蒂芬斯蒂芬', N'的负担感', N'upload/1488466228200.jpg', N'发个梵蒂冈地方', N's002', N'否', CAST(0x0000A89901786C74 AS DateTime))
INSERT [dbo].[shetuanxiangce] ([ID], [zhaopianbianhao], [biaoti], [tupian], [jieshao], [faburen], [issh], [addtime]) VALUES (4, N'风格很过分火锅法国', N'地方过分', N'upload/1488466265412.jpg', N'梵蒂冈地方个的辅导费 ', N's002', N'否', CAST(0x0000A899017897D0 AS DateTime))
INSERT [dbo].[shetuanxiangce] ([ID], [zhaopianbianhao], [biaoti], [tupian], [jieshao], [faburen], [issh], [addtime]) VALUES (5, N'34543534 ', N'观泉阅世 ', N'upload/1488466286252.jpg', N'电饭锅电饭锅', N's002', N'否', CAST(0x0000A8990178AF40 AS DateTime))
SET IDENTITY_INSERT [dbo].[shetuanxiangce] OFF
/****** Object:  Table [dbo].[shetuanhuodong]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shetuanhuodong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bianhao] [varchar](50) NULL,
	[biaoti] [varchar](300) NULL,
	[riqi] [varchar](50) NULL,
	[faburen] [varchar](50) NULL,
	[huodongjianjie] [text] NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shetuanhuodong] ON
INSERT [dbo].[shetuanhuodong] ([ID], [bianhao], [biaoti], [riqi], [faburen], [huodongjianjie], [issh], [addtime]) VALUES (1, N'03220013335488', N'法规和法国电话电费和发过火 ', N'2017-03-28', N's001', N'发个梵蒂冈放电饭锅地方个辅导费给对方电饭锅', N'是', CAST(0x0000A89900040BF0 AS DateTime))
INSERT [dbo].[shetuanhuodong] ([ID], [bianhao], [biaoti], [riqi], [faburen], [huodongjianjie], [issh], [addtime]) VALUES (2, N'03220022002118', N'让他回合肥工号高峰黑寡妇黑寡妇 ', N'2017-03-28', N's001', N'<p>
	发的鬼地方个的丰富的梵蒂冈分店给对方的丰富的给对方答复地方豆腐干豆腐g大范甘迪fd发
</p>
<p>
	df
</p>
<p>
	df个dfgd发d法国
</p>
<p>
	dfg fdfdg发
</p>', N'是', CAST(0x0000A89900061A1C AS DateTime))
INSERT [dbo].[shetuanhuodong] ([ID], [bianhao], [biaoti], [riqi], [faburen], [huodongjianjie], [issh], [addtime]) VALUES (3, N'03220035431880', N'而的佛挡杀佛萨达 ', N'2017-03-28', N's002', N'士大夫士大夫的说法是到水电费萨达', N'是', CAST(0x0000A8990009D9E0 AS DateTime))
INSERT [dbo].[shetuanhuodong] ([ID], [bianhao], [biaoti], [riqi], [faburen], [huodongjianjie], [issh], [addtime]) VALUES (4, N'03220035561946', N'方法的观点电饭锅给对方个的非官方的', N'2017-03-28', N's002', N'是的范德萨范德萨水电费水电费时代大厦水电费 &nbsp;', N'是', CAST(0x0000A8990009E91C AS DateTime))
INSERT [dbo].[shetuanhuodong] ([ID], [bianhao], [biaoti], [riqi], [faburen], [huodongjianjie], [issh], [addtime]) VALUES (5, N'03220036082108', N'的非官方的高峰的给对方电饭锅', N'2017-03-28', N's002', N'发工号法规和法国很反感好过分风高放火规范化股份个发', N'是', CAST(0x0000A8990009F600 AS DateTime))
SET IDENTITY_INSERT [dbo].[shetuanhuodong] OFF
/****** Object:  Table [dbo].[shechangxinxi]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shechangxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[chushengnianyue] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[touxiang] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shechangxinxi] ON
INSERT [dbo].[shechangxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [chushengnianyue], [shouji], [youxiang], [touxiang], [dizhi], [beizhu], [issh], [addtime]) VALUES (1, N's001', N'001', N'林芬芬', N'女', N'1994-03-10', N'13367752235', N'239865@qq.com', N'upload/1488463650313.jpg', N'是的范德萨发缩到梵蒂冈非官方的', N'的丰富的 肥嘟嘟否', N'是', CAST(0x0000A899016CA538 AS DateTime))
INSERT [dbo].[shechangxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [chushengnianyue], [shouji], [youxiang], [touxiang], [dizhi], [beizhu], [issh], [addtime]) VALUES (2, N's002', N'002', N'高洪波', N'男', N'1993-03-23', N'18988576978', N'239865@qq.com', N'upload/1488463681944.jpg', N'东方风格的发个梵蒂冈', N' 豆腐干豆腐地方', N'是', CAST(0x0000A899016CC734 AS DateTime))
INSERT [dbo].[shechangxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [chushengnianyue], [shouji], [youxiang], [touxiang], [dizhi], [beizhu], [issh], [addtime]) VALUES (3, N's003', N'003', N'王伟', N'男', N'2017-03-29', N'13858867732', N'237895@qq.com', N'upload/1488463716592.jpg', N'梵蒂冈梵蒂冈分店', N'的非官方的地方地方 ', N'是', CAST(0x0000A899016CEF0C AS DateTime))
INSERT [dbo].[shechangxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [chushengnianyue], [shouji], [youxiang], [touxiang], [dizhi], [beizhu], [issh], [addtime]) VALUES (4, N's004', N'004', N'王一', N'男', N'2000-03-22', N'13958736784', N'58333495@qq.com', N'upload/1488463784435.jpg', N'豆腐干豆腐', N'地方大法官地方', N'是', CAST(0x0000A899016D3D90 AS DateTime))
INSERT [dbo].[shechangxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [chushengnianyue], [shouji], [youxiang], [touxiang], [dizhi], [beizhu], [issh], [addtime]) VALUES (5, N's005', N'005', N'林芬芬', N'女', N'1994-03-08', N'13568876936', N'237895@qq.com', N'upload/1488463814970.jpg', N'风格的风格否的个', N'的说法是到分店的丰富的 ', N'是', CAST(0x0000A899016D6310 AS DateTime))
SET IDENTITY_INSERT [dbo].[shechangxinxi] OFF
/****** Object:  Table [dbo].[rizhi]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rizhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[rizhibiaoti] [varchar](300) NULL,
	[fabiaoshijian] [varchar](50) NULL,
	[rizhineirong] [text] NULL,
	[fabiaoren] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rizhi] ON
INSERT [dbo].[rizhi] ([ID], [rizhibiaoti], [fabiaoshijian], [rizhineirong], [fabiaoren], [addtime]) VALUES (1, N'和让他还让他好人挺好让他', N'2018-03-04 20:10:06', N'你后台认得你后押金跟不跟<img src="/jspmxsstglxtdzkf4295/attached/image/20180304/20180304201119_418.jpg" alt="" />', N's001', CAST(0x0000A899014C60AC AS DateTime))
INSERT [dbo].[rizhi] ([ID], [rizhibiaoti], [fabiaoshijian], [rizhineirong], [fabiaoren], [addtime]) VALUES (2, N'没让你的好人低年级的条件', N'2018-03-04 20:10:16', N'烦恼和汇添富那样的话海富通还不如不会的发交付给的很干净同一家&nbsp;<img src="/jspmxsstglxtdzkf4295/attached/image/20180304/20180304201037_858.gif" alt="" />', N's001', CAST(0x0000A899014C83D4 AS DateTime))
INSERT [dbo].[rizhi] ([ID], [rizhibiaoti], [fabiaoshijian], [rizhineirong], [fabiaoren], [addtime]) VALUES (3, N'烦恼和电脑送人头', N'2018-03-04 20:10:44', N'飞燕女回头太难忽然回头 好男人三天后燃烧体内与诺基亚的地图好的男人团模拟卷<img src="/jspmxsstglxtdzkf4295/attached/image/20180304/20180304201100_573.jpg" alt="" />', N's001', CAST(0x0000A899014C9D9C AS DateTime))
SET IDENTITY_INSERT [dbo].[rizhi] OFF
/****** Object:  Table [dbo].[richengbiaoxinxi]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[richengbiaoxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xueqi] [varchar](50) NULL,
	[richengbiao] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[richengbiaoxinxi] ON
INSERT [dbo].[richengbiaoxinxi] ([ID], [xueqi], [richengbiao], [addtime]) VALUES (1, N'一学期', N'upload/1520168545911.rar', CAST(0x0000A899015ABE04 AS DateTime))
INSERT [dbo].[richengbiaoxinxi] ([ID], [xueqi], [richengbiao], [addtime]) VALUES (2, N'二学期', N'upload/1520168572512.rar', CAST(0x0000A899015ADDA8 AS DateTime))
SET IDENTITY_INSERT [dbo].[richengbiaoxinxi] OFF
/****** Object:  Table [dbo].[pinglun]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pinglun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xinwenID] [varchar](50) NULL,
	[pinglunneirong] [varchar](300) NULL,
	[pinglunren] [varchar](50) NULL,
	[pingfen] [varchar](50) NULL,
	[biao] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[liuyanban]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[liuyanban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cheng] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[neirong] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[huifuneirong] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[liuyanban] ON
INSERT [dbo].[liuyanban] ([ID], [cheng], [xingbie], [QQ], [youxiang], [dianhua], [neirong], [addtime], [huifuneirong]) VALUES (2, N'豆腐干豆腐', N'2', N'', N'5837895@qq.com', N'', N'dsfsd sd', CAST(0x0000A89901141620 AS DateTime), N'dfdsdfg f')
SET IDENTITY_INSERT [dbo].[liuyanban] OFF
/****** Object:  Table [dbo].[kaoqin]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kaoqin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shetuanbianhao] [varchar](50) NULL,
	[shetuanmingcheng] [varchar](50) NULL,
	[kaoqinriqi] [varchar](50) NULL,
	[kaoqinzhuangtai] [varchar](50) NULL,
	[kaoqinchengyuan] [varchar](50) NULL,
	[beizhu] [varchar](500) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[kaoqin] ON
INSERT [dbo].[kaoqin] ([ID], [shetuanbianhao], [shetuanmingcheng], [kaoqinriqi], [kaoqinzhuangtai], [kaoqinchengyuan], [beizhu], [issh], [addtime]) VALUES (1, N'03022221403711', N'志愿者', N'2017-03-02 22:42:56', N'正常', N'111', N'发个非官方个好', N'否', CAST(0x0000A89901765AC4 AS DateTime))
INSERT [dbo].[kaoqin] ([ID], [shetuanbianhao], [shetuanmingcheng], [kaoqinriqi], [kaoqinzhuangtai], [kaoqinchengyuan], [beizhu], [issh], [addtime]) VALUES (2, N'03022221403711', N'志愿者', N'2017-03-03 22:43:08', N'请假', N'111', N'的发杆地方地方水电费', N'是', CAST(0x0000A89901766EB0 AS DateTime))
INSERT [dbo].[kaoqin] ([ID], [shetuanbianhao], [shetuanmingcheng], [kaoqinriqi], [kaoqinzhuangtai], [kaoqinchengyuan], [beizhu], [issh], [addtime]) VALUES (3, N'03022221403711', N'志愿者', N'2017-02-28 23:52:52', N'正常', N'111', N'dsdgdfg', N'是', CAST(0x0000A899018994A4 AS DateTime))
SET IDENTITY_INSERT [dbo].[kaoqin] OFF
/****** Object:  Table [dbo].[jucan]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jucan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[huodongbiaoti] [varchar](300) NULL,
	[huodongriqi] [varchar](50) NULL,
	[yonghuming] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[jucanjieshao] [varchar](500) NULL,
	[jubanren] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[jucan] ON
INSERT [dbo].[jucan] ([ID], [huodongbiaoti], [huodongriqi], [yonghuming], [xingming], [jucanjieshao], [jubanren], [addtime]) VALUES (1, N'fdf', N'2017-03-28', N'111', N'王伟', N'sddfgfdgfd', N's001', CAST(0x0000A89901169274 AS DateTime))
INSERT [dbo].[jucan] ([ID], [huodongbiaoti], [huodongriqi], [yonghuming], [xingming], [jucanjieshao], [jubanren], [addtime]) VALUES (2, N'dsfdsfdsfdsds', N'2017-03-28', N'555', N'何升高', N'dssdfsdfgfdgdf ', N's001', CAST(0x0000A899011FD9D8 AS DateTime))
SET IDENTITY_INSERT [dbo].[jucan] OFF
/****** Object:  Table [dbo].[huodongshenqing]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[huodongshenqing](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shetuanbianhao] [varchar](50) NULL,
	[shetuanmingcheng] [varchar](50) NULL,
	[mingcheng] [varchar](300) NULL,
	[huodongleixing] [varchar](50) NULL,
	[changdi] [varchar](300) NULL,
	[huodongshijian] [varchar](50) NULL,
	[huodongjianjie] [varchar](500) NULL,
	[shenqingren] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[huodongshenqing] ON
INSERT [dbo].[huodongshenqing] ([ID], [shetuanbianhao], [shetuanmingcheng], [mingcheng], [huodongleixing], [changdi], [huodongshijian], [huodongjianjie], [shenqingren], [issh], [addtime]) VALUES (1, N'03022221403711', N'志愿者', N'从VBvffgf规范化个', N'室外', N'发的规范化赶紧回家和', N'2017-3-1', N'梵蒂冈方法', N's001', N'是', CAST(0x0000A8990172F53C AS DateTime))
INSERT [dbo].[huodongshenqing] ([ID], [shetuanbianhao], [shetuanmingcheng], [mingcheng], [huodongleixing], [changdi], [huodongshijian], [huodongjianjie], [shenqingren], [issh], [addtime]) VALUES (2, N'03022249413943', N'戏曲社', N'刚回家刚回家火锅就', N'室内', N'规划局和工号否', N'2017-3-2', N'地方大法官地方', N's002', N'是', CAST(0x0000A8990178FA40 AS DateTime))
SET IDENTITY_INSERT [dbo].[huodongshenqing] OFF
/****** Object:  Table [dbo].[dx]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dx](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[leibie] [varchar](50) NULL,
	[content] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dx] ON
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (1, N'系统公告', N'<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P>
<P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (2, N'系统简介', N'系统简介')
SET IDENTITY_INSERT [dbo].[dx] OFF
/****** Object:  Table [dbo].[chengyuanxinxi]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chengyuanxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[shetuanbianhao] [varchar](50) NULL,
	[shetuanmingcheng] [varchar](50) NULL,
	[baomingfeiyong] [varchar](50) NULL,
	[yonghuming] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[rutuanriqi] [varchar](50) NULL,
	[baomingren] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[chengyuanxinxi] ON
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (1, N'03022221403711', N'志愿者', N'20', N'111', N'陈卫国', N'18988576978', N'5837895@qq.com', N'2017-03-28', N's001', N'是', N'发的电饭锅发', CAST(0x0000A89901711BCC AS DateTime))
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (2, N'03022221403711', N'志愿者', N'20', N'xwxxmx', N'吴江', N'13958736784', N'jrjtr@163.com', N'2017-03-28', N's001', N'是', N'梵蒂冈地方', CAST(0x0000A89901717BE4 AS DateTime))
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (3, N'03022249413943', N'戏曲社', N'15', N'leejie', N'李龙', N'13958736784', N'fege@126.com', N'2017-03-02', N's002', NULL, N'法规和法国和个', CAST(0x0000A8990178C6B0 AS DateTime))
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (4, N'03022249413943', N'戏曲社', N'15', N'mygod', N'陈德才', N'13353366557', N'gshf@yahoo.com', N'2017-03-01', N's002', NULL, N'借口借口了', CAST(0x0000A8990178D394 AS DateTime))
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (5, N'03022221403711', N'志愿者', N'20', N'555', N'何升高', N'13858867732', N'gsgs@163.com', N'2017-03-28', N's001', NULL, N'fddffdg', CAST(0x0000A8990189CBB8 AS DateTime))
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (6, N'03022221403711', N'志愿者', N'20', N'333', N'陈卫国', N'18988576978', N'5837895@qq.com', N'2017-03-28', N's001', NULL, N'', CAST(0x0000A89901144C08 AS DateTime))
INSERT [dbo].[chengyuanxinxi] ([ID], [shetuanbianhao], [shetuanmingcheng], [baomingfeiyong], [yonghuming], [xingming], [shouji], [youxiang], [rutuanriqi], [baomingren], [issh], [beizhu], [addtime]) VALUES (7, N'03022313091849', N'ertrrdfdfg', N'15', N'555', N'何升高', N'15988738956', N'gsgs@163.com', N'2018-03-04', N'555', NULL, N'回复被害人的他人挺好 ', CAST(0x0000A89901412F70 AS DateTime))
SET IDENTITY_INSERT [dbo].[chengyuanxinxi] OFF
/****** Object:  Table [dbo].[caiwuguanli]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[caiwuguanli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[bianhao] [varchar](50) NULL,
	[biaoti] [varchar](50) NULL,
	[xingzhi] [varchar](50) NULL,
	[jine] [varchar](50) NULL,
	[riqi] [varchar](50) NULL,
	[jingshouren] [varchar](50) NULL,
	[xiangguanhuodong] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[allusers]    Script Date: 03/04/2018 21:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allusers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[cx] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allusers] ON
INSERT [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (1, N'hsg', N'hsg', N'超级管理员', CAST(0x0000A899012CFF78 AS DateTime))
SET IDENTITY_INSERT [dbo].[allusers] OFF
/****** Object:  Default [DF__youqingli__addti__0CBAE877]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[youqinglianjie] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhu__addti__0DAF0CB0]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  CONSTRAINT [DF__yonghuzhu__addti__0DAF0CB0]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhuc__issh__0EA330E9]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  CONSTRAINT [DF__yonghuzhuc__issh__0EA330E9]  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__xinwenton__tianj__0F975522]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT ('hsg') FOR [tianjiaren]
GO
/****** Object:  Default [DF__xinwenton__addti__108B795B]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shoucangj__addti__29572725]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shoucangjilu] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shetuanxin__issh__117F9D94]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shetuanxinxi] ADD  CONSTRAINT [DF__shetuanxin__issh__117F9D94]  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__shetuanxi__addti__1273C1CD]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shetuanxinxi] ADD  CONSTRAINT [DF__shetuanxi__addti__1273C1CD]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shetuanxia__issh__1367E606]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shetuanxiangce] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__shetuanxi__addti__145C0A3F]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shetuanxiangce] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shetuanhuo__issh__15502E78]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shetuanhuodong] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__shetuanhu__addti__164452B1]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shetuanhuodong] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shechangxi__issh__173876EA]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shechangxinxi] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__shechangx__addti__182C9B23]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[shechangxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__rizhi__addtime__2B3F6F97]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[rizhi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__richengbi__addti__35BCFE0A]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[richengbiaoxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__pinglun__addtime__1920BF5C]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[pinglun] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__liuyanban__addti__1A14E395]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[liuyanban] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__kaoqin__issh__1B0907CE]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[kaoqin] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__kaoqin__addtime__1BFD2C07]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[kaoqin] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__jucan__addtime__1CF15040]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[jucan] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__huodongshe__issh__1DE57479]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[huodongshenqing] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__huodongsh__addti__1ED998B2]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[huodongshenqing] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__chengyuan__addti__1FCDBCEB]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[chengyuanxinxi] ADD  CONSTRAINT [DF__chengyuan__addti__1FCDBCEB]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__caiwuguan__addti__20C1E124]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[caiwuguanli] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__allusers__cx__21B6055D]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT ('普通管理员') FOR [cx]
GO
/****** Object:  Default [DF__allusers__addtim__22AA2996]    Script Date: 03/04/2018 21:10:18 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT (getdate()) FOR [addtime]
GO
