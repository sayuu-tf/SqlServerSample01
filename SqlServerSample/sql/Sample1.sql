USE [study1]
GO
/****** Object:  Table [dbo].[Sample1]    Script Date: 2022/02/17 14:07:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sample1](
	[id] [int] NOT NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_Sample1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sample1] ([id], [date]) VALUES (1, CAST(N'2022-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Sample1] ([id], [date]) VALUES (2, CAST(N'2022-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Sample1] ([id], [date]) VALUES (3, CAST(N'2022-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Sample1] ([id], [date]) VALUES (4, CAST(N'2022-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Sample1] ([id], [date]) VALUES (5, CAST(N'2022-02-21T00:00:00.000' AS DateTime))
GO
