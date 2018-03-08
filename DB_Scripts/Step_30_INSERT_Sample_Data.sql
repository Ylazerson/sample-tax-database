-- B''H --

USE [TaxApp]
GO

DELETE FROM [dbo].[Agency_Managers]
GO
DELETE FROM [dbo].[Company_Owners]
GO
DELETE FROM [dbo].[Tax_Payments]
GO
DELETE FROM [dbo].[Tax_Types]
GO
DELETE FROM [dbo].[Companies]
GO
DELETE FROM [dbo].[Individuals]
GO
DELETE FROM [dbo].[Agencies]
GO
DELETE FROM [dbo].[Party_Phone]
GO
DELETE FROM [dbo].[Phone_Types]
GO
DELETE FROM [dbo].[Parties]
GO
DELETE FROM [dbo].[Party_Types]
GO
INSERT [dbo].[Party_Types] ([Party_Type_PK], [Party_Type_Desc], [Modified_Date]) VALUES (N'A', N'Agency', CAST(N'2017-10-15T17:28:27.473' AS DateTime))
GO
INSERT [dbo].[Party_Types] ([Party_Type_PK], [Party_Type_Desc], [Modified_Date]) VALUES (N'C', N'Company', CAST(N'2017-10-15T17:28:27.473' AS DateTime))
GO
INSERT [dbo].[Party_Types] ([Party_Type_PK], [Party_Type_Desc], [Modified_Date]) VALUES (N'I', N'Individual', CAST(N'2017-10-15T17:28:27.473' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Parties] ON 
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (1, N'A', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-15T18:47:08.043' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (2, N'A', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-15T18:56:36.500' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (3, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-15T20:16:12.237' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (11, N'I', N'4545 Maellle Rd', N'Suite 1', NULL, N'Boston', N'MA', N'22321', N'US', N'sample@gmail.com', CAST(N'2017-10-15T20:24:34.097' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (12, N'I', N'333 Terr Rd', N'Suite 5', NULL, N'Los Alogo', N'CA', N'22312', N'US', N'sample@gmail.com', CAST(N'2017-10-15T20:25:43.240' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (14, N'A', N'34 Makki Rd', NULL, NULL, N'Boston', N'MA', N'12334', N'US', N'sample@gmail.com', CAST(N'2017-10-15T21:16:46.023' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (16, N'A', N'76 Loon Rd', NULL, NULL, N'Boston', N'MA', N'44321', N'US', N'sample@gmail.com', CAST(N'2017-10-15T21:17:50.227' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (18, N'C', N'76 Loon Rd', NULL, NULL, N'Boston', N'MA', N'44321', N'US', N'sample@gmail.com', CAST(N'2017-10-15T21:32:35.483' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (19, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-15T21:33:30.483' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (21, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:12:33.670' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (22, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:13:01.840' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (23, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:13:26.623' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (25, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:13:50.530' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (26, N'I', N'673 Beige Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:14:18.030' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (27, N'A', N'76 Loon Rd', NULL, NULL, N'Boston', N'MA', N'44321', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:15:48.937' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (28, N'A', N'76 Loon Rd', NULL, NULL, N'Boston', N'MA', N'44321', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (30, N'A', N'76 Loon Rd', NULL, NULL, N'Boston', N'MA', N'44321', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:16:30.720' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (31, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:17:26.767' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (32, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:17:31.063' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (33, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:17:43.233' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (35, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (36, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (37, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (38, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (39, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:19:25.423' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (41, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:19:38.440' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (43, N'C', N'54 Dodge Rd', NULL, NULL, N'Boston', N'MA', N'12311', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:19:50.720' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (44, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:27:42.613' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (45, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:27:59.880' AS DateTime))
GO
INSERT [dbo].[Parties] ([Party_ID_PK], [Party_Type_FK], [Address_Line_1], [Address_Line_2], [Address_Line_3], [City], [State_Province], [Zip_Postal_Code], [Country], [Email], [Modified_Date]) VALUES (46, N'I', N'673 County Rd', N'Suite 3', NULL, N'Boston', N'MA', N'18897', N'US', N'sample@gmail.com', CAST(N'2017-10-16T00:28:11.520' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Parties] OFF
GO
SET IDENTITY_INSERT [dbo].[Phone_Types] ON 
GO
INSERT [dbo].[Phone_Types] ([Phone_Type_ID_PK], [Phone_Type_Code], [Phone_Type_Desc], [Modified_Date]) VALUES (1, N'L', N'Landilne', CAST(N'2017-10-15T17:28:27.787' AS DateTime))
GO
INSERT [dbo].[Phone_Types] ([Phone_Type_ID_PK], [Phone_Type_Code], [Phone_Type_Desc], [Modified_Date]) VALUES (2, N'M', N'Mobile', CAST(N'2017-10-15T17:28:27.787' AS DateTime))
GO
INSERT [dbo].[Phone_Types] ([Phone_Type_ID_PK], [Phone_Type_Code], [Phone_Type_Desc], [Modified_Date]) VALUES (3, N'F', N'Fax', CAST(N'2017-10-15T17:28:27.787' AS DateTime))
GO
INSERT [dbo].[Phone_Types] ([Phone_Type_ID_PK], [Phone_Type_Code], [Phone_Type_Desc], [Modified_Date]) VALUES (4, N'H', N'Home', CAST(N'2017-10-15T17:28:27.787' AS DateTime))
GO
INSERT [dbo].[Phone_Types] ([Phone_Type_ID_PK], [Phone_Type_Code], [Phone_Type_Desc], [Modified_Date]) VALUES (5, N'W', N'Work', CAST(N'2017-10-15T17:28:27.787' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Phone_Types] OFF
GO
SET IDENTITY_INSERT [dbo].[Party_Phone] ON 
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (1, 1, 2, N'1-212-674-8927', CAST(N'2017-10-15T19:04:23.347' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (3, 1, 1, N'1-212-432-1112', CAST(N'2017-10-15T19:06:12.067' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (4, 3, 2, N'1-872-883-9092', CAST(N'2017-10-15T20:16:12.237' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (5, 11, 1, N'1-872-883-9092', CAST(N'2017-10-15T20:24:34.097' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (6, 12, 1, N'1-432-883-3332', CAST(N'2017-10-15T20:25:43.240' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (8, 1, 2, N'1-782-674-8927', CAST(N'2017-10-15T20:38:14.680' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (10, 2, 3, N'1-444-674-8927', CAST(N'2017-10-15T20:38:25.150' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (12, 14, 2, N'1-872-444-9092', CAST(N'2017-10-15T21:16:46.023' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (14, 16, 1, N'1-324-543-9092', CAST(N'2017-10-15T21:17:50.227' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (16, 18, 1, N'1-324-543-9092', CAST(N'2017-10-15T21:32:35.483' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (17, 19, 3, N'1-500-543-9092', CAST(N'2017-10-15T21:33:30.483' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (19, 21, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:12:33.670' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (20, 22, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:13:01.840' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (21, 23, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:13:26.623' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (23, 25, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:13:50.530' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (24, 26, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:14:18.030' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (25, 23, 2, N'1-212-674-8927', CAST(N'2017-10-16T00:15:04.000' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (26, 23, 3, N'1-800-674-8927', CAST(N'2017-10-16T00:15:10.110' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (27, 27, 1, N'1-324-543-9092', CAST(N'2017-10-16T00:15:48.937' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (28, 28, 1, N'1-324-543-9092', CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (30, 30, 1, N'1-324-543-9092', CAST(N'2017-10-16T00:16:30.720' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (31, 31, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:17:26.767' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (32, 32, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:17:31.063' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (33, 33, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:17:43.233' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (35, 35, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (36, 36, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (37, 37, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (38, 38, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (39, 39, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:19:25.423' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (41, 41, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:19:38.440' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (43, 43, 3, N'1-500-543-9092', CAST(N'2017-10-16T00:19:50.720' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (44, 44, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:27:42.613' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (45, 45, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:27:59.880' AS DateTime))
GO
INSERT [dbo].[Party_Phone] ([Party_Phone_ID_PK], [Party_ID_FK], [Phone_Type_ID_FK], [Phone_Number], [Modified_Date]) VALUES (46, 46, 2, N'1-872-883-9092', CAST(N'2017-10-16T00:28:11.520' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Party_Phone] OFF
GO
INSERT [dbo].[Agencies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Agency_Number], [Modified_Date]) VALUES (14, N'A', N'HDNgsg15-456', CAST(N'2017-10-15T21:16:46.023' AS DateTime))
GO
INSERT [dbo].[Agencies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Agency_Number], [Modified_Date]) VALUES (16, N'A', N'FDDDDA-456', CAST(N'2017-10-15T21:17:50.227' AS DateTime))
GO
INSERT [dbo].[Agencies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Agency_Number], [Modified_Date]) VALUES (27, N'A', N'dfdddd-456', CAST(N'2017-10-16T00:15:48.937' AS DateTime))
GO
INSERT [dbo].[Agencies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Agency_Number], [Modified_Date]) VALUES (28, N'A', N'dfdddddd-456', CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Agencies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Agency_Number], [Modified_Date]) VALUES (30, N'A', N'4r4r-456', CAST(N'2017-10-16T00:16:30.720' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (3, N'I', N'DX15245-456', N'Jason', N'Dale', N'Smith', CAST(N'1982-04-20' AS Date), 1, 27, CAST(N'2017-10-15T20:16:12.237' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (11, N'I', N'ghdhgG-456', N'Mike', N'Lee', N'Fortham', CAST(N'1987-01-20' AS Date), 0, 28, CAST(N'2017-10-15T20:24:34.097' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (12, N'I', N'sdsdsds-456', N'Jerry', NULL, N'Gooolio', CAST(N'1990-01-24' AS Date), 1, 30, CAST(N'2017-10-15T20:25:43.240' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (21, N'I', N'DGSGHS-456', N'Mary', NULL, N'Smith', CAST(N'1982-04-20' AS Date), 1, 14, CAST(N'2017-10-16T00:12:33.670' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (22, N'I', N'sfsssaa-456', N'Jake', NULL, N'Smith', CAST(N'1987-04-20' AS Date), 0, 14, CAST(N'2017-10-16T00:13:01.840' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (23, N'I', N'gdghdGGG-456', N'Lee', NULL, N'Howard', CAST(N'1997-04-20' AS Date), 1, 16, CAST(N'2017-10-16T00:13:26.623' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (25, N'I', N'dfss-456', N'Dave', NULL, N'Howard', CAST(N'1997-04-20' AS Date), 1, 16, CAST(N'2017-10-16T00:13:50.530' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (26, N'I', N'fg666-456', N'Mark', NULL, N'Looman', CAST(N'1976-04-20' AS Date), 1, 14, CAST(N'2017-10-16T00:14:18.030' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (44, N'I', N'1143-456', N'Jason', N'Charles', N'Smith', CAST(N'1982-04-20' AS Date), 1, NULL, CAST(N'2017-10-16T00:27:42.613' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (45, N'I', N'12dss-456', N'Carl', N'Charles', N'Vopi', CAST(N'1987-04-20' AS Date), 1, NULL, CAST(N'2017-10-16T00:27:59.880' AS DateTime))
GO
INSERT [dbo].[Individuals] ([Party_ID_PK_FK], [Party_Type_PK_FK], [Document_Number], [First_Name], [Middle_Name], [Last_Name], [DOB], [Active_Taxpayer], [Agency_Employer_Party_ID_FK], [Modified_Date]) VALUES (46, N'I', N'redd-456', N'Lou', N'Charles', N'Vopi', CAST(N'1987-04-20' AS Date), 1, 14, CAST(N'2017-10-16T00:28:11.520' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (18, N'C', N'FDDDDA-456', CAST(N'2001-04-20' AS Date), N'sample-company.com', CAST(N'2017-10-15T21:32:35.483' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (19, N'C', N'sdAAs-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-15T21:33:30.483' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (31, N'C', N'rf4rr-456', CAST(N'2010-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:17:26.767' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (32, N'C', N'rfeds-456', CAST(N'2010-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:17:31.063' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (33, N'C', N'rfds-456', CAST(N'2010-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:17:43.233' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (35, N'C', N'dsxs-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (36, N'C', N'gf-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (37, N'C', N'dcsedfre-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (38, N'C', N'dsxdfree-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (39, N'C', N'ess-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:19:25.423' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (41, N'C', N'DEW-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:19:38.440' AS DateTime))
GO
INSERT [dbo].[Companies] ([Party_ID_PK_FK], [Party_Type_PK_FK], [CUIT_Number], [Commencement_Date], [Website], [Modified_Date]) VALUES (43, N'C', N'WWQ-456', CAST(N'2012-04-12' AS Date), N'sample-company.com', CAST(N'2017-10-16T00:19:50.720' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Tax_Types] ON 
GO
INSERT [dbo].[Tax_Types] ([Tax_Type_ID_PK], [Tax_Type_Code], [Tax_Type_Desc], [Modified_Date]) VALUES (1, N'A', N'Automotive Patent', CAST(N'2017-10-15T17:28:27.957' AS DateTime))
GO
INSERT [dbo].[Tax_Types] ([Tax_Type_ID_PK], [Tax_Type_Code], [Tax_Type_Desc], [Modified_Date]) VALUES (2, N'I', N'Gross Income', CAST(N'2017-10-15T17:28:27.957' AS DateTime))
GO
INSERT [dbo].[Tax_Types] ([Tax_Type_ID_PK], [Tax_Type_Code], [Tax_Type_Desc], [Modified_Date]) VALUES (3, N'R', N'Real Estate', CAST(N'2017-10-15T17:28:27.957' AS DateTime))
GO
INSERT [dbo].[Tax_Types] ([Tax_Type_ID_PK], [Tax_Type_Code], [Tax_Type_Desc], [Modified_Date]) VALUES (4, N'S', N'Stamp Duty', CAST(N'2017-10-15T17:28:27.957' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Tax_Types] OFF
GO
SET IDENTITY_INSERT [dbo].[Tax_Payments] ON 
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (1, 1, 14, 18, CAST(N'2015-01-19T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:06:33.603' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (3, 1, 14, 18, CAST(N'2015-02-19T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:21:43.627' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (4, 1, 14, 18, CAST(N'2015-03-19T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:21:46.563' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (5, 1, 14, 18, CAST(N'2015-04-19T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(2.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:21:48.487' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (6, 1, 14, 18, CAST(N'2015-04-21T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:21:51.767' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (7, 1, 14, 18, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:21:54.063' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (8, 2, 14, 18, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:03.313' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (9, 3, 14, 18, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(54332.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:04.987' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (10, 4, 14, 18, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:06.347' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (11, 4, 16, 18, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:17.750' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (12, 4, 27, 18, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:26.860' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (13, 4, 27, 18, CAST(N'2015-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(554.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:33.953' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (14, 4, 27, 18, CAST(N'2015-02-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:35.627' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (15, 4, 27, 18, CAST(N'2015-01-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(17600.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:42.470' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (16, 4, 27, 18, CAST(N'2014-01-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:45.063' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (17, 4, 27, 18, CAST(N'2014-02-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:49.737' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (18, 4, 27, 18, CAST(N'2014-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:52.283' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (19, 3, 27, 18, CAST(N'2014-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:56.080' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (20, 2, 27, 18, CAST(N'2014-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:22:58.050' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (22, 1, 27, 18, CAST(N'2014-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:01.300' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (23, 1, 27, 12, CAST(N'2014-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:22.440' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (24, 1, 27, 12, CAST(N'2015-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(43455.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:25.627' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (25, 1, 27, 12, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:28.017' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (26, 1, 27, 12, CAST(N'2015-05-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:29.580' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (27, 1, 27, 12, CAST(N'2015-06-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:31.127' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (28, 1, 27, 12, CAST(N'2015-07-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:32.767' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (29, 2, 27, 12, CAST(N'2015-07-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(17.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:36.423' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (30, 3, 27, 12, CAST(N'2015-07-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:37.643' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (31, 4, 27, 12, CAST(N'2015-07-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:39.050' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (32, 4, 27, 23, CAST(N'2015-07-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'CAD', CAST(2332.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:50.767' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (33, 4, 27, 23, CAST(N'2015-08-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:23:55.300' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (35, 4, 27, 23, CAST(N'2015-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(346.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:24:01.347' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (36, 4, 27, 32, CAST(N'2015-03-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:24:52.160' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (37, 4, 27, 32, CAST(N'2015-04-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:24:54.783' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (38, 4, 27, 32, CAST(N'2015-05-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:24:56.800' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (39, 3, 27, 32, CAST(N'2015-05-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(44556.00 AS Decimal(15, 2)), CAST(N'2017-10-16T00:24:59.940' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (40, 3, 14, 32, CAST(N'2015-05-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:25:05.207' AS DateTime))
GO
INSERT [dbo].[Tax_Payments] ([Tax_Payment_ID_PK], [Tax_Type_ID_FK], [Agency_Party_ID_FK], [Taxpayer_Party_ID_FK], [Payment_Date], [Currency_Code], [Payment_Amount], [Modified_Date]) VALUES (41, 3, 16, 32, CAST(N'2015-05-22T07:20:00.0000000-08:00' AS DateTimeOffset), N'USD', CAST(1700.65 AS Decimal(15, 2)), CAST(N'2017-10-16T00:25:07.877' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Tax_Payments] OFF
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (18, 3, CAST(N'2017-10-15T21:32:35.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (19, 3, CAST(N'2017-10-15T21:33:30.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (19, 11, CAST(N'2017-10-15T21:33:30.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (31, 3, CAST(N'2017-10-16T00:17:26.767' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (31, 11, CAST(N'2017-10-16T00:17:26.767' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (32, 3, CAST(N'2017-10-16T00:17:31.063' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (32, 11, CAST(N'2017-10-16T00:17:31.063' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (33, 3, CAST(N'2017-10-16T00:17:43.233' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (33, 11, CAST(N'2017-10-16T00:17:43.233' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (33, 21, CAST(N'2017-10-16T00:17:43.233' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (35, 3, CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (35, 11, CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (35, 21, CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (35, 23, CAST(N'2017-10-16T00:18:02.373' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (36, 3, CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (36, 11, CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (36, 21, CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (36, 23, CAST(N'2017-10-16T00:18:05.483' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (37, 3, CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (37, 11, CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (37, 21, CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (37, 23, CAST(N'2017-10-16T00:18:10.360' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (38, 3, CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (38, 11, CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (38, 21, CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (38, 23, CAST(N'2017-10-16T00:18:14.843' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (39, 3, CAST(N'2017-10-16T00:19:25.423' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (41, 21, CAST(N'2017-10-16T00:19:38.440' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (43, 21, CAST(N'2017-10-16T00:19:50.720' AS DateTime))
GO
INSERT [dbo].[Company_Owners] ([Company_Party_ID_PK_FK], [Individual_Party_ID_PK_FK], [Modified_Date]) VALUES (43, 23, CAST(N'2017-10-16T00:19:50.720' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (14, 3, CAST(N'2017-10-15T21:16:46.023' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (14, 11, CAST(N'2017-10-15T21:16:46.023' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (16, 3, CAST(N'2017-10-15T21:17:50.227' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (27, 3, CAST(N'2017-10-16T00:15:48.937' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (27, 11, CAST(N'2017-10-16T00:15:48.937' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (27, 12, CAST(N'2017-10-16T00:15:48.937' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (28, 3, CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (28, 11, CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (28, 12, CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (28, 23, CAST(N'2017-10-16T00:16:02.513' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (30, 25, CAST(N'2017-10-16T00:16:30.720' AS DateTime))
GO
INSERT [dbo].[Agency_Managers] ([Agency_Party_ID_PK_FK], [Manager_Party_ID_PK_FK], [Modified_Date]) VALUES (30, 26, CAST(N'2017-10-16T00:16:30.720' AS DateTime))
GO