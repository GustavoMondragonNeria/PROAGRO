USE [PROAGRO]
GO
/****** Object:  Schema [PROAGRO]    Script Date: 10/01/2022 11:32:25 a. m. ******/
CREATE SCHEMA [PROAGRO]
GO
/****** Object:  Table [PROAGRO].[Estados]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PROAGRO].[Estados](
	[idEstados] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Abreviacion] [nvarchar](255) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[idEstados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PROAGRO].[Georreferencias]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PROAGRO].[Georreferencias](
	[idGeorreferencia] [int] IDENTITY(1,1) NOT NULL,
	[idEstado] [int] NOT NULL,
	[Latitud] [float] NOT NULL,
	[Longitud] [float] NOT NULL,
 CONSTRAINT [PK_Georreferencias] PRIMARY KEY CLUSTERED 
(
	[idGeorreferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PROAGRO].[Permisos]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PROAGRO].[Permisos](
	[idUsuario] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PROAGRO].[Usuarios]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PROAGRO].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Fecha_Nacimiento] [datetime] NOT NULL,
	[RFC] [nvarchar](50) NOT NULL,
	[ACTIVO] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [PROAGRO].[Estados] ON 

INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (1, N'AGUASCALIENTES', N'AGS')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (2, N'BAJA CALIFORNIA', N'BCN')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (3, N'BAJA CALIFORNIA SUR', N'BCS')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (4, N'CAMPECHE', N'CAMP')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (5, N'COAHUILA', N'COAH')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (6, N'COLIMA', N'COL')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (7, N'CHIAPAS', N'CHIS')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (8, N'CHIHUAHUA', N'CHIH')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (9, N'DISTRITO FEDERAL', N'DF')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (10, N'DURANGO', N'DGO')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (11, N'GUANAJUATO', N'GTO')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (12, N'GUERRERO', N'GRO')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (13, N'HIDALGO', N'HGO')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (14, N'JALISCO', N'JAL')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (15, N'ESTADO DE MEXICO', N'MEX')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (16, N'MICHOACAN', N'MICH')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (17, N'MORELOS', N'MOR')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (18, N'NAYARIT', N'NAY')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (19, N'NUEVO LEON', N'NL')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (20, N'OAXACA', N'OAX')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (21, N'PUEBLA', N'PUE')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (22, N'QUERETARO', N'QRO')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (23, N'QUINTANA ROO', N'QROO')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (24, N'SAN LUIS POTOSI', N'SLP')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (25, N'SINALOA', N'SIN')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (26, N'SONORA', N'SON')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (27, N'TABASCO', N'TAB')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (28, N'TAMAULIPAS', N'TAMP')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (29, N'TLAXCALA', N'TLAX')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (30, N'VERACRUZ', N'VER')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (31, N'YUCATAN', N'YUC')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (32, N'ZACATECAS', N'ZAC')
INSERT [PROAGRO].[Estados] ([idEstados], [Nombre], [Abreviacion]) VALUES (33, N'CIUDAD DE MÉXICO', N'CDMX')
SET IDENTITY_INSERT [PROAGRO].[Estados] OFF
GO
SET IDENTITY_INSERT [PROAGRO].[Georreferencias] ON 

INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (1, 1, 21.13180225, -89.50884361)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (2, 1, 22.302625, 102.2263139)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (3, 1, 23.2336, 103.3168167)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (4, 1, 23.23353333, 103.3335528)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (5, 1, 22.07935, 102.0409833)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (6, 1, 22.39769444, 102.2899333)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (7, 1, 22.39863333, 102.2900556)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (8, 1, 21.98357222, 102.2667667)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (9, 1, 21.9836, 102.2502306)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (10, 1, 22.616775, 102.2335389)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (11, 5, 25.506789, -102.2433589)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (12, 5, 25.50705411, -102.2443927)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (13, 5, 26.30458298, -103.0647895)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (14, 5, 26.30687434, -103.0620606)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (15, 5, 26.30047677, -103.0553136)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (16, 5, 26.29786489, -103.0583045)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (17, 5, 26.30464132, -103.0648854)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (18, 5, 26.30694835, -103.0622138)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (19, 5, 26.31341072, -103.0691436)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (20, 5, 26.31077704, -103.0722422)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (21, 25, 24.20180556, 107.1031389)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (22, 25, 2.201583333, 107.1035556)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (23, 25, 24.22061111, 107.1337222)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (24, 25, 24.22238889, 107.1337222)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (25, 25, 24.10958333, 107.0839722)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (26, 25, 24.11113889, 107.08325)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (27, 25, 24.10941667, 107.0788889)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (28, 25, 24.10727778, 107.0763611)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (29, 25, 24.21880556, 107.1337778)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (30, 25, 24.22055556, 107.13375)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (31, 14, 19.3911668, -99.423815)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (32, 14, 19.322978, -100.7262987)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (33, 14, 20.48036111, 103.9556111)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (34, 14, 20.48425, 103.9726389)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (35, 14, 19.88372222, 103.372)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (36, 14, 19.62819444, 103.7716944)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (37, 14, 19.64733333, 103.7284444)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (38, 14, 19.65225, 103.7428056)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (39, 14, 19.65730556, 103.7916111)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (40, 14, 19.5935, 103.8120556)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (41, 28, 25.74877778, 97.57894444)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (42, 28, 25.30605556, 97.86688889)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (43, 28, 25.30605556, 97.86688889)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (44, 28, 24.61438889, 97.91577778)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (45, 28, 25.31441667, 97.79305556)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (46, 28, 24.61452778, 97.91575)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (47, 28, 25.29966667, 97.85988889)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (48, 28, 25.29966667, 97.85988889)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (49, 28, 25.74986111, 97.60216667)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (50, 28, 25.74986111, 97.60218611)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (52, 33, 25.7852655, 97.52595253)
INSERT [PROAGRO].[Georreferencias] ([idGeorreferencia], [idEstado], [Latitud], [Longitud]) VALUES (53, 27, 23.56165651, 45.5465498)
SET IDENTITY_INSERT [PROAGRO].[Georreferencias] OFF
GO
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (21, 14, CAST(N'2022-01-10T09:32:00.000' AS DateTime))
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (1, 1, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (2, 5, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (3, 25, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (4, 14, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (5, 28, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (6, 5, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (7, 5, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (8, 5, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (9, 1, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (10, 25, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (11, 14, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (12, 28, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (13, 28, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (14, 28, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (15, 14, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (16, 14, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (17, 1, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (18, 25, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (19, 25, NULL)
INSERT [PROAGRO].[Permisos] ([idUsuario], [idEstado], [fecha]) VALUES (20, 1, NULL)
GO
SET IDENTITY_INSERT [PROAGRO].[Usuarios] ON 

INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (1, N'abcde', N'PORCICULTORES EL HIBRIDO S DE RL', CAST(N'2005-01-11T00:00:00.000' AS DateTime), N'PHI0501116U3', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (2, N'abcde', N'AGROPECUARIA EL GIGANTE S.A. DE C.V.', CAST(N'2000-01-14T00:00:00.000' AS DateTime), N'AGI000114C70', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (3, N'abcde', N'PROVEEDORES AGROALIMENTARIOS DEL DISTRITO DE RIEGO', CAST(N'2004-05-28T00:00:00.000' AS DateTime), N'PAD0405282B1', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (4, N'abcde', N'EL SILOGISMO SPR DE RL', CAST(N'1997-11-06T00:00:00.000' AS DateTime), N'SIL971106652', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (5, N'abcde', N'PRODUCTORES UNIDOS DE LAGOS, S.C. DE R.L. DE C.V.', CAST(N'2005-07-11T00:00:00.000' AS DateTime), N'PUL0507113N6', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (6, N'abcde', N'ALIMENTOS PROCESADOS EL ZARCO S DE R.L. M.I. DE C.', CAST(N'2006-02-01T00:00:00.000' AS DateTime), N'APZ060201412', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (7, N'abcde', N'HSBC MEXICO S.A., INSTITUCION DE BANCA MULTIPLE GR', CAST(N'1995-01-25T00:00:00.000' AS DateTime), N'HMI950125KG8', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (8, N'abcde', N'UNION GANADERA LAS TROJES', CAST(N'2005-11-14T00:00:00.000' AS DateTime), N'UGD0511148J3', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (9, N'abcde', N'QUESOS LOS MARTINEZ, S. DE R.L. M.I. DE C.V.', CAST(N'2005-06-14T00:00:00.000' AS DateTime), N'QMA050614F17', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (10, N'abcde', N'RANCHO MEDIO KILO, S. P.R. DE R.L.', CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'RMK9802033P7', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (11, N'abcde', N'MARTIN RUIZ BERNAL, S. DE P.R. DE R.L.', CAST(N'2002-02-20T00:00:00.000' AS DateTime), N'MRB0112136W7', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (12, N'abcde', N'CHIVOS Y BORREGOS DE AGUASCALIENTES, S.P.R. DE R.L', CAST(N'2006-02-13T00:00:00.000' AS DateTime), N'CBA051107TKA', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (13, N'abcde', N'GANADEROS UNIDOS DE TEQUILILLA', CAST(N'2002-12-09T00:00:00.000' AS DateTime), N'GUT021209P8G', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (14, N'abcde', N'COMUNIDAD PRODUCTORA 2000, S.P.R.DE R.L.', CAST(N'1999-12-10T00:00:00.000' AS DateTime), N'CPD9912105S7', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (15, N'abcde', N'INOVAGRO, S.A. DE C.V.', CAST(N'2003-06-16T00:00:00.000' AS DateTime), N'INO030616JN5', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (16, N'abcde', N'GANADERIA LA GREÑUDA, S.C. DE R.L.', CAST(N'2006-06-24T00:00:00.000' AS DateTime), N'GGR060624JV4', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (17, N'abcde', N'PRODUCTORES DE LA ESTANCIA DE CUQUIO, S.C.  DE  R.', CAST(N'2005-10-21T00:00:00.000' AS DateTime), N'PEC051021HX7', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (18, N'abcde', N'GRANJA EL 13 DE LOS ACUÑA, S.P.R.  DE  R.L.', CAST(N'2004-03-27T00:00:00.000' AS DateTime), N'GTA040327Q39', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (19, N'abcde', N'EL GREÑERO, S. DE R.L. DE C.V.', CAST(N'2002-05-08T00:00:00.000' AS DateTime), N'GRE0205086JA', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (20, N'abcde', N'AGRASISA, S.A. DE C.V.', CAST(N'2001-11-09T00:00:00.000' AS DateTime), N'AGR011109ST4', 1)
INSERT [PROAGRO].[Usuarios] ([idUsuario], [Contraseña], [Nombre], [Fecha_Nacimiento], [RFC], [ACTIVO]) VALUES (21, N'abcde', N'GUSTAVO MONDRAGÓN NERIA ', CAST(N'2022-01-10T09:32:00.000' AS DateTime), N'MONG880828HDFNRS04', 1)
SET IDENTITY_INSERT [PROAGRO].[Usuarios] OFF
GO
ALTER TABLE [PROAGRO].[Georreferencias]  WITH CHECK ADD  CONSTRAINT [FK_Georreferencias_Estados] FOREIGN KEY([idEstado])
REFERENCES [PROAGRO].[Estados] ([idEstados])
GO
ALTER TABLE [PROAGRO].[Georreferencias] CHECK CONSTRAINT [FK_Georreferencias_Estados]
GO
ALTER TABLE [PROAGRO].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Estados] FOREIGN KEY([idEstado])
REFERENCES [PROAGRO].[Estados] ([idEstados])
GO
ALTER TABLE [PROAGRO].[Permisos] CHECK CONSTRAINT [FK_Permisos_Estados]
GO
ALTER TABLE [PROAGRO].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [PROAGRO].[Usuarios] ([idUsuario])
GO
ALTER TABLE [PROAGRO].[Permisos] CHECK CONSTRAINT [FK_Permisos_Usuarios]
GO
/****** Object:  StoredProcedure [PROAGRO].[spAgregarPermiso]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PROAGRO].[spAgregarPermiso](@idUsuario int, @idEstado int, @fecha datetime)
AS
BEGIN
	INSERT INTO 
			PROAGRO.PROAGRO.Permisos
	VALUES
			(@idUsuario, @idEstado, @fecha)
END
GO
/****** Object:  StoredProcedure [PROAGRO].[spAgregarUsuario]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PROAGRO].[spAgregarUsuario](@Contraseña nvarchar(50), @Nombre nvarchar(50), @Fecha_Nacimiento datetime, @RFC nvarchar(50), @ACTIVO bit)
AS
BEGIN
	INSERT INTO 
			PROAGRO.PROAGRO.Usuarios
	VALUES
			(@Contraseña, @Nombre, @Fecha_Nacimiento, @RFC, @ACTIVO)
END
GO
/****** Object:  StoredProcedure [PROAGRO].[spListaEstados]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PROAGRO].[spListaEstados]
AS
BEGIN
	SELECT
		idEstados, Nombre, Abreviacion
	FROM
		PROAGRO.PROAGRO.Estados
END
GO
/****** Object:  StoredProcedure [PROAGRO].[spListaGeorreferencias]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PROAGRO].[spListaGeorreferencias]
AS
BEGIN
	SELECT	
		idGeorreferencia, idEstado, Latitud, Longitud
	FROM
		PROAGRO.Georreferencias
END
GO
/****** Object:  StoredProcedure [PROAGRO].[spListaUsuarios]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PROAGRO].[spListaUsuarios]
AS
BEGIN
	SELECT 
		idUsuario, Contraseña, Nombre, Fecha_Nacimiento, RFC, ACTIVO
	FROM
		PROAGRO.PROAGRO.Usuarios
	ORDER BY 
		Nombre
END
GO
/****** Object:  StoredProcedure [PROAGRO].[spUbicacionesGeorreferenciasPorUsuario]    Script Date: 10/01/2022 11:32:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [PROAGRO].[spUbicacionesGeorreferenciasPorUsuario](@usuario int)
AS
BEGIN
	SELECT
		P.idUsuario, P.idEstado,
		U.idUsuario AS idUsuario_USUARIO, Contraseña, U.Nombre AS Nombre_USUARIO, Fecha_Nacimiento, RFC, ACTIVO,
		idEstados, E.Nombre AS Nombre_ESTADOS, Abreviacion,
		idGeorreferencia, G.idEstado AS idEstado_GEORREFERENCIAS, Latitud, Longitud
	FROM 
		PROAGRO.Permisos P
	INNER JOIN 
		PROAGRO.Usuarios U
	ON 
		P.idUsuario = U.idUsuario
	INNER JOIN 
		PROAGRO.Estados E
	ON 
		P.idEstado = E.idEstados
	INNER JOIN 
		PROAGRO.Georreferencias G
	ON
		E.idEstados = G.idEstado
	WHERE 
		P.idUsuario = @usuario
END
GO
