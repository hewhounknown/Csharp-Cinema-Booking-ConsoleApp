USE [DB]
GO
/****** Object:  Table [dbo].[Tbl_Booking]    Script Date: 5/27/2024 12:11:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[ShowtimeId] [int] NOT NULL,
	[SeatNo] [varchar](50) NOT NULL,
	[IsBooked] [bit] NOT NULL,
	[BookedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Movie]    Script Date: 5/27/2024 12:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Movie](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieTitle] [varchar](50) NOT NULL,
	[Genre] [varchar](50) NOT NULL,
	[Description] [text] NULL,
	[Rating] [varchar](50) NOT NULL,
	[Duration] [time](7) NOT NULL,
 CONSTRAINT [PK_Tbl_Movie] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Showtime]    Script Date: 5/27/2024 12:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Showtime](
	[ShowtimeId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[Showtime] [datetime] NOT NULL,
 CONSTRAINT [PK_Tbl_Showtime] PRIMARY KEY CLUSTERED 
(
	[ShowtimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Booking] ON 

INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (1, 3, 4, N'A3', 1, N'Bakk UwU')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (2, 3, 4, N'C5', 1, N'DDTOO')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (3, 1, 1, N'B2', 1, N'Rabbit')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (4, 2, 7, N'A3', 1, N'O_KOKO')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (5, 2, 6, N'D2', 1, N'HHH')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (6, 3, 4, N'A10', 1, N'Euro')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (7, 3, 4, N'A6', 1, N'OuuuP')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (8, 3, 4, N'A1', 1, N'll')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (9, 1, 1, N'A9', 1, N' ')
INSERT [dbo].[Tbl_Booking] ([BookingId], [MovieId], [ShowtimeId], [SeatNo], [IsBooked], [BookedBy]) VALUES (10, 2, 7, N'E6', 1, N'kk')
SET IDENTITY_INSERT [dbo].[Tbl_Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Movie] ON 

INSERT [dbo].[Tbl_Movie] ([MovieId], [MovieTitle], [Genre], [Description], [Rating], [Duration]) VALUES (1, N'8 Mile', N'Musical/Drama', N'Jimmy ''B-Rabbit'' Smith is an aspiring rapper with a messed-up life. He must use his rap skills to succeed in a rapping contest as this could be his last chance to get out of the ghetto.', N'7.2/10 IMDb', CAST(N'01:50:00' AS Time))
INSERT [dbo].[Tbl_Movie] ([MovieId], [MovieTitle], [Genre], [Description], [Rating], [Duration]) VALUES (2, N'All Quiet on the Western Front', N'War/Action', N'War breaks out in Germany in 1914. Paul Bäumer and his classmates quickly enlist in the army to serve their fatherland. No sooner are they drafted than the first images from the battlefield show them the reality of war.', N'7.8/10 IMDb', CAST(N'02:27:00' AS Time))
INSERT [dbo].[Tbl_Movie] ([MovieId], [MovieTitle], [Genre], [Description], [Rating], [Duration]) VALUES (3, N'Grown Ups', N'Comedy/Drama', N'Five childhood friends take their families for a weekend trip to a lake house in their hometown, where they reunite to attend the funeral of their former high school basketball coach.', N'6/10 IMDb', CAST(N'01:42:00' AS Time))
INSERT [dbo].[Tbl_Movie] ([MovieId], [MovieTitle], [Genre], [Description], [Rating], [Duration]) VALUES (4, N'Dune: Part One', N'Sci-fi/Adventure', N'Paul Atreides arrives on Arrakis after his father accepts the stewardship of the dangerous planet. However, chaos ensues after a betrayal as forces clash to control melange, a precious resource.', N'8/10 IMDb', CAST(N'02:35:00' AS Time))
SET IDENTITY_INSERT [dbo].[Tbl_Movie] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Showtime] ON 

INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (1, 1, CAST(N'2024-06-06T09:00:00.000' AS DateTime))
INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (2, 1, CAST(N'2024-05-06T02:30:00.000' AS DateTime))
INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (3, 3, CAST(N'2024-05-06T10:30:00.000' AS DateTime))
INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (4, 3, CAST(N'2024-07-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (5, 2, CAST(N'2024-06-06T03:00:00.000' AS DateTime))
INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (6, 2, CAST(N'2024-04-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Tbl_Showtime] ([ShowtimeId], [MovieId], [Showtime]) VALUES (7, 2, CAST(N'2024-04-06T01:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tbl_Showtime] OFF
GO
ALTER TABLE [dbo].[Tbl_Booking]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Booking_Tbl_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Tbl_Movie] ([MovieId])
GO
ALTER TABLE [dbo].[Tbl_Booking] CHECK CONSTRAINT [FK_Tbl_Booking_Tbl_Movie]
GO
ALTER TABLE [dbo].[Tbl_Booking]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Booking_Tbl_Showtime] FOREIGN KEY([ShowtimeId])
REFERENCES [dbo].[Tbl_Showtime] ([ShowtimeId])
GO
ALTER TABLE [dbo].[Tbl_Booking] CHECK CONSTRAINT [FK_Tbl_Booking_Tbl_Showtime]
GO
ALTER TABLE [dbo].[Tbl_Showtime]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Movie_Tbl_Showtime] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Tbl_Movie] ([MovieId])
GO
ALTER TABLE [dbo].[Tbl_Showtime] CHECK CONSTRAINT [FK_Tbl_Movie_Tbl_Showtime]
GO
