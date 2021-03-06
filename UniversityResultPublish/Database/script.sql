USE [UniversityResultSystem]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/13/2021 10:53:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegisterNo] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Malayalam] [int] NOT NULL,
	[English] [int] NOT NULL,
	[Hindi] [int] NOT NULL,
	[Maths] [int] NOT NULL,
	[Science] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [RegisterNo], [Name], [Malayalam], [English], [Hindi], [Maths], [Science]) VALUES (1, 368468, N'MALU VINU', 60, 55, 75, 80, 75)
INSERT [dbo].[Student] ([Id], [RegisterNo], [Name], [Malayalam], [English], [Hindi], [Maths], [Science]) VALUES (2, 378468, N'ARYA SHAJU', 90, 80, 75, 80, 75)
INSERT [dbo].[Student] ([Id], [RegisterNo], [Name], [Malayalam], [English], [Hindi], [Maths], [Science]) VALUES (3, 388468, N'KRISHNA GOPI', 40, 50, 75, 30, 25)
INSERT [dbo].[Student] ([Id], [RegisterNo], [Name], [Malayalam], [English], [Hindi], [Maths], [Science]) VALUES (4, 408468, N'VIDHYA BINU', 70, 50, 75, 80, 85)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
/****** Object:  StoredProcedure [dbo].[ReadStudent]    Script Date: 6/13/2021 10:53:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadStudent]
	@RegisterNo	INT
AS
BEGIN
SELECT
	[Name]
	,	[Malayalam]
	,	[English]
	,	[Hindi]
	,	[Maths]
	,	[Science]
FROM [dbo].[Student]
WHERE [RegisterNo]=@RegisterNo	
END
GO
/****** Object:  StoredProcedure [dbo].[StudentRead]    Script Date: 6/13/2021 10:53:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[StudentRead]
	@RegisterNo	INT
AS
BEGIN
SELECT
	[Name]
	,	[Malayalam]
	,	[English]
	,	[Hindi]
	,	[Maths]
	,	[Science]
	,	([Malayalam]+[English]+[Hindi]+[Maths]+[Science]) AS Total
FROM [dbo].[Student]
WHERE [RegisterNo]=@RegisterNo	
END
GO
