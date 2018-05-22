/*
Navicat SQL Server Data Transfer

Source Server         : sa
Source Server Version : 105000
Source Host           : .:1433
Source Database       : jspwsjxsjfw
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2018-04-06 09:35:35
*/


-- ----------------------------
-- Table structure for allusers
-- ----------------------------
DROP TABLE [dbo].[allusers]
GO
CREATE TABLE [dbo].[allusers] (
[ID] int NOT NULL IDENTITY(1,1) ,
[username] varchar(50) NULL ,
[pwd] varchar(50) NULL ,
[cx] varchar(50) NULL DEFAULT ('教师') ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[allusers]', RESEED, 3)
GO

-- ----------------------------
-- Records of allusers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[allusers] ON
GO
INSERT INTO [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (N'1', N'admin', N'123', N'超级管理员', N'2018-03-27 10:13:08.000')
GO
GO
INSERT INTO [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (N'2', N'ss', N'ss', N'教师', N'2018-03-27 13:25:05.000')
GO
GO
INSERT INTO [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (N'3', N'as', N'123', N'教师', N'2018-03-27 13:25:05.000')
GO
GO
SET IDENTITY_INSERT [dbo].[allusers] OFF
GO

-- ----------------------------
-- Table structure for cj
-- ----------------------------
DROP TABLE [dbo].[cj]
GO
CREATE TABLE [dbo].[cj] (
[ID] int NOT NULL IDENTITY(1,1) ,
[username] varchar(50) NULL ,
[cj] int NULL ,
[sjbh] varchar(50) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[cj]', RESEED, 5)
GO

-- ----------------------------
-- Records of cj
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cj] ON
GO
INSERT INTO [dbo].[cj] ([ID], [username], [cj], [sjbh], [addtime]) VALUES (N'2', N'666', N'80', N'555', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[cj] ([ID], [username], [cj], [sjbh], [addtime]) VALUES (N'5', N'fefe', N'20', N'666', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[cj] ([ID], [username], [cj], [sjbh], [addtime]) VALUES (N'4', N'555', N'60', N'002', N'2018-03-29 12:10:55.000')
GO
GO
SET IDENTITY_INSERT [dbo].[cj] OFF
GO

-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
DROP TABLE [dbo].[dtproperties]
GO
CREATE TABLE [dbo].[dtproperties] (
[id] int NOT NULL IDENTITY(1,1) ,
[objectid] int NULL ,
[property] varchar(64) NOT NULL ,
[value] varchar(255) NULL ,
[uvalue] nvarchar(255) NULL ,
[lvalue] image NULL ,
[version] int NOT NULL DEFAULT (0) 
)


GO

-- ----------------------------
-- Records of dtproperties
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dtproperties] ON
GO
SET IDENTITY_INSERT [dbo].[dtproperties] OFF
GO

-- ----------------------------
-- Table structure for dx
-- ----------------------------
DROP TABLE [dbo].[dx]
GO
CREATE TABLE [dbo].[dx] (
[ID] int NOT NULL IDENTITY(1,1) ,
[leibie] varchar(50) NULL ,
[content] text NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[dx]', RESEED, 2)
GO

-- ----------------------------
-- Records of dx
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dx] ON
GO
INSERT INTO [dbo].[dx] ([ID], [leibie], [content]) VALUES (N'1', N'系统公告', N'<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆在线学习系统！</P>')
GO
GO
INSERT INTO [dbo].[dx] ([ID], [leibie], [content]) VALUES (N'2', N'系统简介', N'<P>欢迎登陆在线学习系统，本系统为广大用户提供在线学习，知识浏览之用，希望为您提供有效帮助。</P>')
GO
GO
SET IDENTITY_INSERT [dbo].[dx] OFF
GO

-- ----------------------------
-- Table structure for kechengxinxi
-- ----------------------------
DROP TABLE [dbo].[kechengxinxi]
GO
CREATE TABLE [dbo].[kechengxinxi] (
[ID] int NOT NULL IDENTITY(1,1) ,
[kechengmingcheng] varchar(300) NULL ,
[xueshi] varchar(50) NULL ,
[xuefen] varchar(50) NULL ,
[leixing] varchar(50) NULL ,
[beizhu] varchar(500) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[kechengxinxi]', RESEED, 17)
GO

-- ----------------------------
-- Records of kechengxinxi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[kechengxinxi] ON
GO
INSERT INTO [dbo].[kechengxinxi] ([ID], [kechengmingcheng], [xueshi], [xuefen], [leixing], [beizhu], [addtime]) VALUES (N'15', N'英语', N'33', N'2', N'选修', N'百分点', N'2018-03-29 13:20:07.000')
GO
GO
INSERT INTO [dbo].[kechengxinxi] ([ID], [kechengmingcheng], [xueshi], [xuefen], [leixing], [beizhu], [addtime]) VALUES (N'16', N'高数', N'45', N'3', N'选修', N'飞洒', N'2018-03-29 13:26:07.000')
GO
GO
INSERT INTO [dbo].[kechengxinxi] ([ID], [kechengmingcheng], [xueshi], [xuefen], [leixing], [beizhu], [addtime]) VALUES (N'13', N'JAVA', N'64', N'4', N'必修', N'', N'2018-03-29 13:17:23.000')
GO
GO
INSERT INTO [dbo].[kechengxinxi] ([ID], [kechengmingcheng], [xueshi], [xuefen], [leixing], [beizhu], [addtime]) VALUES (N'17', N'思想政治', N'45', N'4', N'必修', N'阿什顿', N'2018-03-29 13:31:48.000')
GO
GO
SET IDENTITY_INSERT [dbo].[kechengxinxi] OFF
GO

-- ----------------------------
-- Table structure for liuyanban
-- ----------------------------
DROP TABLE [dbo].[liuyanban]
GO
CREATE TABLE [dbo].[liuyanban] (
[ID] int NOT NULL IDENTITY(1,1) ,
[cheng] varchar(50) NULL ,
[xingbie] varchar(2) NULL ,
[QQ] varchar(50) NULL ,
[youxiang] varchar(50) NULL ,
[dianhua] varchar(50) NULL ,
[neirong] varchar(500) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) ,
[huifuneirong] varchar(500) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[liuyanban]', RESEED, 4)
GO

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
SET IDENTITY_INSERT [dbo].[liuyanban] ON
GO
INSERT INTO [dbo].[liuyanban] ([ID], [cheng], [xingbie], [QQ], [youxiang], [dianhua], [neirong], [addtime], [huifuneirong]) VALUES (N'3', N'fda ', N'1', N'2656546', N'24544445@qq.com', N'87654637', N'dsdas', N'2018-03-29 16:17:07.000', null)
GO
GO
INSERT INTO [dbo].[liuyanban] ([ID], [cheng], [xingbie], [QQ], [youxiang], [dianhua], [neirong], [addtime], [huifuneirong]) VALUES (N'4', N'张', N'1', N'94934342', N'dd@yahoo.com', N'88302343', N'请问考试复习需要注意什么方法啊？', N'2018-03-30 21:46:14.490', null)
GO
GO
SET IDENTITY_INSERT [dbo].[liuyanban] OFF
GO

-- ----------------------------
-- Table structure for xinwentongzhi
-- ----------------------------
DROP TABLE [dbo].[xinwentongzhi]
GO
CREATE TABLE [dbo].[xinwentongzhi] (
[ID] int NOT NULL IDENTITY(1,1) ,
[biaoti] varchar(300) NULL ,
[leibie] varchar(50) NULL ,
[neirong] text NULL ,
[tianjiaren] varchar(50) NULL DEFAULT ('hsg') ,
[shouyetupian] varchar(50) NULL ,
[dianjilv] varchar(10) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[xinwentongzhi]', RESEED, 18)
GO

-- ----------------------------
-- Records of xinwentongzhi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[xinwentongzhi] ON
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'1', N'外国学校有什么奇怪的课程吗？', N'java', N'<STRONG>　</STRONG><STRONG>　</STRONG>
<P _extended="true"><STRONG _extended="true">　　最恐怖的课程：僵尸课<BR _extended="true"></STRONG>　　美国巴尔的摩大学为了最大化拓展学生的创意性思维，其传媒设计学院竟然别出心裁的想到一门超时代的另类课程——僵尸课，而且还特别邀请曾经写过僵尸电影的作者阿诺德·布隆伯格(Arnold Blumberg)教授僵尸课。</P>
<P _extended="true">　　选修这门课程的学生将观看16部经典僵尸电影，并阅读大量僵尸漫画。期末考试他们可以选择撰写自己理想中的僵尸剧本，或者绘制僵尸连环画。</P>
<P _extended="true">　　巴尔的摩大学传媒设计学院院长乔纳森表示，这是一门有趣、不同寻常的课程，从中可以接触到很多学问。能够把僵尸这个超现实的表现手法运用到文学和传媒作品的创作过程，用这些作品反映我们这个时代的真假善恶。</P>
<P _extended="true"><STRONG _extended="true">　　最雷人的课程：“Lady Gaga课”</STRONG></P>
<P _extended="true">　　被誉为“雷人教母”LadyGaga似乎已经成了特立独行、怪异、夸张、雷人等等字眼的代名词，如今，LadyGaga不仅仅在娱界受宠，甚至连大学校园也向她敞开了大门。</P>
<P _extended="true">　　从明年春天开始，美国南加州大学将会开设一门新的课程——“Lady Gaga课”。是的，你没看错，这门课程隶属于社会学范畴，研究的是Lady Gaga和她成名的路程。这门课程全名为 “Lady Gaga和名人社会学”，由南加州大学社会学教授马修·戴福伦开设并执教，一个学期仅招收50名学生选修。戴福伦本人也是一名Lady Gaga的粉丝。</P>
<P _extended="true">　<BR _extended="true"><STRONG _extended="true">　　最甜的课程：枫糖汁研究课</STRONG></P>
<P _extended="true">　　在阿尔弗雷德大学的这堂课上，学生们将和老师探讨枫糖汁是如何制作的以及这个制作过程自从美国原住民时代就没有改变过。学生们还有机会进入当地的制造厂、餐馆参观制作过程，甚至亲手制作，当然也有很多试吃的机会哦。这个课程毫无疑问是最受欢迎的。</P>
<P _extended="true">　<BR _extended="true"><STRONG _extended="true">　　最苦中作乐的课程：垃圾的乐事</STRONG></P>
<P _extended="true">　　圣塔克拉拉大学的这门课绝对是绿色环保，在课堂上老师会和学生一起从技术角度探索垃圾的分解和处理过程，尤其专注于两类垃圾：腐化的和不腐化的垃圾。同时，也会探讨与环境保护相关的社会公正问题，例如垃圾填埋场和焚烧厂总是位于比较贫困的社区，美国印第安人部落也是美国政府处理核废料的理想场所。</P>
<P _extended="true">　<BR _extended="true"><STRONG _extended="true">　　最大腕的课程：“贝克汉姆”课</STRONG></P>
<P _extended="true">　　贝克汉姆似乎一夜之间就成了足球界的传奇人物，他的招牌发型成了时尚风向标，他的影响力还不止如此，2000年，史塔福郡大学的教授Ellis Cashmore开设了一门研究贝克汉姆的课程，引起舆论一片哗然。</P>
<P _extended="true">　　足球文化是运动、媒体与文化的一个模块，而且该教授一直捍卫着这一观点。</P>
<P _extended="true">　　他指出，足球研究应该和电影研究一样，不该因为他是体育运动而被拒之校园大门之外。</P>
<P _extended="true">　</P>
<P _extended="true"><STRONG _extended="true">　　最科幻课程：哈利波特</STRONG></P>
<P _extended="true">　　哈利波特(Harry Potter)的影响力已渗透到生活的各个角落。</P>
<P _extended="true">　　最近，英国杜伦大学(Durham University)决定开设全英第一个专门研究哈利波特世界的课程。课程将以JK罗琳(JK Rowling)撰写的哈利波特故事做背景，研究现代社会中的歧视、公民身份以及欺凌现象等题目。</P>
<P _extended="true">　　哈利波特及幻觉时代(Harry Potter and the Age of Illusion)被作为杜伦大学教育学学位的一门选修课，将于明年正式开启。目前已有80位本科学生报名选修这门课程。</P>
<P _extended="true">　</P>
<P _extended="true"><STRONG _extended="true">　　最多动的课程：爬树课</STRONG></P>
<P _extended="true">　　康奈尔大学户外体育部给学生提供爬树课，根据康奈尔大学课程目录的介绍，这门课程将教会你：如何安全地爬上任何树，并在上面自由移动，甚至在树木之间灵活穿梭。</P>
<P _extended="true">　　这项课程我想除了训练学生的肢体胁调性之外，是不是还想说明人类与灵掌类动物的差距并不远。</P>
<P _extended="true">　<BR _extended="true"><STRONG _extended="true">　　最轻松的课程：散步的艺术</STRONG></P>
<P _extended="true">　　在肯塔基州当维尔市的中央学院，学生们可以选修“散步的艺术”这门课。</P>
<P _extended="true">　　在这门课上，学生们不但要阅读一些著名的漫步者的著作，如康德和尼采的作品，而且还会和教授及他的狗一块儿在附近散散步。</P>', N'hsg', N'upload/1317085910921.jpg', N'19', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'2', N'观美大学生村官开展“学广秀、话成长”六个一活动', N'net', N'&nbsp;&nbsp;&nbsp; 3月31日消息：连日来，观美镇在大学生村官中组织开展的“学广秀，话成长”活动引起强烈的反响。
<P>&nbsp;&nbsp;&nbsp;&nbsp;这段时间，大学生村官张广秀身患急性白血病不忘本职，依然扎根基层，无私奉献，全心全意为村民服务的感人事迹在大江南北广为传颂。观美镇抓住时机，紧密结合“创先争优”活动，在全体大学生村官中开展“六个一”宣教活动。其主要内容为组织一项学习讨论、撰写一篇心得体会、提交一则红色感言、开展一次主题活动、为观美群众做一事等。（星文 王颖）</P>', N'hsg', N'upload/1317086069593.jpg', N'12', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'3', N'组织部创建学习型党组织示范点 “十学”活动交上满意答卷', N'asp', N'<P>&nbsp;&nbsp;&nbsp; 县委组织部开展以“自学、选学、讲学、互学、传学、观学、带学、研学、督学、促学”为主要内容的“十学”活动，将学习型党组织创建活动与组织工作的实际相结合，取得了较好效果。</P>
<P>&nbsp;&nbsp;&nbsp; 县委组织部“十学”活动的主要内容有：</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 个人自学。开展了“爱读书、读好书、善读书”活动，每月推出“必读书目”，每季度推荐读一本好书，鼓励部机关7位同志利用业余时间报名参加公共管理在职硕士研究生学习。</P>
<P>&nbsp;&nbsp;&nbsp; 网络选学。引导组工干部参与“公务员培训网络大学堂”学习，在完成必修课的基础上，选择政治、法律、文化等不同学科内容进行在线学习，丰富了知识面。提倡组工干部每天上网浏览浙江组织工作网等，关注组织工作最新动态。</P>
<P>&nbsp;&nbsp;&nbsp; 轮流讲学。把2010年定为“业务知识加强年”，建立部机关干部轮流讲课制度，既讲业务，也讲专长，不限形式、不限题材，让部里的每位组工干部都有登台授课的机会。</P>
<P>&nbsp;&nbsp;&nbsp; 专题互学。采取“学习—工作—复习—讨论”的方式，工作开展之前，安排专题学习；完成工作之后再次复习，适时安排讨论，做到温故而知新。如今年“两会”后，组织全体组工干部对“两会”组织组工作进行回顾总结，提炼经验，反思不足。</P>
<P>&nbsp;&nbsp;&nbsp; 邀请传学。举办为期3天的组工干部培训班，邀请了市委党校蒋儒标教授等作了《国内外形势及科学发展观》和《组织工作宣传》讲座，进一步启发了组工干部的思考方式。</P>
<P>&nbsp;&nbsp;&nbsp; 外出观学。组织全体组工干部到文成刘基庙考察廉政文化，共撰写了27篇心得体会，并在“周一夜学”时，人人展示交流学习成果。</P>
<P>&nbsp;&nbsp;&nbsp; 顶岗带学。定期从乡镇和县直机关中挑选年轻干部到部机关顶岗锻炼，去年共有2批7名干部到部机关挂职锻炼，其中有2名被择优调入部机关工作。</P>
<P>&nbsp;&nbsp;&nbsp; 实践研学。实行“部领导+科室+组工干部”组团式服务基层模式，成立10个服务团队，每个团队分别联系若干个乡镇、若干个村和若干个县直部门。活动开展以来，共征集意见建议60多条，帮助基层解决问题40多个。</P>
<P>&nbsp;&nbsp;&nbsp; 考试督学。每季度利用“周一夜学”时间进行一次闭卷测试，内容主要是四项监督制度、《公务员法》、《干部任用条例》等，以检验学习成果。</P>
<P>&nbsp;&nbsp;&nbsp; 评议促学。在年终通报组工干部全年学习情况，并在部机关开展学习评议活动。根据评议结果，结合季度测试成绩及平时表现情况，予以通报，促进组工干部提高学习积极性。</P>
<P>&nbsp;&nbsp;&nbsp; “十学”活动强化了组工干部理论学习的力度和深度，形成了多调研、多深入、多出成果的作风，先后有2项工作得到省、市委领导批示，3项重点工作得到各级主流媒体的关注。部内同志先后在《中国人事报》、《浙江日报》《温州党建》等党报党刊发表各类调研文章、新闻报道30多篇。并在“苍南精神”、“抗台精神”、“城市名片”、“城市目标”“苍南赋”等“五项内容”评比中，有2位同志荣获二等奖2个（一等奖空缺）、三等奖3个。</P>', N'hsg', N'upload/1317086056687.jpg', N'95', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'5', N'听蔡依林的歌学物理？初中生创意答题笑爆网络', N'delphi', N'<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">据香港中通社消息：听蔡依林的歌可以学物理？台湾一位初中生在应考自然科时，因无法解答“牛顿第三运动定律的特征”，竟用偶像蔡依林的歌词做答，更因此意外获得3分。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">近日，台湾网络上留传一份“考试创意解答”，其中一份来自某初中的自然科段考试卷，其中一道物理题目“牛顿第三运动定律的特征”令无数同学望而却步，但有一名学生在无计可施的情况下，竟然想起偶像蔡依林其中一首歌的歌词有提到“牛顿第三定律”，连忙将《Let''sMoveIt》的歌词写在考卷上：“牛顿第三定律，你推我我就推你”。这位同学不仅将整段歌词都背下来，还以歌词中的“如果有牛顿爱的定律，心动一定更美丽”做为答案的结语。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">该学生靠此“出位”的答案获得3分，老师的评语是“答案可部份解释到第三定律的特征，故给予分数。”</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">有关考卷在网上热传，大批网友纷指其“创意、勇气可嘉”。有网友称，虽说“学音乐的孩子不会变坏”，但太沉迷流行乐曲，显然不是好事。亦有网友指出，学校可将要教授的知识，结合流行歌曲，使学生易于记诵。</P><!-- end_ct -->', N'hsg', N'upload/1317085922265.jpg', N'18', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'6', N'美国是怎样给中学生上生理课的', N'php', N'那年，我的二女儿十四岁，上八年级，在美国算初三。 <BR _extended="true">　　<BR _extended="true">　　一开学没几天，二女儿一放学回来就拿出几张纸来让我看，我想准又是选了新课，老师通知家长课程内容和评分标准，便随手拿笔，准备签字。但女儿这次一本正经地说，“老师说了，家长一定要在细读了以后，才可以签字。”我仔细一看，噢，原来是生理课，除了老生常谈以外，还有满满一页人体生理课的内容介绍，要征得家长同意，小孩才可以上这门课。我在心里一笑，这个也不陌生，因为女儿是老二，关于小孩上人体生理课的一切心惊肉跳及紧张过程，我们都已经通过已经上大学的大女儿经历过了，就大笔一挥，签字完毕。<BR _extended="true">　　<BR _extended="true">　　又过了一段时间的一天，女儿忽然很严肃地跟我说，有件事要谈谈。我马上放下手中的活，认真听她讲。她说，生理课有三个项目，可以任选其一，她选了带模拟婴儿的项目，问我可不可以。她又解释，模拟婴儿就是配上电子功能的假婴儿，基本具有真婴儿的功能。这个项目要求把小孩带回家，照看一天。看看女儿快与我齐头的个子，又想想家中已经十几年没有小婴儿了，我很兴奋地答应了她。<BR _extended="true">　　<BR _extended="true">　　第二天，我刚刚下班回家，二女儿又给了我两张纸，让我读和签字。这回我觉得很奇怪，开学已经有一段时间了，为什么又要签字。坐下一看，这回是关于模拟婴儿的重要性及价值，让家长签字保证不损坏，如有任何损坏，我们得赔偿，可高达500美元。咂咂，这假孩子还真不便宜，真有点签字领养婴儿的味道了。然后，女儿又告诉我，她已经在老师那儿排好了领婴儿回家的日子，是下周二。我马上告诉她，“不行，下周三，你代表学校参加一个统考，小婴儿应该安排在周四或者周五带回家。”女儿不太高兴地看着我，“妈，有那么严重吗，不就是一个模拟婴儿吗？” 我说：“你说了，这个假婴儿有真婴儿的功能，我知道带一个小婴儿有多麻烦，不怕一万，就怕万一，不可以影响周三的考试，日子一定得改。”<BR _extended="true">', N'hsg', null, N'97', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'7', N'夜学新风润苍南', N'vc', N'<P>　　对于苍南县的许多党员干部来说，每月至少有两个周一晚上的安排雷打不动——“夜学”。</P>
<P>　　近年来，苍南县各单位结合“周一夜学”制度，积极探索新形势下基层党员干部学习教育长效机制，鼓励基层党员干部“爱读书、读好书、善读书”。如今，全县已有139个单位开展“周一夜学”，基层党员干部的学风、工作作风有了新的转变。</P>
<P>　　从被动学到主动学</P>
<P>　　为提高“夜学”的吸引力，苍南县各部门、乡镇不断探索“周一夜学”的学习载体、方式，改变以往单纯传达文件、开会、读报等传统的理论学习方式，努力增强学习的针对性和实际成效。</P>
<P>　　桥墩镇在“周一夜学”中衍生出“桥墩讲堂”，安排普通党员轮流登上讲堂，让每位党员干部成为学习的主角。普通党员干部走上讲台，内容可以是理论学习的体会，也可以是工作实践中的收获。桥墩镇党政办的颜萍萍参加工作才两年，“周一夜学”让她受益匪浅：“通过夜学，不仅充实了自己的理论知识，更从许多同事的讲课中学到了业务知识，这是我们年轻公务员学本领的一个好平台。”</P>
<P>　　龙港镇不仅加强“夜学”活动，还通过龙港网，每天推出“党报早读”，汇聚当日从中央到地方的各级党报上的精华篇章、深度报道、权威声音，党员干部每天在较短的时间里就知晓天下大事。</P>
<P>　　“流动学堂”进基层</P>
<P>　　理论学习很容易出现“封闭灌输”、与实际脱节的问题，“周一夜学”推动机关党员干部密切联系基层，采取下乡调研、体验等形式向实践学习。</P>
<P>　　苍南县人大坚持每年两次将“夜学”活动移师基层，让党员干部在体验基层生活中了解社情民意，并把帮助解决实际问题作为深化“夜学”活动的生动实践。</P>
<P>　　苍南县委组织部在“夜学”活动中组织党员干部到农村参观学习。组工干部杨崇演深有感触地说，基层是一个大课堂，理论学习与基层考察相结合的“夜学”，不仅帮助我们从实践中汲取创新源泉，而且促使我们将所学的理论知识为大众释疑解惑服务。</P>
<P>　　今年，桥墩镇“周一夜学”的“桥墩讲堂”还办进了小山村。在小源村，该村党支部书记、山野油茶专业合作社主任李悌仲给镇里的党员干部讲解油茶种植方面的知识。在凤岭村，当地的土专家、农民杨庭平走上讲台，传授杨梅种植知识。</P>
<P>　　面向基层学习，敞开大门学习，“周一夜学”不但成为理论学习的平台，也日益成为党员干部了解基层的窗口，不断增进与人民群众的感情。</P>
<P>　　把学习成果</P>
<P>　　转化为工作能力</P>
<P>　　学习是为了增强创业创新的本领，这已成为苍南县党员干部的共识。“周一夜学”制度实施以来，该县各单位结合各自工作特点，把专业业务知识纳入基层理论学习内容，实现“以学促工”。</P>
<P>　　苍南县公安局在900多名民警中开展“周一夜学”。各党支部除理论学习外，还根据各科室的职能，加强业务学习。执法监察大队在学习法律法规过程中，结合近期的典型案例进行剖析点评，将理论与实际工作相结合。桥墩派出所民警林上真说：“多年坚持下来，‘周一夜学’已成为我们基层民警工作和生活的一部分。”</P>
<P>　　灵溪镇组建了一支由当地农业、工业、商贸等部门的专家组成的“周一夜学”讲师团，针对实际工作开设专业理论课，分批分专业地对党员干部进行指导。今年春耕备耕前，该镇农经局的党员干部利用“夜学”组织专业学习后，开展“科技下乡”活动。</P>
<P>　　去年以来，面对国际金融危机带来的影响，苍南县利用“周一夜学”在全县组织开展“后发崛起、全面跨越”大讨论。各部门、乡镇在学习讨论中，认真分析当前发展形势，集思广益想办法、出对策，全县上下形成了共克时艰的氛围。</P>
<P>　　学以致用、学有所用，苍南县越来越多的单位及党员干部在“夜学”中尝到了甜头，进一步增强了创业创新的本领和解决实际问题的能力。</P><!-- publish_helper_end --><!-- google_ad_section_end --><!-- 正文内容 end -->', N'hsg', null, N'24', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'8', N'对外汉语教案设计：格式与内容', N'vb', N'<P>&nbsp;</P>
<P>一. 教学对象/班级<BR>　　二. 课型：听力、口语、综合、汉字<BR>　　三. 教材：名称、第几册<BR>　　四. 教具：口型图、图片、多媒体课件<BR>　　五. 教学内容：词汇数量、课文内容<BR>　　六. 教学目的、要求：重点词语、语法点；功能目标；技能训练<BR>　　七. 教学重点、难点：如“了”、“把”、同义词<BR>　　八. 教学时间/课时安排/时间分配：100分钟<BR>　　九. 教学步骤/环节/过程：<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. 复习旧课： 字、词、语法、课文，写、说等。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 学习新课：<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （1） 学习生词：认读、部分词语扩展、用法<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （2） 讲练课文：听、读、讲、会话、问答<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （3） 重点词语讲练：<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （4） 语法点讲练： 释义、形式、练习<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 活用练习：综合练习、各类形式的练习题<BR>　　4. 小结与布置作业： <BR>　　十.板书设计：<BR>　　十一. 课后记/思考/评估：成功与教训；值得注意的问题；哪些问题没讲清楚；哪些问题学生掌握起来较困难等。<BR></P>', N'hsg', null, N'50', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'9', N'彭佳学会见英国超准能源公司总经理', N'java', N'&nbsp;&nbsp;&nbsp; 1月18日，市委常委、常务副市长彭佳学会见了来温考察的英国超准能源公司总经理王光明一行。 
<P>　　据了解，超准能源于1997年在我市附近海域发现储量潜力可观的气田（丽水36—1），该气田距离温州市区140公里，距离洞头仅数十公里。作为离浙江最近的油气田，该项目的开发将优化我市能源消费格局，为我市提供天然气清洁能源，提高居民生活质量，受到历届党委、政府的高度重视。目前，陆上终端处理厂已确定选址于洞头县霓屿乡。</P>
<P>　　会见时，彭佳学说，超准能源在东海开发的丽水36—1气田工程历来受各级党委、政府的重视。“十二五”时期也是温州能源产业发展的重要时期。该项目选择了在温州登陆，又是有利于改善百姓生活的民生工程，政府必将尽心尽力承接项目，尽快尽好推进项目。希望项目尽早建成，尽量提高供气量，将来成为主力能源，惠及每家每户和各个企业。也希望超准能源以此项目为基础，引进先进技术改进温州传统产业，为温州产业转型升级贡献力量。</P>
<P>　　王光明说，能够在温州这么一个充满活力的地方，作为一个“小分子”参与到城市能源产业的建设中，提供自己微薄的力量，感到十分荣幸。公司将努力加快气田的开发进程，尽快向温州提供天然气资源。&nbsp;（记者 陈里雅） </P>', N'hsg', null, N'19', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'10', N'开学在即 教辅资料热销', N'asp', N'<P align=center><IMG style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000" src="/upload/editorfiles/2011.8.25_10.54.7_9168.jpg" border=0></P>
<P><BR>&nbsp;&nbsp;&nbsp; 再过一周，就要开学了。昨天记者在钱库新华书店看到，有不少家长和学生已经为新学期做准备了，他们纷纷前来添置新教辅用书，而书店里的店员也在忙着整理货源，更新教辅书。</P>
<P>&nbsp;&nbsp;&nbsp; 昨天下午记者在新华书店看到，教辅类书籍五花八门，各科目一应俱全，陆续有学生前来教辅类专区选择购买适合自己的参考资料，有的席地围坐在教辅书籍区，细心浏览各种教辅书籍。</P>
<P>&nbsp;&nbsp;&nbsp; 据了解，每学期开学时，各级教育部门都会结合教材提供一个教辅推荐目录，指导学生、家长自愿购买。这些推荐的教辅图书与教材同步配套，结合性较好，对学生学习、家长辅导很有益处。（王晟）<BR></P>', N'hsg', null, N'17', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'11', N'灵二高学生“美食”迎新年（图）', N'net', N'<TABLE cellSpacing=20 cellPadding=0 align=center>
<TBODY>
<TR align=middle>
<TD><IMG src="http://pic2.66wz.com/0/10/35/61/10356111_043078.jpg" border=0></TD></TR></TBODY></TABLE>　　 12月28日消息：昨天，灵溪二高举办一场“缤纷二高欢庆元旦”为主题的美食一条街活动，学生们用这种特殊的方式来欢庆元旦，喜迎新年。该活动以班级为单位，一个班级一个摊位，学生通过亲手制作的各种美食，向同学、老师展示自己的烹饪本领，同时也增强了学生们的劳动意识，提高学生的综合素质。（新中） <!--advertisement code begin--><!--advertisement code end--><!--function: content() parse end  0ms cost! -->', N'hsg', null, N'95', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'12', N'侯金亮：“硕士蚁族”是高学历教育的悲剧', N'asp', N'<P style="TEXT-INDENT: 2em; MARGIN: 0px 3px 15px">廉思推出《蚁族Ⅱ—谁的时代》，书中调查显示，<!--keyword--><A class=a-tips-Article-QQ href="http://edu.qq.com/y/"><!--/keyword--><FONT color=#0b3b8c>研究生<!--keyword--></FONT></A>(<A class=a-tips-Article-QQ href="http://bbs.edu.qq.com/b-1000090393" target=_blank><FONT color=#000000>论坛</FONT></A>) <!--/keyword-->以上学历所占比例为7.2%。两次调查中比例最高的均为本科学历；变化最大的是研究生以上学历的比例，从2009年的1.6%增加到2010年的7.2%，本科教育也从31.9%上升到49.8%，蚁族群体的学历层次在逐步提升，研究生的就业形势日趋严峻。（12月28日《新京报》）</P>
<P style="TEXT-INDENT: 2em; MARGIN: 0px 3px 15px">“硕士蚁族”是一个比较扎眼的词汇，硕士本身是高学历的代称之一，而提到“蚁族”让人想到的是低学历的人群，而今这两个原本不搭边的词汇合成了一个词，这背后的社会变迁与冷暖让人深思。曾几何时，拿到硕士学历相当于拿到了一张就业“王牌”，意味着好工作，高收入，高待遇，也意味着命运的改变，尤其那些从农村一步步考上来的硕士。然而，没过多久，硕士就业难也俨然成为一个社会问题，试想，高学历人群都陷入就业难，别的还用说吗？这种“蚁族”的年龄与学历向上延伸的趋势值得反思与警醒。</P>
<P style="TEXT-INDENT: 2em; MARGIN: 0px 3px 15px">“就业难，难于上青天”这是一个真实的写照。2011年<!--keyword--><A class=a-tips-Article-QQ href="http://edu.qq.com/y/"><!--/keyword--><FONT color=#0b3b8c>考研<!--keyword--></FONT></A>(<A class=a-tips-Article-QQ href="http://bbs.edu.qq.com/b-1000090393" target=_blank><FONT color=#000000>论坛</FONT></A>) <!--/keyword-->人数突破150万，国家公务员考试报名人数突破140万，加上各地方公务员考试的人数，数字更是惊人。即将毕业之时，大学生们面临三种选择，一是找工作；二是考研；三是考公务员。由于工作难找，使得很多大学生选择考研或考公务员，他们选择考研的原因比较现实，缓冲一下就业压力，同时学点东西。然而事实是，考公务员概率太低，大部分人只是为碰运气，考研比较务实一些，但三年研究生读完，找的工作可能还不如当初本科毕业时了，此种反差令人心酸。不得不承认，而今是“博士生抢硕士生饭碗，硕士生抢本科生饭碗，本科生抢专科生饭碗”。随着，越来越多的硕士生加入到“蚁族”行列，我们不禁慨叹，读书改变命运越来越难，这个促进阶层流动的主要渠道失灵了。</P>
<P style="TEXT-INDENT: 2em; MARGIN: 0px 3px 15px">笔者作为一名在读硕士，对时下高学历人群就业难深有体会。很多重点大学毕业的硕士，选择去教中学，甚至小学，一些好点的中学、小学硕士生可能也进不去。现在，大学招聘老师一般要求是博士学历，很多重点大学要求博士毕业的学校必须比自己的学校排名靠前，更甚者，要求博士在读本科与硕士时的学校也是名校，有的另外要求必须要有海外学习经历。硕士毕业到大学当个辅导员就算是相当不错了。</P>
<P style="TEXT-INDENT: 2em; MARGIN: 0px 3px 15px">凡是有果必有因，到底是什么原因导致了如今的硕士、博士“通货膨胀”，严重贬值呢？笔者认为主要有两点：一是盲目的扩招；二是高学历教育质量的下滑。为了缓和本科生的就业压力，有关部门加大了硕士生的招生数量，这和当年本科生扩招如出一辙。本科生扩招成了大学生就业难的原因之一，硕士生的扩招也同样导致了硕士生的就业难。笔者不反对扩招，但扩招的速度应该有个节制。很多高校，尤其是重点高校，一些专业，硕士的招生数量远超过了本科生，令人惊愕的是3年内招生数量竟然翻一番。与之相对应的是，教育质量的下滑，招生数量突飞猛涨，而相应的教育师资与设施却不完善，致使“三流老师带硕士、博士”的现象层出不穷。研究生的数量太多，质量下降，找工作相应的也就难了，贬值也就是必然的了。</P>
<P style="TEXT-INDENT: 2em; MARGIN: 0px 3px 15px">当然，硕士蚁族的产生原因具有多样性，硕士博士这些高学历也未必代表高能力。倘若硕士蚁族仅是个别现象，无可厚非。实际上，随着越来越多的硕士加入“蚁族”，这个现象具有一定的普遍性，其背后反映出来的社会经济，乃至教育问题必须引起关注。否则，读书无用就会真的成为现实，届时，教育价值就会流失，促进阶层流动的主要渠道将会闭塞，阶层分化与不公平感随之蔓延，损及社会长远发展。因而，反思当前高学历教育存在的问题，捍卫教育价值已是刻不容缓。</P>', N'hsg', null, N'65', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'13', N'钱库镇举办学习《胡锦涛在庆祝建党90周年大会上的讲话》的专题讲座', N'delphi', N'<P align=center><IMG style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000" src="/upload/editorfiles/2011.8.30_8.15.53_3937.jpg" border=0></P><BR>
<P align=center><IMG style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000" src="/upload/editorfiles/2011.8.30_8.16.1_6678.jpg" border=0></P><BR>
<P align=center><IMG style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000" src="/upload/editorfiles/2011.8.30_8.16.10_8763.jpg" border=0></P><BR>
<DIV>&nbsp;&nbsp;&nbsp; 8月26日，钱库镇在镇政府二楼会议室举办学习《胡锦涛在庆祝建党90周年大会上的讲话》的专题讲座，邀请到县委党校讲师团徐声响到现场讲座。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 课堂上，徐声响老师围绕胡锦涛总书记讲话精神，以新民主主义为主线，回顾了中国共产党90年的光辉历程和取得的伟大成就，分别阐述了中国共产党的诞生、发展、壮大历程。胡锦涛总书记在建党90周年的重要讲话，既有沉重的历史责任感，又有鲜明的时代特征，是不断推动我国经济社会发展、推进党的执政能力建设和先进性建设的科学指南。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 徐老师还从我镇发展的实际出发，以图文并茂的形式作了深入浅出生动的讲解，精彩的讲座不时引来台下阵阵热烈的掌声。（钱宣）</DIV>', N'hsg', null, N'25', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'15', N'扎根农村热土 唱响青春之歌--记三秀桥村大学生村官先进事迹', N'delphi', N'<DIV>&nbsp;&nbsp;&nbsp; 金苏蓉，女，中共预备党员，毕业于温州大学，本科学历。2009年考取苍南县大学生“村官”，并分配到钱库镇三秀桥村工作，担任钱库镇三秀桥村村主任助理。</DIV>
<DIV><B>&nbsp;&nbsp;&nbsp; 一、注重学习，坚持理论学习促提高</B></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 金苏蓉同志自到村任职以来，以邓小平理论和“三个代表”重要思想为指导，认真学习贯彻党的十七届三中全会和各级农村工作会议的精神，深入学习贯彻落实科学发展观，协助新农村建设的各项工作任务，加强对“三农”的信息服务。在学习中，她不断更新知识，积极参加镇政府组织的会议和学习培训，认真做好记录，回村后协助村领导在“两委”会上传达镇政府会议精神，做好从镇政府到村的信息传递员。并于2009年10月参加温州市第二期大学生村官培训，将学到的农村知识与其它同事交流，促进共同发展。</DIV>
<DIV>在学习和实践科学发展观活动中，她坚持“以人为本”为中心，在求真，务实，扎实上下功夫，把学习实践活动的成效真正体现到解决突出问题，促进各项工作上来；坚持走群众路线，做到制定村级政策向群众问计，听取群众意见；坚持搞好统筹兼顾，正确处理开展学习实践科学发展观活动与做好各项工作的关系，确保学习实践科学发展观活动取得实实在在的成效。</DIV>
<DIV><B>&nbsp;&nbsp;&nbsp; 二、努力工作，推动各项工作协调发展</B></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 1、扎根基层解民忧，电力灌溉备春耕。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 由于三秀桥村2008年进行电气化改造，原有机埠箱部分拆毁和损坏。在今年春耕备耕期间，为了满足村民灌溉水田用电需求，安全用电，她和村两委共同努力，向供电所书面申请要求安装安全型机埠箱，很好的解决了村民在春耕备耕时的用电困难，解决了村民在春耕中碰到的实际困难，提高了他们的收成。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 2、尽职尽责，提升远教管理和服务水平。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 自担任三秀桥村专职远教管理员以来，她深知有责任管好、用好远程教育设备及网上资源。她定期对远教设备进行检查和维护，保证了培训网络的正常接收。按照上级有关要求，结合本村实他将远程教育的一系列规章制度在站点上墙公示，同时在村宣传窗内开辟了远程教育专栏，张贴远教工作的各类工作计划、培训时间、内容预告及网上下载的宣传资料，提高了党员干部群众对远程教育的的认知度。为了保证远教工作的长效性，她结合村情民情，坚持“实际、实用、实效”的教学理念，以教学对象的需求为导向，充分利用远程教育平台，使得“学习形式随着村情走、学习内容紧跟生产走、学习需求紧跟群众走、学习效果紧赶发展走”，同时建立学后讨论，听取群众信息反馈，及时据实调整教学内容和教学计划，使学习规范化。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 3、扎实工作，整改村容村貌。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 三秀桥村地处钱库镇城南郊区，到了夜晚，村里显得有些僻静，居住在周围的村民平时人身安全和财产安全都得不到保障。她得知这一情况后，为了改善村民居住环境的问题，和村支两委干部一道，主动到镇党委、政府汇报，争取资金，在金鑫桥两岸修建了便民水泥路，并在两岸周围兴建路灯，以此来保护村民的人身安全和财产安全。如今一排排整齐的路灯立在两岸，不仅优化了居住环境，更为三秀桥村的治安工作做出重要贡献，得到群众的一致好评。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 4、深入群众，参与信访助手工作。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 社会转型时期，不同利益相互交织，不同观点相互碰撞，各种各样的社会问题，民生问题层出不穷，体现在普通群众身上，在合法权益受到侵犯时，在合理的诉求未受重视时，信访工作，就成了一项重要工作。三秀桥村都是在每个星期二开展信访工作，她作为村信访助手，在记录来访者的反映的情况时，不断积极参与村民矛盾的协调工作。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 5、关心村民冷暖，真心为民谋福利。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 她立足三秀桥村的现实环境，给群众以真诚的关怀，用实际行动融入到村民中去。由于三秀桥村位于钱库镇城南郊区，横贯龙金大桥，随着工业发展、农村城镇化进程加快，使得部分村民土地被征，主要是用于农村公共事业的发展，为外来移民的提供住所，企业单位厂房征用的土地等。为了鼓励失地农民增收创业，苍南县社保局实施的失地农民社保，使被征地的农户有了基本生活保障。然而由于2008年三秀桥村两委的换届及村办公室的搬迁，使得以前被征地的农户存在漏报现象，没能及时享受基本生活保障金。2009年伊始，她和其他村干部迅速行动起来，整理名单，查漏补缺，电话通知，分类管理，完成被征地村民数量的统计，收集2008年前漏报的村民名单，并将漏报土地被征户进行了补报，并及时上交县劳动保障局，使村民得到应有的保障和利益，真正替这些失地农户解决了后顾之忧。现很多符合条件的村民，已领取了征地基本生活保障金。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 6、乐于奉献，全心全意为村民服务。</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 在2009年8月莫拉克台风来袭，她始终坚持在岗位上，不断的协调人员、联系各抗台分队的负责人、落实各项抗台工作、及时汇报情况、做好后勤工作。在台风肆虐之际，积极的配合村委做好危房户住户的思想工作，把群众的安全放在首位，及时排查各个险情点，通过帮助转移低洼地带住房户、疏通排洪沟确保了群众无人员伤亡。这些细致、体贴的工作，及时保障了抗台工作的胜利。<BR><B>&nbsp;&nbsp;&nbsp; 三、</B><B>有所作为，干部群众普遍认可。</B></DIV>
<DIV>&nbsp;&nbsp;&nbsp; 近一年的工作与学习，她加深了对科学发展观、新农村建设的理解，坚定了投身社会主义新农村的信心，养成了坚韧不拔、吃苦耐劳、顽强拼搏的精神品质。农村工作的锻炼让她深切感受到目前农村还相对比较落后，归跟结底是缺少人才。她深刻认识到作为大学生“村官”必须担负起农村科技推广带头人、文明创建引路人这个历史重任。通过努力工作，她以实际行动为乡村带来清新之风，给渴望科技文化知识的群众带来希望的种子，给农村基层注入新鲜活力。她担任“村官”时间尽管很短暂，但三秀桥村却发生了一些的变化和取得了一系列的成绩，这些变化与成绩与她的付出是分不开的。作为一名“村官”，她充分发挥了自己的特长，积极配合村委会，为百姓办了实事，她得到村干部和村民们的一致认可。<B></B></DIV>', N'hsg', null, N'98', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'17', N'test', N'asp', N'herhrehre', N'hsg', N'', N'1', N'2018-03-29 10:15:18.000')
GO
GO
INSERT INTO [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [addtime]) VALUES (N'18', N'wehweh', N'asp', N'herherher', N'hsg', N'', N'2', N'2018-03-29 10:15:18.000')
GO
GO
SET IDENTITY_INSERT [dbo].[xinwentongzhi] OFF
GO

-- ----------------------------
-- Table structure for xuanzeti
-- ----------------------------
DROP TABLE [dbo].[xuanzeti]
GO
CREATE TABLE [dbo].[xuanzeti] (
[ID] int NOT NULL IDENTITY(1,1) ,
[zhuanye] varchar(50) NULL ,
[xueke] varchar(50) NULL ,
[timu] varchar(50) NULL ,
[xuanxiangA] varchar(50) NULL ,
[xuanxiangB] varchar(50) NULL ,
[xuanxiangC] varchar(50) NULL ,
[xuanxiangD] varchar(50) NULL ,
[daan] varchar(50) NULL ,
[nanduxishu] varchar(50) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[xuanzeti]', RESEED, 23)
GO

-- ----------------------------
-- Records of xuanzeti
-- ----------------------------
SET IDENTITY_INSERT [dbo].[xuanzeti] ON
GO
INSERT INTO [dbo].[xuanzeti] ([ID], [zhuanye], [xueke], [timu], [xuanxiangA], [xuanxiangB], [xuanxiangC], [xuanxiangD], [daan], [nanduxishu], [addtime]) VALUES (N'19', N'数学', N'高数', N'dsa', N'sadsa', N'sadas', N'dsad', N'dsa', N'A', N'中', N'2018-03-29 13:29:37.000')
GO
GO
INSERT INTO [dbo].[xuanzeti] ([ID], [zhuanye], [xueke], [timu], [xuanxiangA], [xuanxiangB], [xuanxiangC], [xuanxiangD], [daan], [nanduxishu], [addtime]) VALUES (N'22', N'数学', N'高数', N'dgds', N'gfdg', N'hdffg', N'fdhdf', N'gfd', N'A', N'难', N'2018-03-29 13:31:08.000')
GO
GO
INSERT INTO [dbo].[xuanzeti] ([ID], [zhuanye], [xueke], [timu], [xuanxiangA], [xuanxiangB], [xuanxiangC], [xuanxiangD], [daan], [nanduxishu], [addtime]) VALUES (N'21', N'计算机', N'JAVA', N'dsad', N'fds', N'zxcv', N'vxc', N'as', N'A', N'难', N'2018-03-29 13:30:43.000')
GO
GO
INSERT INTO [dbo].[xuanzeti] ([ID], [zhuanye], [xueke], [timu], [xuanxiangA], [xuanxiangB], [xuanxiangC], [xuanxiangD], [daan], [nanduxishu], [addtime]) VALUES (N'23', N'法律', N'思想政治', N'v刹下', N'盛大', N'sad', N'dsf', N'fdsg', N'A', N'难', N'2018-03-29 13:32:03.000')
GO
GO
SET IDENTITY_INSERT [dbo].[xuanzeti] OFF
GO

-- ----------------------------
-- Table structure for xuexishipin
-- ----------------------------
DROP TABLE [dbo].[xuexishipin]
GO
CREATE TABLE [dbo].[xuexishipin] (
[ID] int NOT NULL IDENTITY(1,1) ,
[bianhao] varchar(50) NULL ,
[mingcheng] varchar(300) NULL ,
[kecheng] varchar(50) NULL ,
[zhujiangren] varchar(50) NULL ,
[neirong] text NULL ,
[wenjian] varchar(50) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[xuexishipin]', RESEED, 11)
GO

-- ----------------------------
-- Records of xuexishipin
-- ----------------------------
SET IDENTITY_INSERT [dbo].[xuexishipin] ON
GO
INSERT INTO [dbo].[xuexishipin] ([ID], [bianhao], [mingcheng], [kecheng], [zhujiangren], [neirong], [wenjian], [addtime]) VALUES (N'7', N'124', N'JAVA', N'JAVA', N'骆华', N'asd ', N'dsa ', N'2018-03-29 13:28:04.000')
GO
GO
INSERT INTO [dbo].[xuexishipin] ([ID], [bianhao], [mingcheng], [kecheng], [zhujiangren], [neirong], [wenjian], [addtime]) VALUES (N'8', N'124', N'fd ', N'思想政治', N'sda', N'dsadasf', N'dsad ', N'2018-03-29 13:38:25.000')
GO
GO
INSERT INTO [dbo].[xuexishipin] ([ID], [bianhao], [mingcheng], [kecheng], [zhujiangren], [neirong], [wenjian], [addtime]) VALUES (N'9', N'11', N'dsadas', N'思想政治', N'asdasd', N'sadsafsdafdasd', N'dsafsa', N'2018-03-29 13:40:13.000')
GO
GO
INSERT INTO [dbo].[xuexishipin] ([ID], [bianhao], [mingcheng], [kecheng], [zhujiangren], [neirong], [wenjian], [addtime]) VALUES (N'10', N'005', N'java编写基础', N'JAVA', N'李小刚', N'的撒旦', N'个梵蒂冈', N'2018-03-29 14:01:34.000')
GO
GO
INSERT INTO [dbo].[xuexishipin] ([ID], [bianhao], [mingcheng], [kecheng], [zhujiangren], [neirong], [wenjian], [addtime]) VALUES (N'11', N'1253', N'g高数', N'高数', N'雷横', N'倒萨', N'sdasd ', N'2018-03-29 16:21:34.000')
GO
GO
SET IDENTITY_INSERT [dbo].[xuexishipin] OFF
GO

-- ----------------------------
-- Table structure for yonghuzhuce
-- ----------------------------
DROP TABLE [dbo].[yonghuzhuce]
GO
CREATE TABLE [dbo].[yonghuzhuce] (
[ID] int NOT NULL IDENTITY(1,1) ,
[yonghuming] varchar(50) NULL ,
[mima] varchar(50) NULL ,
[xingming] varchar(50) NULL ,
[xingbie] varchar(2) NULL ,
[chushengnianyue] varchar(50) NULL ,
[QQ] varchar(50) NULL ,
[youxiang] varchar(50) NULL ,
[dianhua] varchar(50) NULL ,
[shenfenzheng] varchar(50) NULL ,
[touxiang] varchar(50) NULL ,
[dizhi] varchar(300) NULL ,
[beizhu] varchar(500) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) ,
[issh] varchar(2) NULL DEFAULT ('否') 
)


GO
DBCC CHECKIDENT(N'[dbo].[yonghuzhuce]', RESEED, 8)
GO

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
SET IDENTITY_INSERT [dbo].[yonghuzhuce] ON
GO
INSERT INTO [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (N'7', N'sad ', N'123', N'fds', N'男', N'2014-10-01', N'265464', N'sada ', N'dsa d', N'dasdad', N'dsad', N'dsad', N'dsada', N'2018-03-29 13:34:33.000', N'是')
GO
GO
INSERT INTO [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (N'8', N'dsaf', N'123', N'gfse', N'男', N'2014-10-01', N'545656', N'dsaf', N'445654', N'474565', N'', N'dsa dsa d', N'dsadfas', N'2018-03-29 16:25:40.000', N'是')
GO
GO
INSERT INTO [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (N'6', N'as', N'123', N'雷横', N'男', N'', N'', N'', N'', N'', N'', N'', N'', N'2018-03-29 16:42:43.000', N'是')
GO
GO
SET IDENTITY_INSERT [dbo].[yonghuzhuce] OFF
GO

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE [dbo].[youqinglianjie]
GO
CREATE TABLE [dbo].[youqinglianjie] (
[ID] int NOT NULL IDENTITY(1,1) ,
[wangzhanmingcheng] varchar(50) NULL ,
[wangzhi] varchar(50) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[youqinglianjie]', RESEED, 6)
GO

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
SET IDENTITY_INSERT [dbo].[youqinglianjie] ON
GO
INSERT INTO [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (N'2', N'谷歌', N'http://www.google.com.hk', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (N'3', N'新浪', N'http://www.sina.cn', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (N'4', N'雅虎', N'http://www.yahoo.com', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [addtime]) VALUES (N'5', N'腾讯', N'http://www.qq.com', N'2018-03-29 12:10:55.000')
GO
GO
SET IDENTITY_INSERT [dbo].[youqinglianjie] OFF
GO

-- ----------------------------
-- Table structure for zhuanyexinxi
-- ----------------------------
DROP TABLE [dbo].[zhuanyexinxi]
GO
CREATE TABLE [dbo].[zhuanyexinxi] (
[ID] int NOT NULL ,
[zhuanye] varchar(50) NULL ,
[addtime] datetime NULL 
)


GO

-- ----------------------------
-- Records of zhuanyexinxi
-- ----------------------------
INSERT INTO [dbo].[zhuanyexinxi] ([ID], [zhuanye], [addtime]) VALUES (N'2', N'英语', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[zhuanyexinxi] ([ID], [zhuanye], [addtime]) VALUES (N'3', N'法律', N'2018-03-29 12:10:55.000')
GO
GO
INSERT INTO [dbo].[zhuanyexinxi] ([ID], [zhuanye], [addtime]) VALUES (N'4', N'数学', N'2018-03-29 12:10:55.000')
GO
GO

-- ----------------------------
-- Table structure for zidongzujuan
-- ----------------------------
DROP TABLE [dbo].[zidongzujuan]
GO
CREATE TABLE [dbo].[zidongzujuan] (
[ID] int NOT NULL IDENTITY(1,1) ,
[bianhao] varchar(50) NULL ,
[zhuanye] varchar(50) NULL ,
[tishu] varchar(50) NULL ,
[fenzhi] varchar(50) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) ,
[timu] varchar(500) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[zidongzujuan]', RESEED, 13)
GO

-- ----------------------------
-- Records of zidongzujuan
-- ----------------------------
SET IDENTITY_INSERT [dbo].[zidongzujuan] ON
GO
INSERT INTO [dbo].[zidongzujuan] ([ID], [bianhao], [zhuanye], [tishu], [fenzhi], [addtime], [timu]) VALUES (N'12', N'11', N'数学', N'11', N'20', N'2018-03-29 13:39:25.000', N'19,22')
GO
GO
INSERT INTO [dbo].[zidongzujuan] ([ID], [bianhao], [zhuanye], [tishu], [fenzhi], [addtime], [timu]) VALUES (N'13', N'129', N'计算机', N'20', N'50', N'2018-03-29 15:58:57.000', N'21')
GO
GO
SET IDENTITY_INSERT [dbo].[zidongzujuan] OFF
GO

-- ----------------------------
-- Table structure for ziliaoxiazai
-- ----------------------------
DROP TABLE [dbo].[ziliaoxiazai]
GO
CREATE TABLE [dbo].[ziliaoxiazai] (
[ID] int NOT NULL IDENTITY(1,1) ,
[bianhao] varchar(50) NULL ,
[mingcheng] varchar(300) NULL ,
[leibie] varchar(50) NULL ,
[kecheng] varchar(50) NULL ,
[jianjie] varchar(500) NULL ,
[fujian] varchar(50) NULL ,
[addtime] datetime NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[ziliaoxiazai]', RESEED, 8)
GO

-- ----------------------------
-- Records of ziliaoxiazai
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ziliaoxiazai] ON
GO
INSERT INTO [dbo].[ziliaoxiazai] ([ID], [bianhao], [mingcheng], [leibie], [kecheng], [jianjie], [fujian], [addtime]) VALUES (N'6', N'124', N'JAVA', N'教学课件', N'英语', N'sxfgsa', N'下载', N'2018-03-29 13:21:40.000')
GO
GO
INSERT INTO [dbo].[ziliaoxiazai] ([ID], [bianhao], [mingcheng], [leibie], [kecheng], [jianjie], [fujian], [addtime]) VALUES (N'7', N'145', N'高数', N'教学课件', N'高数', N'ad ', N'', N'2018-03-29 13:26:44.000')
GO
GO
INSERT INTO [dbo].[ziliaoxiazai] ([ID], [bianhao], [mingcheng], [leibie], [kecheng], [jianjie], [fujian], [addtime]) VALUES (N'8', N'154', N'大学英语', N'教学课件', N'英语', N'sd sdas', N'', N'2018-03-29 13:27:24.000')
GO
GO
SET IDENTITY_INSERT [dbo].[ziliaoxiazai] OFF
GO

-- ----------------------------
-- Indexes structure for table dtproperties
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dtproperties
-- ----------------------------
ALTER TABLE [dbo].[dtproperties] ADD PRIMARY KEY ([id], [property])
GO
