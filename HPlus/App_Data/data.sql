CREATE DATABASE [Web]
GO
USE [Web]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2017/6/15 11:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Member_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Member_Member_ID]  DEFAULT (newid()),
	[Member_Name] [nvarchar](50) NULL,
	[Member_Sex] [nvarchar](2) NULL,
	[Member_CreateTime] [datetime] NULL CONSTRAINT [DF_Member_Member_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Member_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Function]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Function](
	[uFunction_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_T_Function_uFunction_ID]  DEFAULT (newid()),
	[iFunction_Number] [int] NULL,
	[cFunction_Name] [varchar](50) NULL,
	[cFunction_ByName] [varchar](50) NULL,
	[dFunction_CreateTime] [datetime] NULL CONSTRAINT [DF_T_Function_dFunction_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_T_Function] PRIMARY KEY CLUSTERED 
(
	[uFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Menu]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Menu](
	[uMenu_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_T_Menu_uMenu_ID]  DEFAULT (newid()),
	[cMenu_Name] [varchar](50) NULL,
	[cMenu_Url] [varchar](50) NULL,
	[uMenu_ParentID] [uniqueidentifier] NULL,
	[cMenu_Number] [varchar](50) NULL,
	[cMenu_ICON] [varchar](50) NULL,
	[dMenu_CreateTime] [datetime] NULL CONSTRAINT [DF_T_Menu_dMenu_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_T_Menu] PRIMARY KEY CLUSTERED 
(
	[uMenu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MenuFunction]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MenuFunction](
	[uMenuFunction_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_T_MenuFunction_uMenuFunction_ID]  DEFAULT (newid()),
	[uMenuFunction_MenuID] [uniqueidentifier] NULL,
	[uMenuFunction_FunctionID] [uniqueidentifier] NULL,
	[dMenuFunction_CreateTime] [datetime] NULL CONSTRAINT [DF_T_MenuFunction_dMenuFunction_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_T_MenuFunction] PRIMARY KEY CLUSTERED 
(
	[uMenuFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Number]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Number](
	[Number_ID] [uniqueidentifier] NOT NULL,
	[Number_Num] [varchar](50) NULL,
	[Number_DataBase] [varchar](50) NULL,
	[Number_TableName] [varchar](50) NULL,
	[Number_NumField] [varchar](50) NULL,
	[Number_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_Number] PRIMARY KEY CLUSTERED 
(
	[Number_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_RoleMenuFunction]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_RoleMenuFunction](
	[uRoleMenuFunction_ID] [uniqueidentifier] NOT NULL,
	[uRoleMenuFunction_RoleID] [uniqueidentifier] NULL,
	[uRoleMenuFunction_FunctionID] [uniqueidentifier] NULL,
	[uRoleMenuFunction_MenuID] [uniqueidentifier] NULL,
	[dRoleMenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_RoleMenuFunction] PRIMARY KEY CLUSTERED 
(
	[uRoleMenuFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Roles]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Roles](
	[uRoles_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Roles_Roles_ID]  DEFAULT (newid()),
	[cRoles_Number] [varchar](50) NULL,
	[cRoles_Name] [varchar](50) NULL,
	[cRoles_Remark] [varchar](500) NULL,
	[dRoles_CreateTime] [datetime] NULL CONSTRAINT [DF_Roles_Roles_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[uRoles_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Users]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Users](
	[uUsers_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_T_Users_Users_ID]  DEFAULT (newid()),
	[cUsers_Name] [varchar](50) NULL,
	[cUsers_LoginName] [varchar](50) NULL,
	[cUsers_LoginPwd] [varchar](100) NULL,
	[cUsers_Email] [varchar](50) NULL,
	[dUsers_CreateTime] [datetime] NULL CONSTRAINT [DF_T_Users_Users_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_T_Users] PRIMARY KEY CLUSTERED 
(
	[uUsers_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_UsersRoles]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UsersRoles](
	[uUsersRoles_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_T_UsersRoles_uUsersRole_ID]  DEFAULT (newid()),
	[uUsersRoles_UsersID] [uniqueidentifier] NULL,
	[uUsersRoles_RoleID] [uniqueidentifier] NULL,
	[dUsersRoles_CreateTime] [datetime] NULL CONSTRAINT [DF_T_UsersRoles_dUsersRole_CreateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_T_UsersRoles] PRIMARY KEY CLUSTERED 
(
	[uUsersRoles_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'a489b05b-5dba-4413-9148-0a9254d60efd', N'1', N'男', CAST(N'2017-06-13 16:48:56.777' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'0e6e63b5-d077-4d53-ac1d-1c2ea9990762', N'15', N'男', CAST(N'2017-06-13 16:49:44.660' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'bdbfdf6e-e2d7-48c4-bd24-424631e0f078', N'3', N'男', CAST(N'2017-06-13 16:49:07.443' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'025fb685-a0f5-4c15-b748-4876f476aa92', N'12', N'男', CAST(N'2017-06-13 16:49:37.883' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'097b23b0-ac7d-4555-a5db-59ce9ef2763e', N'郝志颖', N'男', CAST(N'2017-06-13 14:43:21.527' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'cc29fac9-863b-47f5-8785-5c542594df19', N'18', N'男', CAST(N'2017-06-13 16:49:51.057' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'41cb03c9-f08c-4400-9e79-646629a0aa78', N'4', N'男', CAST(N'2017-06-13 16:49:09.323' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'8fa89b6f-e47a-4c4d-8473-6f1ee6d9a708', N'10', N'男', CAST(N'2017-06-13 16:49:33.860' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'7d5a9e98-f078-4c35-9892-7866a3a877fe', N'9', N'男', CAST(N'2017-06-13 16:49:31.440' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'3b4e0180-239c-4ccf-b9ca-7ffe72e8aae5', N'5', N'男', CAST(N'2017-06-13 16:49:10.643' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'fc96e8eb-8f64-4cb3-9171-80dc8d0fff8b', N'11', N'男', CAST(N'2017-06-13 16:49:36.113' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'1f552e75-6959-49b9-90ff-a38747dbefec', N'16', N'男', CAST(N'2017-06-13 16:49:46.653' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'fd7d21f1-fbbf-4168-a961-b098e07ee796', N'14', N'男', CAST(N'2017-06-13 16:49:42.650' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'0625c031-d772-41a6-b342-b15f780d1b26', N'19', N'男', CAST(N'2017-06-13 16:49:53.500' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'9d55d0da-f165-469c-9af1-b78f5d087d9f', N'2', N'男', CAST(N'2017-06-13 16:49:04.687' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'6305a5d3-d2f1-4e38-a041-bdcc0d29f80d', N'7', N'男', CAST(N'2017-06-13 16:49:22.977' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'75609e71-2ae9-4193-8fe7-ccd53aca2fed', N'8', N'男', CAST(N'2017-06-13 16:49:28.317' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'8d35edd6-1ffa-4dbf-8739-cfb6db39d666', N'20', N'男', CAST(N'2017-06-13 16:49:56.837' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'16052790-d16b-404d-b106-e6b56c893adc', N'张三', N'女', CAST(N'2017-06-13 14:46:43.110' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'662c75fe-0388-4461-9312-eaf2ea301d22', N'17', N'男', CAST(N'2017-06-13 16:49:48.747' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'c7ba40e1-0c16-4a5e-8792-f23a3bdfe530', N'13', N'男', CAST(N'2017-06-13 16:49:39.980' AS DateTime))
INSERT [dbo].[Member] ([Member_ID], [Member_Name], [Member_Sex], [Member_CreateTime]) VALUES (N'30b30eb5-39c5-41d6-aaeb-fa9571b91a2f', N'6', N'男', CAST(N'2017-06-13 16:49:20.450' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', CAST(N'2016-06-20 13:40:36.787' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'能否拥有该菜单', N'Have', CAST(N'2016-06-20 13:40:29.657' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', CAST(N'2017-02-16 17:06:23.430' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', CAST(N'2017-04-22 13:51:52.837' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Del', CAST(N'2016-06-20 13:40:52.360' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Add', CAST(N'2016-06-20 13:40:36.787' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'GetExcel', CAST(N'2017-02-09 16:34:14.017' AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Edit', CAST(N'2016-06-20 13:40:43.153' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'd809d891-011d-46e0-9501-1497043f2139', N'系统管理', NULL, NULL, N'Z', N'fa fa-desktop', CAST(N'2016-06-17 09:29:40.893' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'修改密码', N'/Admin/ChangePwd/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-150', NULL, CAST(N'2016-06-20 13:34:24.710' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'会员管理', N'/Admin/Member/Index', NULL, N'A-100', NULL, CAST(N'2017-06-09 11:49:59.800' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'26262205-e5b2-4b04-a1fe-7c7ae3d3b68b', N'代码创建', N'/Admin/CreateCode/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-160', NULL, CAST(N'2017-04-15 15:48:02.000' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'用户管理', N'/Admin/User/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-100', NULL, CAST(N'2016-06-17 09:30:59.270' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'012365a8-3a84-409e-ac50-b1b5bb9977bf', N'功能管理', N'/Admin/Function/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-120', NULL, CAST(N'2017-04-15 10:28:32.000' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', N'菜单功能', N'/Admin/MenuFunction/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-130', NULL, CAST(N'2016-06-20 10:21:43.587' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'46668a22-f006-4738-8531-c4821cc98802', N'角色功能', N'/Admin/RoleFunction/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-140', NULL, CAST(N'2016-06-20 13:35:16.850' AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'351dd2bc-23a0-4351-b155-d028db5bf980', N'角色管理', N'/Admin/Role/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-110', NULL, CAST(N'2016-06-20 09:47:54.453' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'8d0f3d7b-5eac-4fc0-ae10-05c2dfc4111c', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'cd436576-0a42-4a84-acd7-0819e8a3369e', N'46668a22-f006-4738-8531-c4821cc98802', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'5d0f48b9-64fb-47d6-9f91-2652bf8a9293', N'46668a22-f006-4738-8531-c4821cc98802', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'f3080b30-5bb2-407a-b314-3295e84fc49a', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'72bcfdf7-80c2-41d2-9e6d-35b42a7c1bb3', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'ed741413-986c-48b3-9ea0-3a636dae879f', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'2fbcc1ce-ce27-4be7-a7c7-3aba57682373', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'8f36e0fb-9ba8-46e4-ae54-3bedfd3636e5', N'46668a22-f006-4738-8531-c4821cc98802', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'881732c8-f675-4b6d-abfe-3e4d2cbb3ad3', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'2175c23c-32cb-4a22-8807-3f9ec5724acb', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'2de1bb54-c28c-4c16-89e2-53c5c269e977', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'6e6ab975-09b3-4e2a-b6b2-58a088eda1b9', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'c07e22b2-daaf-4279-a547-5ef66758a8c2', N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'0083f4ee-1b38-46e8-b26a-82083d0f23d4', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'a119d69c-89ce-4f03-9de8-87de5029ebd6', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'ab2c3a10-afdd-4c11-905e-970a86c839a3', N'46668a22-f006-4738-8531-c4821cc98802', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'93360ca1-90e5-4494-9e36-a1b656f158b0', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'fb7fe648-08d8-44b9-be0f-a62285068f29', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'9be85e4b-5e08-4b6b-8aba-affae9af4b37', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'052f6b18-9de6-4a37-8722-b08eac621c5a', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'f6715b97-a51a-4bb5-968a-b7d3d75e6bc8', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'0a0df62c-53cf-4be8-9bdf-b921079d5e30', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'a113123b-b1a5-4a7f-bc64-cb0b3005493b', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'd475270e-440a-4321-a9b6-cf5da792f752', N'3936b567-147e-4ad3-a3bd-62f62db269ff', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2017-06-15 10:36:32.083' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'6822598d-ed76-4d1b-ba88-da7eccd56f1e', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2017-06-15 10:36:32.087' AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'3942615f-274f-42da-8c7a-db963e42789c', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2017-06-15 10:36:32.090' AS DateTime))
INSERT [dbo].[T_Roles] ([uRoles_ID], [cRoles_Number], [cRoles_Name], [cRoles_Remark], [dRoles_CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0001', N'管理员', N'拥有所有权限', CAST(N'2016-06-20 10:20:10.073' AS DateTime))
INSERT [dbo].[T_Roles] ([uRoles_ID], [cRoles_Number], [cRoles_Name], [cRoles_Remark], [dRoles_CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0002', N'普通用户', NULL, CAST(N'2016-07-06 17:59:20.527' AS DateTime))
INSERT [dbo].[T_Users] ([uUsers_ID], [cUsers_Name], [cUsers_LoginName], [cUsers_LoginPwd], [cUsers_Email], [dUsers_CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'管理员', N'admin', N'123', N'1396510655@qq.com', CAST(N'2017-04-06 19:55:53.083' AS DateTime))
INSERT [dbo].[T_Users] ([uUsers_ID], [cUsers_Name], [cUsers_LoginName], [cUsers_LoginPwd], [cUsers_Email], [dUsers_CreateTime]) VALUES (N'a7eae7ab-0de4-4026-8da9-6529f8a1c3e2', N'普通用户', N'user', N'123', NULL, CAST(N'2017-04-22 13:44:44.983' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'bc1a0f0b-17c6-4389-97e6-0694d2b7fd04', N'c7746048-193a-495b-b224-be7cd60eae48', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:57:33.020' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'e40dbb16-da1b-44c0-873a-08db1e093d26', N'c4a4ef15-3033-4204-8fe4-99951cfa0a4d', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:28:01.700' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'b3f119aa-648a-4a5a-81f8-1532b64f1b37', N'f5a4663e-561a-4a61-951b-1ead3e24d33f', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:39:30.313' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'ef49215e-065c-4b35-9bf6-20215124760b', N'28509bb9-f041-4a05-a2ae-8828dde126af', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:54:07.293' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'a6eddbb3-fc6d-437f-a540-34ed09fbd1be', N'ec69a2e1-c61f-4f45-bab4-55ffb3fe25a9', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:37:48.900' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'3d9e63f7-0aa9-47b8-9bb0-3551f38f7591', N'18426e34-c39b-4d33-addd-41836308eb03', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:27:19.873' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'3f60c0c0-740a-4d34-96cf-41985332e9f7', N'f46e33c8-9e0e-4c36-8af6-59f5f9530a4f', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:30:14.090' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'47574c12-4c02-44f6-bc78-42c992b23c0b', N'198ba134-4876-4b05-934e-7069b7f328c6', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:23:59.810' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'b307b6a0-dea4-4439-951e-55e3f8ff6b36', N'4c6abaa7-e421-42f3-bbe3-d9621e8cdaec', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 16:00:52.723' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'9e5085d3-d2ef-44fd-9bcf-5821a1ab191c', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2017-06-08 17:07:56.937' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'62baee10-1cd0-4fa3-9fa9-5f599b7be9a8', N'669b5f6e-c750-4fff-8eb0-c2ee47343f3c', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:39:18.683' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'9778be0e-b02e-42d8-ac71-635379d5f420', N'a7eae7ab-0de4-4026-8da9-6529f8a1c3e2', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2017-06-14 15:15:02.230' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'9667d457-67ab-4daa-bd16-72a6ae00bd1b', N'6aa9535b-9ad4-4682-b626-0eac3ceafd3c', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:52:20.980' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'7e770690-9786-4807-b294-9035a47b8197', N'677134de-203c-4efc-aa4b-8c02155bfb79', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:39:53.300' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'3493edb8-cdc1-44d0-9a1c-936e8f9842ec', N'c7b42924-cdc9-4fc3-8d33-99e6c6bd1c30', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:56:02.360' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'bf92551b-7cf2-440c-a334-94cf7da5912c', N'f4aee0e9-39e2-4ffa-8eb5-abcc2f12777f', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:30:59.517' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'2e407133-5781-4874-9cc0-9bcdcd8987ec', N'47e66bc8-cec7-4eeb-9ef4-a419d77dd38f', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:54:59.213' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'74d20a5a-cd60-4709-90ee-b86c46454c97', N'7ce414e9-acde-434e-a579-7ca5bfc45dfc', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2017-06-08 16:03:13.240' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'e6b1436e-2630-4fba-8f1c-c3d3d1703b0d', N'9eca4ce1-3143-42f7-9a09-d02bc12b1af2', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:49:48.973' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'48749a9e-1d8a-4c40-a6b3-ce63d5f45a74', N'ee34ce20-bf42-4c95-b27d-84bfb04aa79e', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:55:48.313' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'7e51224d-bc6b-41fa-8df8-eaaedd166601', N'5b79a652-7f52-482a-bf43-5d304f9f3922', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:26:45.720' AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'4bd8a809-92a7-413e-914b-fb7c9ea6adbf', N'3474a663-4b2b-46c6-8620-3d1df9d08851', N'00000000-0000-0000-0000-000000000000', CAST(N'2017-06-08 15:57:40.147' AS DateTime))
ALTER TABLE [dbo].[T_Number] ADD  CONSTRAINT [DF_T_Number_Number_ID]  DEFAULT (newid()) FOR [Number_ID]
GO
ALTER TABLE [dbo].[T_Number] ADD  CONSTRAINT [DF_T_Number_Number_CreateTime]  DEFAULT (getdate()) FOR [Number_CreateTime]
GO
ALTER TABLE [dbo].[T_RoleMenuFunction] ADD  CONSTRAINT [DF_T_RoleMenuFunction_uRoleMenuFunction_ID]  DEFAULT (newid()) FOR [uRoleMenuFunction_ID]
GO
ALTER TABLE [dbo].[T_RoleMenuFunction] ADD  CONSTRAINT [DF_T_RoleMenuFunction_dRoleMenuFunction_CreateTime]  DEFAULT (getdate()) FOR [dRoleMenuFunction_CreateTime]
GO
/****** Object:  StoredProcedure [dbo].[GetNumber]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNumber]
	@numfield varchar(50),--varchar(8000),         --字段名
    @tablename varchar(50)              --表名
AS
BEGIN
	DECLARE @Number int = 0
	select @Number=Number_Num from T_Number where Number_TableName=@tablename and Number_NumField=@numfield
    IF @Number=0 BEGIN
		insert into T_Number(Number_TableName,Number_NumField,Number_Num) values(@tablename,@numfield,1)
		select 1
	END
	ELSE BEGIN
		update T_Number set Number_Num = @Number +1 where Number_TableName=@tablename and Number_NumField=@numfield
		select (@Number +1)
	END
END

GO
/****** Object:  StoredProcedure [dbo].[PROC_SPLITPAGE]    Script Date: 2017/6/15 11:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------系统的--------------
CREATE  PROCEDURE [dbo].[PROC_SPLITPAGE]
    @SQL text,--varchar(8000),         --要执行的SQL语句
    @PAGE INT = 1,              --要显示的页码
    @PAGESIZE INT,              --每页的大小
    @PAGECOUNT INT = 0 OUT,     --总页数
    @RECORDCOUNT INT = 0 OUT    --总记录数
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @P1 INT

    EXEC SP_CURSOROPEN @P1 OUTPUT, @SQL, @SCROLLOPT = 1, @CCOPT = 1, @ROWCOUNT = @PAGECOUNT OUTPUT

    SET @RECORDCOUNT = @PAGECOUNT

    SELECT @PAGECOUNT=
        CEILING(1.0 * @PAGECOUNT / @PAGESIZE) , @PAGE = (@PAGE-1) * @PAGESIZE + 1

    EXEC SP_CURSORFETCH @P1, 16, @PAGE, @PAGESIZE 

    EXEC SP_CURSORCLOSE @P1
END

GO
