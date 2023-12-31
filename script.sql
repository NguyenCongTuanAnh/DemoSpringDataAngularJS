USE [FashionBagsForWomenDB]
GO
/****** Object:  Table [dbo].[balo]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[balo](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[balo_detail]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[balo_detail](
	[id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NULL,
	[color_id] [uniqueidentifier] NULL,
	[type_id] [uniqueidentifier] NULL,
	[material_id] [uniqueidentifier] NULL,
	[size_id] [uniqueidentifier] NULL,
	[brand_id] [uniqueidentifier] NULL,
	[compartment_id] [uniqueidentifier] NULL,
	[buckle_type_id] [uniqueidentifier] NOT NULL,
	[image_id] [uniqueidentifier] NULL,
	[producer_id] [uniqueidentifier] NULL,
	[import_price] [float] NULL,
	[retail_price] [float] NULL,
	[amount] [int] NULL,
	[describe] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_product_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [uniqueidentifier] NOT NULL,
	[staff_id] [uniqueidentifier] NULL,
	[customer_id] [uniqueidentifier] NULL,
	[voucher_id] [uniqueidentifier] NULL,
	[code] [nvarchar](50) NULL,
	[create_date] [date] NULL,
	[date_payment] [date] NULL,
	[ship_date] [date] NULL,
	[receiver_date] [date] NULL,
	[total_price] [float] NULL,
	[amount] [int] NULL,
	[price_after_voucher] [float] NULL,
	[address] [nchar](10) NULL,
	[receiver_name] [nvarchar](50) NULL,
	[ship_price] [float] NULL,
	[type] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[payment_type] [int] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [uniqueidentifier] NOT NULL,
	[bill_id] [uniqueidentifier] NULL,
	[product_detail_id] [uniqueidentifier] NULL,
	[amount] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buckle_type]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buckle_type](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NULL,
	[code] [nvarchar](50) NULL,
	[create_time] [datetime] NULL,
	[payment_time] [datetime] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_detail]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_detail](
	[cart_id] [uniqueidentifier] NOT NULL,
	[product_detail_id] [uniqueidentifier] NOT NULL,
	[amount] [int] NULL,
	[price] [float] NULL,
	[price_after_discount] [int] NULL,
 CONSTRAINT [PK_cart_detail] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC,
	[product_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compartment]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compartment](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [uniqueidentifier] NOT NULL,
	[address] [nvarchar](50) NULL,
	[point] [int] NULL,
	[note] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[user_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_voucher]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_voucher](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NOT NULL,
	[voucher_point] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_customer_voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history_shift_bill]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history_shift_bill](
	[id] [uniqueidentifier] NOT NULL,
	[bill_id] [uniqueidentifier] NULL,
	[shift_staff_id] [uniqueidentifier] NULL,
	[money] [float] NULL,
	[note] [nvarchar](50) NULL,
	[create_time] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_history_shift_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producer]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producer](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift](
	[id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](50) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[create_by] [nvarchar](50) NULL,
	[status] [int] NULL,
	[note] [nvarchar](50) NULL,
	[staff_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_shift] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift_staff]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift_staff](
	[id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](50) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[create_dateTime] [date] NULL,
	[first_shift_money] [float] NULL,
	[total_shift_money] [float] NULL,
	[bill_money] [float] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
	[shift_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_shift_staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[length_size] [nvarchar](100) NULL,
	[wide_size] [nvarchar](100) NULL,
	[height_size] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userInfo]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userInfo](
	[id] [uniqueidentifier] NOT NULL,
	[first_name] [nvarchar](30) NULL,
	[middle_name] [nvarchar](30) NULL,
	[last_name] [nvarchar](30) NULL,
	[account] [nvarchar](50) NULL,
	[password] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[status] [int] NULL,
	[gender] [bit] NULL,
	[role] [nvarchar](100) NULL,
 CONSTRAINT [PK__user__3213E83FBB77C5D3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[discount] [int] NULL,
	[create_date] [date] NULL,
	[type] [nvarchar](50) NULL,
	[points_to_receive] [int] NULL,
	[payment_type] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[start_time] [date] NULL,
	[end_time] [date] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
	[customer_voucher_id] [uniqueidentifier] NULL,
	[voucher_bil_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_bill]    Script Date: 27/07/2023 9:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_bill](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NULL,
	[voucher_id] [uniqueidentifier] NULL,
	[bill_id] [uniqueidentifier] NULL,
	[before_price] [float] NULL,
	[after_price] [float] NULL,
	[discount_price] [int] NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_voucher_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[balo] ([id], [code], [name], [status]) VALUES (N'b710bef3-429e-4158-b029-1784c2f95565', N'balo1', N'Balo đeo chéo Da cá sấu', N'1')
INSERT [dbo].[balo] ([id], [code], [name], [status]) VALUES (N'08938ef5-a982-4b75-a863-5587090a943a', N'balo5', N'Balo đeo chéo màu nâu da Napas', N'1')
INSERT [dbo].[balo] ([id], [code], [name], [status]) VALUES (N'22f42a1e-3e8f-465a-8dcf-9fd697c11524', N'balo2', N'Balo xách màu đen da Bò', N'1')
INSERT [dbo].[balo] ([id], [code], [name], [status]) VALUES (N'5cee11c5-fd5a-49fa-afbc-bb91419cfe24', N'balo3', N'Balo đi học thương hiệu LV', N'1')
INSERT [dbo].[balo] ([id], [code], [name], [status]) VALUES (N'd3fd294e-3a85-4294-96e5-d392c2f4d0c0', N'balo4', N'Balo thời trang thương hiệu Adias', N'1')
GO
INSERT [dbo].[brand] ([id], [code], [name]) VALUES (N'2eb1d4a2-f5ef-46c1-abce-65d0d566ba1d', N'brand003', N'TokyoLife')
INSERT [dbo].[brand] ([id], [code], [name]) VALUES (N'c9293ef6-7cfc-4027-bee2-80e1d93dd5f5', N'brand001', N'Luis Vustion')
INSERT [dbo].[brand] ([id], [code], [name]) VALUES (N'ff6197ea-10e0-45fd-aa52-9a13077fb211', N'brand002', N'Thuong Dinh')
INSERT [dbo].[brand] ([id], [code], [name]) VALUES (N'8b005e6a-cf11-4a21-ac77-a35bff9bf3c1', N'brand004', N'Adias')
INSERT [dbo].[brand] ([id], [code], [name]) VALUES (N'fe73e1bb-1b70-400c-b5c7-b400d3296240', N'brand005', N'Owen')
INSERT [dbo].[brand] ([id], [code], [name]) VALUES (N'6ce7a44f-d2da-4e0d-9cae-ea79939468a8', N'brand006', N'Viet Tien')
GO
INSERT [dbo].[buckle_type] ([id], [code], [name]) VALUES (N'3322de6c-d439-4f5c-9bb0-01f5f5e62580', N'bt002', N'Khóa Nhôm')
INSERT [dbo].[buckle_type] ([id], [code], [name]) VALUES (N'85237910-7cf8-43cf-aa27-0d1d5c77530e', N'bt001', N'Khóa Dây')
INSERT [dbo].[buckle_type] ([id], [code], [name]) VALUES (N'c44218ad-ff1f-4fc5-9b04-344ec34d8305', N'bt004', N'Khóa Nút')
INSERT [dbo].[buckle_type] ([id], [code], [name]) VALUES (N'4cd26ff9-2abc-40e0-824a-37e82e5133f1', N'bt005', N'Khóa Bấm')
INSERT [dbo].[buckle_type] ([id], [code], [name]) VALUES (N'095e8203-77b3-4964-b0d5-7b666c20be73', N'bt003', N'Khóa Nhựa')
GO
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'43a027d3-fcf6-4ec7-8de7-11003e5ef6ff', N'col001', N'Xanh Rêu')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'217da5f1-dc77-4720-980f-222cde44f1ab', N'col002', N'Cam')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'45fad3e4-31da-4efb-a0c8-51f7c8f98423', N'col003', N'Xanh lá cây')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'c33dfc3f-f0c3-44c3-aa2a-53204a4f9663', N'col004', N'Tím')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'f3e0c162-a5a7-4523-9583-55110f70a0b0', N'col005', N'Vàng Nhạt')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'42b845b1-49a9-477b-9af5-5514e47975f5', N'col006', N'Đỏ Nâu')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'a30a0613-12cf-4cc2-b18d-593a78bd4800', N'col007', N'Tím')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'0306c8e5-ed1a-42cd-b3f3-70759f518a99', N'col008', N'Lục')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'7b7dbe2b-9ffd-45a6-9f2a-7eea610f629e', N'col009', N'Đỏ')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'732873bc-5b32-4b9c-9b28-8f30a050867c', N'col0010', N'Tràm Đen')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'9ea271cc-5eda-4822-8c58-9221b300fa5e', N'col0011', N'Vàng Cam')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'890bd039-1231-424d-b794-93e12f876d49', N'col0012', N'Hồng Nhạt')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'376ba8c7-36db-47ac-ad2d-a295b1803086', N'col0013', N'Vàng')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'379d18d8-2455-48ca-a296-ae5d2842be54', N'col0014', N'Nâu')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'29975f48-d3bf-46ce-80f7-b7c4c52784c9', N'col0015', N'Nâu Đậm')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'cc882d29-96bf-47e8-8ed8-b9688b0b9130', N'col0016', N'Lam')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'46dd3bcc-0b99-43bf-a958-c878160267d5', N'col0017', N'Xám')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'cb60396b-6d96-4a5e-a78d-cb8fe164dbb9', N'col0018', N'Đen')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'de11ccd0-d408-4e97-8121-cc48ec04e5fd', N'col0019', N'Đỏ Xám')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'62f1f6be-ed2e-457a-b35d-d424cab8b8f6', N'col0020', N'Hồng')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'5636fdeb-edc9-40ca-b28d-d5ad91000220', N'col0021', N'Tím Bạc')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'e20de1cf-4095-4366-92b7-d94778ad01f9', N'col0022', N'Tràm')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'2d781d1d-0a49-4fbe-9083-e6fc72e246ee', N'col0023', N'Xanh Ngọc')
INSERT [dbo].[color] ([id], [code], [name]) VALUES (N'4b0bebcc-f2b9-4962-b869-fba55d7e3373', N'col0024', N'Xanh')
GO
INSERT [dbo].[compartment] ([id], [code], [name]) VALUES (N'a1a9f473-6243-4a26-8031-348f018a7c5b', N'com001', N'Ngăn xếp')
INSERT [dbo].[compartment] ([id], [code], [name]) VALUES (N'a25678cb-56cf-49b8-8722-91bf9838e9e1', N'com002', N'Ngăn song song')
INSERT [dbo].[compartment] ([id], [code], [name]) VALUES (N'873cfebc-a1a4-45dc-bd1c-9c862e167b37', N'com003', N'Ngăn lồng')
INSERT [dbo].[compartment] ([id], [code], [name]) VALUES (N'718cc2c3-236b-43bd-a357-b76fd57ec687', N'com004', N'Ngăn đơn')
INSERT [dbo].[compartment] ([id], [code], [name]) VALUES (N'e49272d9-2495-4833-8239-e691c172ad99', N'com005', N'Ngăn nối tiếp')
GO
INSERT [dbo].[customer] ([id], [address], [point], [note], [phone_number], [user_id]) VALUES (N'6ef351a9-0d3d-400d-b80d-0eefcca7b2ae', N'Thành Phố Tuyên Quang', 11, N'Khách Này có tính hay cầm đèn chạy trước Ô tô:)))', N'024568731', N'f8c55ea5-a386-4592-a9ee-24dbcbf18eb8')
INSERT [dbo].[customer] ([id], [address], [point], [note], [phone_number], [user_id]) VALUES (N'32fd9944-58f8-4ef4-8030-0f6d60ed6129', N'Tiền Hải Thái Bình', 13, N'Khách này cần đuổi ngay lập tức', N'027466316', N'9b025298-9c7e-49f8-b4af-17cba8414ef6')
INSERT [dbo].[customer] ([id], [address], [point], [note], [phone_number], [user_id]) VALUES (N'17f7380f-dc2c-4d67-bfc5-15f430a6c702', N'Kiến Xương Thái Bình', 9, N'Cần được bảo vệ', N'023456789', N'3100c455-b754-471b-bded-e1c7c089a845')
INSERT [dbo].[customer] ([id], [address], [point], [note], [phone_number], [user_id]) VALUES (N'7ef49b98-2b0a-402f-a49f-3178e6369164', N'Thành phố Nam Định', 24, N'Khách có họ với chủ Cửa Hàng', N'046345626', N'f8c55ea5-a386-4592-a9ee-24dbcbf18eb8')
INSERT [dbo].[customer] ([id], [address], [point], [note], [phone_number], [user_id]) VALUES (N'd8c299d6-54e4-42bc-9d24-58ab5f38f753', N'Thành Phố Hà Nội', 70, N'Khách ủng hộ cửa hàng nhiều nhất từ trước đến nay', N'045631975', N'3100c455-b754-471b-bded-e1c7c089a845')
GO
INSERT [dbo].[material] ([id], [code], [name]) VALUES (N'0720a6c5-fd7b-44ff-b89f-10b4322e893e', N'mat002', N'Da PPV')
INSERT [dbo].[material] ([id], [code], [name]) VALUES (N'eb263c2e-3119-41f0-a7bf-2f1a30c885fc', N'mat003', N'Vải Cotton')
INSERT [dbo].[material] ([id], [code], [name]) VALUES (N'62e168af-f106-45ee-b398-3a6b49b15b07', N'mat004', N'Da Napas')
INSERT [dbo].[material] ([id], [code], [name]) VALUES (N'9a10c590-b137-4395-b815-5ffb792abdca', N'mat005', N'Da Ca sấu')
INSERT [dbo].[material] ([id], [code], [name]) VALUES (N'cb91c1fb-8cf3-43b4-8907-9d01a6d5a8d4', N'mat006', N'Da công nghiệp')
INSERT [dbo].[material] ([id], [code], [name]) VALUES (N'0bf50fcb-a8a6-41e7-8b9e-a65473b9d020', N'mat007', N'Vải Đan')
GO
INSERT [dbo].[producer] ([id], [code], [name]) VALUES (N'ddf47eb5-8428-467d-a210-1f08b7f30a0a', N'pro002', N'Thuong Dinh')
INSERT [dbo].[producer] ([id], [code], [name]) VALUES (N'6625c9f8-aabd-4f91-ba27-3b77320e56a1', N'pro003', N'Owen')
INSERT [dbo].[producer] ([id], [code], [name]) VALUES (N'abc55de0-aad5-4ee8-b4df-96aeb6ccd7d2', N'pro003', N'Jody')
INSERT [dbo].[producer] ([id], [code], [name]) VALUES (N'563b7bf0-0d52-4393-9193-b6b07490e162', N'pro001', N'Viet Tien')
GO
INSERT [dbo].[size] ([id], [code], [name], [length_size], [wide_size], [height_size]) VALUES (N'269b2536-de5e-4742-aa07-24852dc7c0e4', N'si002', N'Size XXXL', N'10', N'15', N'20')
INSERT [dbo].[size] ([id], [code], [name], [length_size], [wide_size], [height_size]) VALUES (N'579756fa-f221-463b-8918-33a68ee2e876', N'si003', N'Size XL', N'12', N'17', N'22')
INSERT [dbo].[size] ([id], [code], [name], [length_size], [wide_size], [height_size]) VALUES (N'2177fd44-f0c3-4bff-9181-98b008eaf1bc', N'si004', N'Size XXl', N'14', N'19', N'24')
INSERT [dbo].[size] ([id], [code], [name], [length_size], [wide_size], [height_size]) VALUES (N'4ee0f669-c834-4e06-8ea3-b58e69923e1b', N'si005', N'Size L', N'16', N'21', N'26')
INSERT [dbo].[size] ([id], [code], [name], [length_size], [wide_size], [height_size]) VALUES (N'ccd1da62-9cef-404b-b838-fdd2c84a250a', N'si001', N'Size M', N'18', N'23', N'28')
GO
INSERT [dbo].[staff] ([id], [user_id], [status]) VALUES (N'00a57f93-c801-43d1-b0f1-0a09ca4b504f', N'6a2a5dc8-52bb-4556-8ac7-a639c2c5a228', 1)
INSERT [dbo].[staff] ([id], [user_id], [status]) VALUES (N'09f30770-142d-4e73-9595-33e6993484bb', N'eb965a1c-3f9d-4113-8f7d-805bb9dab903', 1)
INSERT [dbo].[staff] ([id], [user_id], [status]) VALUES (N'854d1d5e-ae07-47d3-b929-63d7992d1c60', N'c26f7f86-9585-4aa1-992a-a9983169251d', 1)
INSERT [dbo].[staff] ([id], [user_id], [status]) VALUES (N'7ab19928-2076-4d90-bd46-9dcb065026b9', NULL, 1)
INSERT [dbo].[staff] ([id], [user_id], [status]) VALUES (N'982ff2af-1d54-4a14-999f-af34af5ab5cc', NULL, 1)
INSERT [dbo].[staff] ([id], [user_id], [status]) VALUES (N'645227ac-1138-4fe6-930c-e1782c3e4bd0', N'6a2a5dc8-52bb-4556-8ac7-a639c2c5a228', 1)
GO
INSERT [dbo].[userInfo] ([id], [first_name], [middle_name], [last_name], [account], [password], [email], [status], [gender], [role]) VALUES (N'9b025298-9c7e-49f8-b4af-17cba8414ef6', N'Nguyễn', N'Công', N'Đoàn', NULL, NULL, NULL, 1, 1, N'Khách Hàng')
INSERT [dbo].[userInfo] ([id], [first_name], [middle_name], [last_name], [account], [password], [email], [status], [gender], [role]) VALUES (N'f8c55ea5-a386-4592-a9ee-24dbcbf18eb8', N'Vũ', N'Thị', N'Ngân', NULL, NULL, NULL, 1, 0, N'Khách Hàng')
INSERT [dbo].[userInfo] ([id], [first_name], [middle_name], [last_name], [account], [password], [email], [status], [gender], [role]) VALUES (N'eb965a1c-3f9d-4113-8f7d-805bb9dab903', N'Phùng', N'Văn', N'Huỳnh', N'huynhpv', N'456321', N'huynhpv@gmail.com', 0, 1, N'Quản lí')
INSERT [dbo].[userInfo] ([id], [first_name], [middle_name], [last_name], [account], [password], [email], [status], [gender], [role]) VALUES (N'6a2a5dc8-52bb-4556-8ac7-a639c2c5a228', N'1Ng1uyễn', N'1Côn1g', N'1Tuấn 1Anh', N'1anhn1ct', N'11234156', N'1anhnct@gm1ail.com', 1, 1, N'Quản lí')
INSERT [dbo].[userInfo] ([id], [first_name], [middle_name], [last_name], [account], [password], [email], [status], [gender], [role]) VALUES (N'c26f7f86-9585-4aa1-992a-a9983169251d', N'Nông', N'Kiều', N'Oanh', N'oanhnk', N'123011', N'oanhnk@gmail.com', 0, 0, N'Nhân Viên')
INSERT [dbo].[userInfo] ([id], [first_name], [middle_name], [last_name], [account], [password], [email], [status], [gender], [role]) VALUES (N'3100c455-b754-471b-bded-e1c7c089a845', N'Nguyễn', N'Thị', N'Phương Anh', N'anhntp', N'194566', N'phuonganh@gmail.com', 1, 0, N'Khách Hàng')
GO
ALTER TABLE [dbo].[balo] ADD  CONSTRAINT [DF_balo_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[balo_detail] ADD  CONSTRAINT [DF_balo_detail_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[bill] ADD  CONSTRAINT [DF_bill_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[bill_detail] ADD  CONSTRAINT [DF_bill_detail_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[brand] ADD  CONSTRAINT [DF_brand_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[buckle_type] ADD  CONSTRAINT [DF_buckle_type_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[cart] ADD  CONSTRAINT [DF_cart_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[cart_detail] ADD  CONSTRAINT [DF_cart_detail_cart_id]  DEFAULT (newid()) FOR [cart_id]
GO
ALTER TABLE [dbo].[color] ADD  CONSTRAINT [DF_color_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[compartment] ADD  CONSTRAINT [DF_compartment_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[customer] ADD  CONSTRAINT [DF_customer_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[customer_voucher] ADD  CONSTRAINT [DF_customer_voucher_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[history_shift_bill] ADD  CONSTRAINT [DF_history_shift_bill_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[image] ADD  CONSTRAINT [DF_image_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[material] ADD  CONSTRAINT [DF_material_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[producer] ADD  CONSTRAINT [DF_producer_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[shift] ADD  CONSTRAINT [DF_shift_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[shift_staff] ADD  CONSTRAINT [DF_shift_staff_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[size] ADD  CONSTRAINT [DF_size_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[staff] ADD  CONSTRAINT [DF_staff_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[type] ADD  CONSTRAINT [DF_type_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[userInfo] ADD  CONSTRAINT [DF_user_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[voucher] ADD  CONSTRAINT [DF_voucher_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[voucher_bill] ADD  CONSTRAINT [DF_voucher_bill_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_brand]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_buckle_type] FOREIGN KEY([buckle_type_id])
REFERENCES [dbo].[buckle_type] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_buckle_type]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_color] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_color]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_compartment] FOREIGN KEY([compartment_id])
REFERENCES [dbo].[compartment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_compartment]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_image] FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_image]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_material] FOREIGN KEY([material_id])
REFERENCES [dbo].[material] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_material]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_producer] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_producer]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[balo] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_product]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_size] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_size]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[type] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_type]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_customer]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_staff]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_voucher]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_balo_detail] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[balo_detail] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_balo_detail]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_customer]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [FK_cart_detail_balo_detail] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[balo_detail] ([id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [FK_cart_detail_balo_detail]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [FK_cart_detail_cart] FOREIGN KEY([cart_id])
REFERENCES [dbo].[cart] ([id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [FK_cart_detail_cart]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[userInfo] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_user]
GO
ALTER TABLE [dbo].[customer_voucher]  WITH CHECK ADD  CONSTRAINT [FK_customer_voucher_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_voucher] CHECK CONSTRAINT [FK_customer_voucher_customer]
GO
ALTER TABLE [dbo].[history_shift_bill]  WITH CHECK ADD  CONSTRAINT [FK_history_shift_bill_shift_staff] FOREIGN KEY([shift_staff_id])
REFERENCES [dbo].[shift_staff] ([id])
GO
ALTER TABLE [dbo].[history_shift_bill] CHECK CONSTRAINT [FK_history_shift_bill_shift_staff]
GO
ALTER TABLE [dbo].[shift]  WITH CHECK ADD  CONSTRAINT [FK_shift_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([id])
GO
ALTER TABLE [dbo].[shift] CHECK CONSTRAINT [FK_shift_staff]
GO
ALTER TABLE [dbo].[shift_staff]  WITH CHECK ADD  CONSTRAINT [FK_shift_staff_shift] FOREIGN KEY([shift_id])
REFERENCES [dbo].[shift] ([id])
GO
ALTER TABLE [dbo].[shift_staff] CHECK CONSTRAINT [FK_shift_staff_shift]
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[userInfo] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_user]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_voucher_customer_voucher] FOREIGN KEY([customer_voucher_id])
REFERENCES [dbo].[customer_voucher] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_voucher_customer_voucher]
GO
ALTER TABLE [dbo].[voucher_bill]  WITH CHECK ADD  CONSTRAINT [FK_voucher_bill_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[voucher_bill] CHECK CONSTRAINT [FK_voucher_bill_bill]
GO
ALTER TABLE [dbo].[voucher_bill]  WITH CHECK ADD  CONSTRAINT [FK_voucher_bill_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[voucher_bill] CHECK CONSTRAINT [FK_voucher_bill_customer]
GO
ALTER TABLE [dbo].[voucher_bill]  WITH CHECK ADD  CONSTRAINT [FK_voucher_bill_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[voucher_bill] CHECK CONSTRAINT [FK_voucher_bill_voucher]
GO
