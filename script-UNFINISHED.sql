USE [kt6_lenchuk]
GO
/****** Object:  Table [dbo].[category]    Script Date: 17.01.2025 14:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[categoryName] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[currentDiscount]    Script Date: 17.01.2025 14:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currentDiscount](
	[id] [int] NOT NULL,
	[currentDiscountName] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inStock]    Script Date: 17.01.2025 14:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inStock](
	[id] [int] NOT NULL,
	[inStockName] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 17.01.2025 14:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[id] [int] NOT NULL,
	[articul] [nvarchar](100) NOT NULL,
	[idItemName] [int] NOT NULL,
	[idQuantityType] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[idMaxDiscount] [int] NOT NULL,
	[idProducer] [int] NOT NULL,
	[idDeliver] [int] NOT NULL,
	[idCategory] [int] NOT NULL,
	[idCurrentDiscount] [int] NOT NULL,
	[idInStock] [int] NOT NULL,
	[description] [nvarchar](300) NOT NULL,
	[image] [nvarchar](100) NULL,
	[imageFile] [nvarchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[category] ([id], [categoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[category] ([id], [categoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[category] ([id], [categoryName]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (1, 2)
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (2, 3)
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (3, 4)
INSERT [dbo].[currentDiscount] ([id], [currentDiscountName]) VALUES (4, 5)
GO
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (1, N'3')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (2, N'4')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (3, N'5')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (4, N'6')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (5, N'7')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (6, N'8')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (7, N'9')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (8, N'13')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (9, N'15')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (10, N'16')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (11, N'17')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (12, N'18')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (13, N'19')
INSERT [dbo].[inStock] ([id], [inStockName]) VALUES (14, N'21')
GO
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (1, N'А112Т4', 3, 1, 123, 6, 4, 1, 2, 2, 4, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', NULL, N'А112Т4.png')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (2, N'G453T5', 8, 1, 149, 3, 12, 2, 1, 1, 5, N'Щетка-варежка True Touch для вычесывания шерсти, синий', NULL, N'G453T5.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (3, N'F432F4', 7, 1, 1200, 2, 8, 2, 2, 2, 9, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', NULL, N'F432F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (4, N'Y324F4', 3, 1, 86, 1, 9, 1, 3, 3, 11, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', NULL, N'Y324F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (5, N'E532Q5', 3, 1, 166, 3, 9, 1, 3, 4, 12, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', NULL, N'E532Q5.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (6, N'T432F4', 7, 1, 1700, 5, 2, 2, 3, 1, 3, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', NULL, N'T432F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (7, N'G345E4', 6, 1, 300, 1, 6, 2, 3, 2, 13, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', NULL, N'G345E4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (8, N'E345R4', 1, 1, 199, 1, 5, 2, 2, 4, 5, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', NULL, N'E345R4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (9, N'R356F4', 5, 1, 234, 2, 7, 1, 3, 2, 11, N'Миска Nobby с рисунком Dog для собак 130 мл красный', NULL, N'R356F4.jpg')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (10, N'E431R5', 3, 1, 170, 1, 10, 2, 3, 4, 3, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', NULL, N'E431R5.png')
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (11, N'D563F4', 1, 1, 600, 2, 10, 1, 3, 4, 3, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (12, N'H436R4', 1, 1, 300, 3, 10, 1, 3, 1, 9, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (13, N'D643B5', 7, 1, 4100, 6, 1, 1, 2, 3, 7, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (14, N'H432F4', 5, 1, 385, 2, 10, 2, 1, 1, 11, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (15, N'S245R4', 7, 1, 280, 3, 1, 2, 2, 2, 6, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (16, N'V352R4', 7, 1, 1700, 5, 2, 1, 3, 3, 7, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (17, N'H342F5', 1, 1, 510, 1, 10, 2, 3, 1, 11, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (18, N'Q245F5', 1, 1, 510, 1, 10, 2, 3, 1, 11, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (19, N'G542F5', 7, 1, 2190, 6, 8, 1, 3, 3, 5, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (20, N'H542R6', 3, 1, 177, 3, 10, 2, 3, 2, 9, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (21, N'K436T5', 6, 1, 100, 1, 10, 2, 3, 3, 14, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (22, N'V527T5', 1, 1, 640, 1, 10, 1, 3, 4, 2, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (23, N'K452T5', 4, 1, 800, 5, 13, 2, 3, 1, 11, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (24, N'E466T6', 2, 1, 3500, 6, 10, 2, 3, 4, 1, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (25, N'B427R5', 5, 1, 400, 3, 10, 2, 1, 3, 3, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (26, N'H643W2', 5, 1, 292, 5, 10, 1, 1, 2, 8, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (27, N'D356R4', 6, 1, 600, 3, 11, 1, 3, 1, 10, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (28, N'E434U6', 3, 1, 140, 4, 9, 2, 3, 2, 13, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (29, N'M356R4', 3, 1, 50, 1, 9, 2, 3, 3, 4, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[item] ([id], [articul], [idItemName], [idQuantityType], [cost], [idMaxDiscount], [idProducer], [idDeliver], [idCategory], [idCurrentDiscount], [idInStock], [description], [image], [imageFile]) VALUES (30, N'W548O7', 7, 1, 600, 3, 3, 1, 3, 4, 9, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
GO
