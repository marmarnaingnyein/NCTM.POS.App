USE [NCTM_POS]
GO

/****** Object:  Table [dbo].[Tbl_Shop]    Script Date: 04/19/2024 12:29:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tbl_Shop](
	[ShopId] [int] IDENTITY(1,1) NOT NULL,
	[ShopCode]  AS ('SH'+right('000'+CONVERT([varchar](3),[ShopId]),(3))),
	[ShopName] [varchar](100) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tbl_Shop] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO