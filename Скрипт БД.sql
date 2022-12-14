USE [master]
GO
/****** Object:  Database [BazaAb]    Script Date: 23.06.2022 5:13:05 ******/
CREATE DATABASE [BazaAb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Параша', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Параша.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Параша_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Параша_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BazaAb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BazaAb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BazaAb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BazaAb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BazaAb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BazaAb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BazaAb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BazaAb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BazaAb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BazaAb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BazaAb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BazaAb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BazaAb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BazaAb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BazaAb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BazaAb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BazaAb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BazaAb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BazaAb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BazaAb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BazaAb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BazaAb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BazaAb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BazaAb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BazaAb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BazaAb] SET  MULTI_USER 
GO
ALTER DATABASE [BazaAb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BazaAb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BazaAb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BazaAb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BazaAb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BazaAb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BazaAb] SET QUERY_STORE = OFF
GO
USE [BazaAb]
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement](
	[№_Agreement] [int] NOT NULL,
	[Date_of_Registration] [date] NULL,
	[ID_Status] [int] NOT NULL,
	[№_Document] [int] NOT NULL,
	[Total_Coast] [money] NULL,
 CONSTRAINT [PK_Agreement] PRIMARY KEY CLUSTERED 
(
	[№_Agreement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agreement_App-Connect]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement_App-Connect](
	[ID_Agreement] [int] NOT NULL,
	[ID_App_Connect] [int] NOT NULL,
 CONSTRAINT [PK_Agreement_App-Connect] PRIMARY KEY CLUSTERED 
(
	[ID_Agreement] ASC,
	[ID_App_Connect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agreement_Services]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement_Services](
	[№_Agreement] [int] NOT NULL,
	[ID_Services] [int] NOT NULL,
 CONSTRAINT [PK_Agreement_Services] PRIMARY KEY CLUSTERED 
(
	[№_Agreement] ASC,
	[ID_Services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[App-on_for_Connect]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App-on_for_Connect](
	[ID_App-Connect] [int] NOT NULL,
	[Date] [date] NULL,
	[ID_Employer] [int] NOT NULL,
	[ID_Status] [int] NOT NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_App-on_for_Connect] PRIMARY KEY CLUSTERED 
(
	[ID_App-Connect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorization]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorization](
	[ID_Auto] [int] NOT NULL,
	[Login] [nvarchar](25) NULL,
	[Password] [nvarchar](25) NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[ID_Auto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID_Client] [int] NOT NULL,
	[Surname] [nvarchar](25) NULL,
	[Name] [nvarchar](25) NULL,
	[Patronymic] [nvarchar](25) NULL,
	[Passport] [nvarchar](20) NULL,
	[Place_of_issue] [nvarchar](50) NULL,
	[Agency] [nvarchar](50) NULL,
	[Pnone_Num] [nvarchar](20) NULL,
	[Address] [nvarchar](50) NULL,
	[Registration_Address] [nvarchar](50) NULL,
	[№_Agreement] [int] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[ID_Employer] [int] NOT NULL,
	[Surname] [nvarchar](25) NULL,
	[Name] [nvarchar](25) NULL,
	[Patronymic] [nvarchar](25) NULL,
	[ID_Position] [int] NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[ID_Auto] [int] NOT NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[ID_Employer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Internal_Documentation]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Internal_Documentation](
	[ID_Document] [int] NOT NULL,
	[Title] [nvarchar](20) NULL,
	[Form_Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_Internal_Documentation] PRIMARY KEY CLUSTERED 
(
	[ID_Document] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID_Position] [int] NOT NULL,
	[Title] [nvarchar](25) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ID_Request] [int] NOT NULL,
	[Date_Registration] [date] NULL,
	[Date_Done] [date] NULL,
	[№_Agreement] [int] NOT NULL,
	[ID_Employer] [int] NOT NULL,
	[ID_Status] [int] NOT NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[ID_Request] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ID_Services] [int] NOT NULL,
	[Title] [nvarchar](25) NULL,
	[Tariff] [nvarchar](30) NULL,
	[Coast] [money] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ID_Services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID_Status] [int] NOT NULL,
	[Title] [nvarchar](15) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID_Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 23.06.2022 5:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[ИД_Авторизации] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Internal_Documentation] FOREIGN KEY([№_Document])
REFERENCES [dbo].[Internal_Documentation] ([ID_Document])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Internal_Documentation]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status] ([ID_Status])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Status]
GO
ALTER TABLE [dbo].[Agreement_App-Connect]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_App-Connect_Agreement] FOREIGN KEY([ID_Agreement])
REFERENCES [dbo].[Agreement] ([№_Agreement])
GO
ALTER TABLE [dbo].[Agreement_App-Connect] CHECK CONSTRAINT [FK_Agreement_App-Connect_Agreement]
GO
ALTER TABLE [dbo].[Agreement_App-Connect]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_App-Connect_App-on_for_Connect] FOREIGN KEY([ID_App_Connect])
REFERENCES [dbo].[App-on_for_Connect] ([ID_App-Connect])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement_App-Connect] CHECK CONSTRAINT [FK_Agreement_App-Connect_App-on_for_Connect]
GO
ALTER TABLE [dbo].[Agreement_Services]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Services_Agreement] FOREIGN KEY([№_Agreement])
REFERENCES [dbo].[Agreement] ([№_Agreement])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement_Services] CHECK CONSTRAINT [FK_Agreement_Services_Agreement]
GO
ALTER TABLE [dbo].[Agreement_Services]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Services_Services] FOREIGN KEY([ID_Services])
REFERENCES [dbo].[Services] ([ID_Services])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement_Services] CHECK CONSTRAINT [FK_Agreement_Services_Services]
GO
ALTER TABLE [dbo].[App-on_for_Connect]  WITH CHECK ADD  CONSTRAINT [FK_App-on_for_Connect_Employer] FOREIGN KEY([ID_Employer])
REFERENCES [dbo].[Employer] ([ID_Employer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[App-on_for_Connect] CHECK CONSTRAINT [FK_App-on_for_Connect_Employer]
GO
ALTER TABLE [dbo].[App-on_for_Connect]  WITH CHECK ADD  CONSTRAINT [FK_App-on_for_Connect_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status] ([ID_Status])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[App-on_for_Connect] CHECK CONSTRAINT [FK_App-on_for_Connect_Status]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Agreement] FOREIGN KEY([№_Agreement])
REFERENCES [dbo].[Agreement] ([№_Agreement])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Agreement]
GO
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Authorization] FOREIGN KEY([ID_Auto])
REFERENCES [dbo].[Authorization] ([ID_Auto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_Authorization]
GO
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Position] FOREIGN KEY([ID_Position])
REFERENCES [dbo].[Position] ([ID_Position])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_Position]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Agreement] FOREIGN KEY([№_Agreement])
REFERENCES [dbo].[Agreement] ([№_Agreement])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Agreement]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Employer] FOREIGN KEY([ID_Employer])
REFERENCES [dbo].[Employer] ([ID_Employer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Employer]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status] ([ID_Status])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
USE [master]
GO
ALTER DATABASE [BazaAb] SET  READ_WRITE 
GO
