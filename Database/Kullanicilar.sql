USE [Kullanicilar]
GO
/****** Object:  Table [dbo].[kullanici]    Script Date: 17.11.2021 13:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Surname] [nchar](10) NULL,
	[Description] [nvarchar](max) NULL,
	[Job] [nvarchar](max) NULL,
 CONSTRAINT [PK_kullanici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kullanici] ON 

INSERT [dbo].[kullanici] ([Id], [Name], [Surname], [Description], [Job]) VALUES (3, N'Demirhan  ', N'yılmaz    ', N'Süper tasarımcı', N'Web designer')
INSERT [dbo].[kullanici] ([Id], [Name], [Surname], [Description], [Job]) VALUES (4, N'Sibel     ', N'acar      ', N'Temiz kod kurallarına dikkat ediyor', N'Back-end Devolper')
INSERT [dbo].[kullanici] ([Id], [Name], [Surname], [Description], [Job]) VALUES (6, N'Escan     ', N'Dönmez    ', N'Yazılım güvenliğine önem veriyor, temiz kod kurallarını önemsiyor', N'Back-end Devolper')
SET IDENTITY_INSERT [dbo].[kullanici] OFF
GO
