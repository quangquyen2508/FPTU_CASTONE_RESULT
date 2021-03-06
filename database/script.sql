USE [master]
GO
/****** Object:  Database [FUCapstoneResult]    Script Date: 3/10/2022 9:25:12 PM ******/
CREATE DATABASE [FUCapstoneResult]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FPTResultCapstone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL2019EXP\MSSQL\DATA\FPTResultCapstone.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FPTResultCapstone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL2019EXP\MSSQL\DATA\FPTResultCapstone_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FUCapstoneResult] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FUCapstoneResult].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ARITHABORT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FUCapstoneResult] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FUCapstoneResult] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FUCapstoneResult] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FUCapstoneResult] SET  MULTI_USER 
GO
ALTER DATABASE [FUCapstoneResult] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FUCapstoneResult] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FUCapstoneResult] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FUCapstoneResult] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FUCapstoneResult] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FUCapstoneResult] SET QUERY_STORE = OFF
GO
USE [FUCapstoneResult]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [nvarchar](50) NOT NULL,
	[PostID] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[CommentDetail] [nvarchar](max) NOT NULL,
	[CommentTime] [datetime] NOT NULL,
	[CommentStatusID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentStatus]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentStatus](
	[CommentStatusID] [int] IDENTITY(1,1) NOT NULL,
	[CommentStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CommentStatus] PRIMARY KEY CLUSTERED 
(
	[CommentStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ContentKey] [nvarchar](250) NOT NULL,
	[ContentValue] [ntext] NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ContentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructors](
	[InstructorID] [nvarchar](50) NOT NULL,
	[InstructorName] [nvarchar](200) NOT NULL,
	[InstructorImage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Majors]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Majors](
	[MajorID] [nvarchar](50) NOT NULL,
	[MajorName] [nvarchar](200) NOT NULL,
	[MajorImage] [ntext] NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [nvarchar](50) NOT NULL,
	[PostTitle] [nvarchar](300) NOT NULL,
	[PostDate] [date] NOT NULL,
	[PostAuthor] [nvarchar](200) NOT NULL,
	[PostContent] [nvarchar](max) NOT NULL,
	[PostImage] [nvarchar](max) NOT NULL,
	[LastEditedUser] [nvarchar](50) NOT NULL,
	[Upvote] [int] NOT NULL,
	[PostStatusID] [int] NOT NULL,
	[IsMainPost] [nvarchar](50) NULL,
	[ProjectID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostStatuses]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostStatuses](
	[PostStatusID] [int] IDENTITY(1,1) NOT NULL,
	[PostStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PostStatuses] PRIMARY KEY CLUSTERED 
(
	[PostStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectInstructor]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectInstructor](
	[ProjectID] [nvarchar](50) NOT NULL,
	[InstructorID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProjectInstructor] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectID] [nvarchar](50) NOT NULL,
	[ProjectName] [nvarchar](200) NOT NULL,
	[ProjectDescription] [nvarchar](max) NOT NULL,
	[ProjectImage] [nvarchar](max) NULL,
	[ProjectScore] [float] NOT NULL,
	[MajorID] [nvarchar](50) NOT NULL,
	[SemesterID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semesters]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semesters](
	[SemesterID] [nvarchar](50) NOT NULL,
	[SemesterName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Semesters] PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [nvarchar](50) NOT NULL,
	[StudentName] [nvarchar](250) NOT NULL,
	[MajorID] [nvarchar](50) NOT NULL,
	[StudentImage] [ntext] NOT NULL,
	[TeamID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagDetails]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagDetails](
	[TagDetailID] [nvarchar](50) NOT NULL,
	[TagDetailName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TagDetails] PRIMARY KEY CLUSTERED 
(
	[TagDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[PostID] [nvarchar](50) NOT NULL,
	[TagDetailID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[TagDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] [nvarchar](50) NOT NULL,
	[TeamName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Teams_1] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserStatusID] [int] NOT NULL,
	[UserImage] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SubEmail] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NOT NULL,
	[OTP] [nvarchar](6) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[UserStatusID] [int] IDENTITY(1,1) NOT NULL,
	[UserStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserStatus] PRIMARY KEY CLUSTERED 
(
	[UserStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votes]    Script Date: 3/10/2022 9:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votes](
	[UserID] [nvarchar](50) NOT NULL,
	[PostID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Votes] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentDetail], [CommentTime], [CommentStatusID]) VALUES (N'10a38fbd-5be2-41de-b7d3-2a9649148742', N'2', N'5a1e40f4-a2a3-4078-a257-21863e042b12', N'good job 3', CAST(N'2022-03-10T12:29:46.000' AS DateTime), 2)
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentDetail], [CommentTime], [CommentStatusID]) VALUES (N'7a4772ef-5e67-4854-bd8d-855d3f3503b6', N'2', N'5a1e40f4-a2a3-4078-a257-21863e042b12', N'test comment', CAST(N'2022-03-10T12:54:18.000' AS DateTime), 2)
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentDetail], [CommentTime], [CommentStatusID]) VALUES (N'9fa54951-24ff-4ba5-8018-119fd134b410', N'2', N'5a1e40f4-a2a3-4078-a257-21863e042b12', N'good job', CAST(N'2022-03-10T12:29:21.000' AS DateTime), 3)
INSERT [dbo].[Comments] ([CommentID], [PostID], [UserID], [CommentDetail], [CommentTime], [CommentStatusID]) VALUES (N'ff3e7999-97b5-4f09-be2f-bd11a25d9992', N'2', N'5a1e40f4-a2a3-4078-a257-21863e042b12', N'good job 2', CAST(N'2022-03-10T12:29:35.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[CommentStatus] ON 

INSERT [dbo].[CommentStatus] ([CommentStatusID], [CommentStatusName]) VALUES (1, N'Đang Chờ Xét Duyệt')
INSERT [dbo].[CommentStatus] ([CommentStatusID], [CommentStatusName]) VALUES (2, N'Đã Xét Duyệt')
INSERT [dbo].[CommentStatus] ([CommentStatusID], [CommentStatusName]) VALUES (3, N'Đã Bị Xóa')
SET IDENTITY_INSERT [dbo].[CommentStatus] OFF
GO
INSERT [dbo].[Content] ([ContentKey], [ContentValue]) VALUES (N'slide', N'[]')
INSERT [dbo].[Content] ([ContentKey], [ContentValue]) VALUES (N'timeline', N'[]')
GO
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'1', N'Thầy Nguyễn Thế Hoàng', N'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2018/06/giao-l%C3%A0ng-768x432.jpg')
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'3', N'Cô Thân Thị Ngọc Vân', N'https://fpt.edu.vn/Resources/article/uploads/2020/11/ANH%201%20BAI%20PR%2012%20v1.png')
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'4', N'Thầy Đoàn Nguyễn Thành Hòa', N'https://scontent.fsgn2-4.fna.fbcdn.net/v/t31.18172-8/20729154_10203459490283234_6369935824807666706_o.jpg?_nc_cat=101&ccb=1-5&_nc_sid=19026a&_nc_ohc=c4tt8hVBOiYAX_tXVcI&tn=MWZAySIbj1ZgudIA&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT9VynNFUvoBhwzOe0NTPt5jJyU4ThhroAYeYiElHxFFZg&oe=624D6032')
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'5', N'Thầy Lâm Hữu Khánh Phương', N'https://i.chungta.vn/2016/11/18/ictnews-20-11-ngay-nha-giao-vi-7477-6336-1479432744.jpg')
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'6', N'Thầy Ngô Đăng Hà An', N'https://hcmuni.fpt.edu.vn/Data/Sites/1/News/335/ngo-dang-ha-an.jpg')
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'7', N'Thầy Kiều Trọng Khánh', N'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/zz2020file/teacher/thaykieutrongkhanh.jpg')
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'GV123', N'Thầy Thân Văn Sử', N'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/z2021/th%E1%BA%A7y-th%C3%A2n-v%C4%83n-s%E1%BB%AD/dhfptthaythanvansu.jpg')
GO
INSERT [dbo].[Majors] ([MajorID], [MajorName], [MajorImage]) VALUES (N'1', N'Kỹ Thuật Phần Mềm', N'ok')
INSERT [dbo].[Majors] ([MajorID], [MajorName], [MajorImage]) VALUES (N'2', N'An Toàn Thông Tin', N'ok')
GO
INSERT [dbo].[Posts] ([PostID], [PostTitle], [PostDate], [PostAuthor], [PostContent], [PostImage], [LastEditedUser], [Upvote], [PostStatusID], [IsMainPost], [ProjectID]) VALUES (N'1', N'Đồ Án Đỗ Xe Máy Tự Động', CAST(N'2022-03-09' AS Date), N'Võ Đức Minh', N'<h3>Ưu điểm của hệ thống giữ xe th&ocirc;ng minh:</h3>

<ul>
	<li>N&acirc;ng cao năng suất hoạt động của b&atilde;i xe. Tăng thời gian tương t&aacute;c.</li>
	<li>Hạn chế sự ảnh hưởng con người.</li>
	<li>An to&agrave;n, an ninh được đảm bảo cao hơn nhiều so với phương ph&aacute;p truyền thống.</li>
	<li>Dễ d&agrave;ng lưu trữ v&agrave; truy suất dữ liệu khi cần thiết.</li>
</ul>

<h3>B&atilde;i giữ xe th&ocirc;ng minh cần c&oacute; những thiết bị g&igrave;</h3>

<p>Sự phức tạp v&agrave; số lượng thiết bị của hệ thống b&atilde;i giữ xe phụ thuộc v&agrave;o nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; sự cần thiết trong từng ho&agrave;n cảnh thực tế.</p>

<p>Ngo&agrave;i ra hệ thống giữ xe d&agrave;nh cho xe m&aacute;y thường c&oacute; y&ecirc;u cầu đơn giản hơn so với hệ thống giữ xe d&agrave;nh cho oto.</p>

<p>Về cơ bản, một hệ thống giữ xe tự động cần c&oacute; những thiết bị sau:</p>

<ul>
	<li>
	<h4>M&aacute;y t&iacute;nh điều khiển.</h4>
	</li>
</ul>

<p>Do nhu cầu hoạt động li&ecirc;n tục, m&aacute;y t&iacute;nh được sử dụng n&ecirc;n l&agrave; loại m&aacute;y t&iacute;nh c&ocirc;ng nghiệp. M&aacute;y c&oacute; hiệu suất cao v&agrave; hoạt động bền bỉ.</p>

<p><img alt="Máy tính công nghiệp IPC 7132 dành cho Bãi giữ xe thông minh" height="214" sizes="(max-width: 300px) 100vw, 300px" src=''https://dienmayglobal.vn/wp-content/uploads/2018/10/may-tinh-cong-nghiep-ipc-7132-300x214.jpg" srcset="https://dienmayglobal.vn/wp-content/uploads/2018/10/may-tinh-cong-nghiep-ipc-7132-300x214.jpg 300w, https://dienmayglobal.vn/wp-content/uploads/2018/10/may-tinh-cong-nghiep-ipc-7132.jpg 350w" width="300'' /></p>

<p>M&aacute;y t&iacute;nh c&ocirc;ng nghiệp IPC 7132</p>

<p><strong>M&aacute;y t&iacute;nh c&ocirc;ng nghiệp IPC 7132</strong>&nbsp;với cấu h&igrave;nh đề xuất như sau:</p>

<p>&ndash; Khung:&nbsp;CHASSIS, Cost-effective ATX/mATX chassis</p>

<p>&ndash; Bo mạch chủ:&nbsp;AIMB-705G2-00A1E CIRCUIT BOARD, LGA1151 ATX IMB H110, Dual LAN, Dual display</p>

<p>&ndash; Nguồn:&nbsp;PS8-300ATX-ZBE: POWER SUPPLY, 80+ Bronze PS/2 SPS 300W ATX (DELTA) RoHS</p>

<p>&ndash; Main:&nbsp;96MPI3S-3.7-3M11T CORE 3.7G 3M 1151P 2 CORE I3-6100</p>

<p>&ndash; Ram: 4GGB.&nbsp;Ổ cứng: HDD 500GGb</p>

<ul>
	<li>
	<h4>Phần mềm chuy&ecirc;n dụng quản l&yacute; b&atilde;i đỗ xe.</h4>
	</li>
</ul>

<p>Phần mềm c&oacute; chức năng điều khiển, hiển thị h&igrave;nh ảnh trực tiếp. Điều khiển chụp ảnh khi c&oacute; xe ra v&agrave;o.</p>

<p>&ndash; T&iacute;ch hợp chức năng nhận diện biển số, khả năng nhận diện biển số cao l&ecirc;n tới hơn 90%.</p>

<p>&ndash; Xử l&yacute; đổi l&agrave;n trong giờ cao điểm</p>

<p>&ndash; Giao diện đơn giản, dễ sử dụng</p>

<p>&ndash; T&iacute;nh năng bảo mật cao, quản l&yacute; chặt chẽ, kh&ocirc;ng để thất thu bất cứ một khoản ph&iacute; n&agrave;o.</p>

<p>&ndash; Dự to&aacute;n, ph&acirc;n chia tất cả c&aacute;c trường hợp c&oacute; thể xảy ra, đồng thời x&acirc;y dựng hướng giải quyết cho c&aacute;c trường hợp một c&aacute;ch tối ưu nhất</p>

<p><img alt="Phần mềm quản lý bãi giữ xe" height="576" sizes="(max-width: 1024px) 100vw, 1024px" src=''https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe-1024x576.png" srcset="https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe-1024x576.png 1024w, https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe-300x169.png 300w, https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe-768x432.png 768w, https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe-1170x658.png 1170w, https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe-800x450.png 800w, https://dienmayglobal.vn/wp-content/uploads/2018/10/phan-mem-quan-ly-bai-giu-xe.png 1366w" width="1024'' /></p>

<p>Phần mềm quản l&yacute; b&atilde;i giữ xe &ndash; h&igrave;nh ảnh minh họa</p>

<ul>
	<li>
	<h4>Camera chụp biển số</h4>
	</li>
</ul>

<p>Camera d&ugrave;ng để chụp v&agrave; lưu lại h&igrave;nh ảnh v&agrave;o phần mềm mỗi khi c&oacute; xe ra v&agrave;o.</p>

<p>Mỗi l&agrave;n xe thường được thiết kế gồm 3 camera: 1 camera chụp trước (mặt kh&aacute;ch), 1 camera chụp biển số v&agrave; 1 camera chụp to&agrave;n cảnh.</p>

<p>Ch&uacute;ng t&ocirc;i sử dụng&nbsp;<a href="https://dienmayglobal.vn/product-category/camera-an-ninh/camera-ip/">camera IP</a>&nbsp;cho chất lượng h&igrave;nh ảnh vượt trội, kể cả trong điều kiện b&atilde;i xe thiếu s&aacute;ng.</p>

<ul>
	<li>
	<h4>Barrier tự động</h4>
	</li>
</ul>

<p><a href="https://dienmayglobal.vn/product-category/cong-cua-tu-dong/barrier-tu-dong/">Barrier tự động</a>&nbsp;được sử dụng để n&acirc;ng hạ tự động, sau khi xe đ&atilde; quẹt thẻ v&agrave; được hệ thống ghi nhận l&agrave; hợp lệ.</p>

<p>Trong một số trường hợp, kh&aacute;ch h&agrave;ng c&oacute; thể kh&ocirc;ng cần sử dụng barrier để tiết giảm chi ph&iacute; đầu tư.</p>

<p>Tuy nhi&ecirc;n, việc lắp barrier vẫn thực sự cần thiết đối với b&atilde;i giữ xe th&ocirc;ng minh do c&oacute; thể hạn chế được những h&agrave;nh vi cố t&igrave;nh vượt qua kiểm so&aacute;t. Đặc biệt hiệu quả trong trường hợp b&atilde;i giữ xe tự động ho&agrave;n to&agrave;n v&agrave; kh&ocirc;ng c&oacute; người kiểm so&aacute;t.</p>

<p>Sản phẩm được ưu chuộng nhất hiện nay l&agrave; d&ograve;ng BS-306. Với việc t&ugrave;y biến được cần thẳng hoặc cần gập v&agrave; chiều d&agrave;i barrier, BS-306 th&iacute;ch hợp với cả kh&ocirc;ng gian rộng cũng như chật hẹp.</p>

<table border="0">
	<tbody>
		<tr>
			<td><img alt="Barrier tự động BS-306" height="300" sizes="(max-width: 300px) 100vw, 300px" src=''https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-300x300.jpg" srcset="https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-300x300.jpg 300w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-150x150.jpg 150w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-768x768.jpg 768w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-100x100.jpg 100w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-400x400.jpg 400w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306.jpg 800w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-120x120.jpg 120w, https://dienmayglobal.vn/wp-content/uploads/2018/08/barrier-tu-dong-bs-306-600x600.jpg 600w" width="300'' />
			<p>Barrier tự động BS-306</p>
			</td>
			<td><img alt="Barrier cần gập thích hợp cho không gian hẹp" height="225" sizes="(max-width: 300px) 100vw, 300px" src=''https://dienmayglobal.vn/wp-content/uploads/2018/10/barrier-can-gap-300x225.jpg" srcset="https://dienmayglobal.vn/wp-content/uploads/2018/10/barrier-can-gap-300x225.jpg 300w, https://dienmayglobal.vn/wp-content/uploads/2018/10/barrier-can-gap-768x576.jpg 768w, https://dienmayglobal.vn/wp-content/uploads/2018/10/barrier-can-gap-800x600.jpg 800w, https://dienmayglobal.vn/wp-content/uploads/2018/10/barrier-can-gap.jpg 960w" width="300'' />
			<p>Barrier cần gập th&iacute;ch hợp cho kh&ocirc;ng gian hẹp</p>
			</td>
		</tr>
	</tbody>
</table>

<ul>
	<li>
	<h4>Bộ d&ograve; v&ograve;ng từ</h4>
	</li>
</ul>

<p>Bộ d&ograve; v&ograve;ng từ l&agrave; một bộ phần quan trọng kh&ocirc;ng thể thiếu của b&atilde;i giữ xe th&ocirc;ng minh. N&oacute; được sử dụng trong c&aacute;c b&agrave;i to&aacute;n ph&aacute;t hiện xe, đếm xe hay ph&acirc;n loại xe.</p>

<p>Cấu tạo của một v&ograve;ng từ bao gồm 1 cu&ocirc;n d&acirc;y điện được sắp xếp th&agrave;nh 1 mạch v&ograve;ng.</p>

<p>C&oacute; xe đi v&agrave;o bộ d&ograve; v&ograve;ng từ sẽ k&iacute;ch hoạt hệ thống nhận dạng thẻ từ xa đối với oto. Bộ d&ograve; v&ograve;ng từ cũng c&oacute; thể điều khiển n&acirc;ng hạ tự động barrier khi c&oacute; xe qua.</p>

<p>Ch&uacute;ng ta c&oacute; thể kết hợp nhiều bộ d&ograve; v&ograve;ng từ để thực hiện c&aacute;c chức năng kh&aacute;c nhau.</p>

<p>N&oacute;i chung việc lắp đặt v&agrave; bố tr&iacute; bộ d&ograve; v&ograve;ng từ như thế n&agrave;o phụ thuộc v&agrave;o y&ecirc;u cầu v&agrave; b&agrave;i to&aacute;n m&agrave; kh&aacute;ch h&agrave;ng đề ra.</p>

<ul>
	<li>
	<h4>Đầu đọc thẻ</h4>
	</li>
</ul>

<p>Đầu đọc thẻ được sử dụng để qu&eacute;t thẻ từ tr&ecirc;n oto hoặc thẻ của người đi xe m&aacute;y. T&iacute;n hiệu từ đầu đọc thẻ được gửi về m&aacute;y t&iacute;nh trung t&acirc;m để xử l&yacute;.</p>

<p>Đối với hệ thống kiểm so&aacute;t oto, thường sẽ sử dụng đầu đọc thẻ tầm trung hoặc xa để thuận tiện cho người sử dụng.</p>

<table border="0">
	<tbody>
		<tr>
			<td><img alt="Bãi giữ xe thông minh" height="191" sizes="(max-width: 300px) 100vw, 300px" src=''https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-300x191.jpg" srcset="https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-300x191.jpg 300w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-768x489.jpg 768w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-800x509.jpg 800w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung.jpg 955w" width="300'' />
			<p>Đầu đọc thẻ từ tầm trung d&ugrave;ng để kiểm so&aacute;t thẻ xe oto</p>
			</td>
			<td><img alt="Đầu đọc thẻ từ tầm trung" height="300" sizes="(max-width: 236px) 100vw, 236px" src=''https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99-236x300.jpg" srcset="https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99-236x300.jpg 236w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99-768x976.jpg 768w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99-806x1024.jpg 806w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99-1170x1486.jpg 1170w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99-800x1016.jpg 800w, https://dienmayglobal.vn/wp-content/uploads/2018/10/dau-doc-the-tam-trung-GP-99.jpg 1188w" width="236'' />
			<p>Đầu đọc thẻ từ tầm trung</p>
			</td>
		</tr>
	</tbody>
</table>

<ul>
	<li>
	<h4>Thẻ từ</h4>
	</li>
</ul>

<p>Cuối c&ugrave;ng, th&agrave;nh phần kh&ocirc;ng thể thiếu của b&atilde;i giữ xe th&ocirc;ng minh, đ&oacute; l&agrave; thẻ từ.</p>

<p>Thẻ từ c&oacute; thể gắn l&ecirc;n mặt trước của oto để nhận dạng xe đ&atilde; đăng k&yacute;.</p>

<p>Hoặc c&oacute; thể l&agrave; thẻ d&ugrave;ng 1 lần ứng dụng cho c&aacute;c si&ecirc;u thị hay b&atilde;i giữ xe c&ocirc;ng cộng.</p>

<ul>
	<li>
	<h4>Th&agrave;nh phần phụ:</h4>
	</li>
</ul>

<p>Th&agrave;nh phần phụ c&oacute; thể c&oacute; của b&atilde;i giữ xe th&ocirc;ng minh thường c&oacute;:</p>

<p>&ndash; Gờ giảm tốc</p>

<p>&ndash; Lan can ph&acirc;n l&agrave;n</p>

<p>&ndash; Gi&aacute; đỡ cột đ&egrave;n</p>

<p>&ndash; Bốt bảo vệ&hellip;</p>

<h3>Thiết kế b&atilde;i giữ xe th&ocirc;ng minh như thế n&agrave;o?</h3>

<p>Thiết kế v&agrave; lựa chọn thiết bị cho b&atilde;i giữ xe để đảm bảo t&iacute;nh kinh tế v&agrave; hiệu quả l&agrave; một thử th&aacute;ch đối với người thiết kế.</p>

<p>Trước ti&ecirc;n, ta phải lựa chọn được ph&acirc;n l&agrave;n xe như thế n&agrave;o: l&agrave;n xe m&aacute;y, l&agrave;n oto, l&agrave;n hỗn hợp.</p>

<p>Căn cứ v&agrave;o đặc th&ugrave; của b&atilde;i giữ xe v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng, b&atilde;i giữ xe th&ocirc;ng minh c&oacute; thể phục vụ nhu cầu như sau:</p>

<ul>
	<li>D&ugrave;ng cho t&ograve;a nh&agrave;, khu d&acirc;n cư, nơi c&aacute;c xe ra v&agrave;o phải đăng k&yacute; thẻ để ra v&agrave;o. Trường hợp n&agrave;y thường phải bố tr&iacute; th&ecirc;m barrier. Bộ d&ograve; v&ograve;ng từ cũng thường được thiết kế 3 v&ograve;ng. Một v&ograve;ng từ để ph&aacute;t hiện xe đến. Một v&ograve;ng từ để điều khiển n&acirc;ng hạ barrier. V&ograve;ng từ cuối c&ugrave;ng để x&aacute;c định xe đ&atilde; đi khỏi phạm vi kiểm so&aacute;t. Giải ph&aacute;p n&agrave;y c&ograve;n được sử dụng cho c&aacute;c trạm thu ph&iacute; 1 dừng.</li>
	<li>D&ugrave;ng cho c&aacute;c si&ecirc;u thị, trung t&acirc;m thương mại, nơi đa phần l&agrave; kh&aacute;ch ra v&agrave;o trong thời gian ngắn. Trường hợp n&agrave;y thường kh&ocirc;ng phải lắp đặt barrier do lượng kh&aacute;ch ra v&agrave;o rất lớn, y&ecirc;u cầu thời gian nhanh.</li>
	<li>Trạm c&acirc;n tải trọng: Sử dụng 2 bộ d&ograve; v&ograve;ng từ để ph&aacute;t hiện xe v&agrave;o v&agrave; ra khỏi phạm vi kiểm so&aacute;t.</li>
</ul>

<p>Như vậy, một hệ thống kiểm so&aacute;t ra v&agrave;o cho xe l&agrave; một hệ thống đồng bộ. Kinh ph&iacute; đầu tư lớn, do đ&oacute; cần được nghi&ecirc;n cứu v&agrave; t&iacute;nh to&aacute;n cụ thể, chi tiết.</p>
', N'https://i.imgur.com/4AKg45F.jpg', N'5a1e40f4-a2a3-4078-a257-21863e042b12', 0, 1, N'1', N'1')
INSERT [dbo].[Posts] ([PostID], [PostTitle], [PostDate], [PostAuthor], [PostContent], [PostImage], [LastEditedUser], [Upvote], [PostStatusID], [IsMainPost], [ProjectID]) VALUES (N'2', N'Đồ Án Tự Động Pass Môn', CAST(N'2022-03-10' AS Date), N'Võ Đức Minh', N'<p><strong>M&atilde; Ho&agrave;ng Nhật Phi ch&agrave;ng C&oacute;c V&agrave;ng ng&agrave;nh Kỹ thuật phần mềm kho&aacute; 11 vừa vinh dự nhận được danh hiệu C&oacute;c V&agrave;ng học kỳ Summer 2017 với kết quả 9.3. C&ugrave;ng tr&ograve; chuyện với Phi để lắng nghe qu&aacute; tr&igrave;nh chinh phục gi&aacute;o tr&igrave;nh &ldquo;d&agrave;y cộm&rdquo; của nh&oacute;m ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin nh&eacute;.</strong></p>

<p><strong>&nbsp;</strong></p>

<p><strong>Ch&agrave;o Phi, ch&uacute;c mừng bạn đ&atilde; nhận được danh hiệu danh gi&aacute; C&oacute;c V&agrave;ng trong học kỳ Summer 2017. Khi nhận được danh hiệu n&agrave;y bạn đ&atilde; nghĩ g&igrave;?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>M&igrave;nh rất bất ngờ khi nghe bạn b&egrave; th&ocirc;ng b&aacute;o kết quả n&agrave;y. Trước giờ m&igrave;nh chưa từng nghĩ sẽ được trở th&agrave;nh C&oacute;c V&agrave;ng v&igrave; danh hiệu n&agrave;y chỉ d&agrave;nh cho bạn n&agrave;o xuất sắc nhất của học kỳ đ&oacute;, m&agrave; bản th&acirc;n m&igrave;nh th&igrave; học cũng t&agrave;m tạm th&ocirc;i<em>.</em></p>

<p><em>&nbsp;</em></p>

<p><strong>Học kỳ Summer l&agrave; học kỳ chuy&ecirc;n ng&agrave;nh thứ 3 của Phi, vậy c&ograve;n 2 học kỳ trước đ&oacute; kết quả &ldquo;học t&agrave;m tạm&rdquo; của bạn như thế n&agrave;o?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>(Cười) M&igrave;nh cũng được sinh vi&ecirc;n giỏi. Thật ra kết quả học tập kh&ocirc;ng phải l&agrave; mục ti&ecirc;u của m&igrave;nh đ&acirc;u, m&igrave;nh chỉ cần đủ &ldquo;pass&rdquo; l&agrave; được rồi. Với m&igrave;nh, kiến thức m&igrave;nh học được sẽ quan trọng hơn điểm số.</p>

<p>&nbsp;</p>

<p><img alt="" src=''https://daihoc-fpt.cdn.vccloud.vn/media/2018/01/C1-910x511.png'' /></p>

<p><em>Nhật Phi (thứ 6 từ phải qua) chụp h&igrave;nh kỉ niệm với giảng vi&ecirc;n v&agrave; bạn b&egrave; trong một buổi học</em></p>

<p><em>&nbsp;</em></p>

<p><strong>Vậy danh hiệu n&agrave;y c&oacute; &yacute; nghĩa g&igrave; với Phi?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>Đ&acirc;y thực sự l&agrave; một sự kh&iacute;ch lệ cho m&igrave;nh trong tương lai. Kết quả n&agrave;y c&oacute; được cũng l&agrave; nhờ sự quan t&acirc;m của c&aacute;c giảng vi&ecirc;n khi giảng dạy trong lớp cho tụi m&igrave;nh nữa.</p>

<p>&nbsp;</p>

<p><strong>X&aacute;c định mục ti&ecirc;u của bản th&acirc;n l&agrave; &ldquo;học thật, thi</strong><strong>thật&rdquo; chắc chắn bạn đ&atilde; phấn đấu rất nhiều. Vậy Phi đ&atilde; phải sắp xếp giữa thời gian học v&agrave; h&agrave;nh như thế n&agrave;o khi m&agrave; gi&aacute;o tr&igrave;nh của nh&oacute;m ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin kh&aacute; d&agrave;y v&agrave; c&ograve;n t&igrave;m hiểu th&ecirc;m những sản phẩm ứng dụng c&ocirc;ng nghệ mới?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>Khi theo học nh&oacute;m ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, m&igrave;nh thực sự rất th&iacute;ch v&igrave; đ&oacute; l&agrave; đam m&ecirc; của m&igrave;nh. V&agrave; thực sự khi theo đuổi thứ m&igrave;nh th&iacute;ch, chắc chắn bạn sẽ c&oacute; rất nhiều động lực hơn.</p>

<p>&nbsp;</p>

<p>C&aacute;ch của m&igrave;nh l&agrave; mỗi khi đến lớp, m&igrave;nh sẽ ghi nhớ kiến thức cũ v&agrave; chuẩn bị b&agrave;i học mới để c&oacute; thể tiếp thu tốt nhất b&agrave;i giảng. B&ecirc;n cạnh đ&oacute;, m&igrave;nh d&agrave;nh thời gian &ocirc;n tập c&aacute;c kiến thức đ&atilde; học trong những m&ocirc;n học trước nhằm tr&aacute;nh qu&ecirc;n những kiến thức quan trọng cần thiết cho c&aacute;c m&ocirc;n học đang học v&agrave; sẽ học. Đối với m&igrave;nh, việc nhắc đi nhắc lại những g&igrave; đ&atilde; học sẽ gi&uacute;p hiểu v&agrave; nhớ r&otilde; hơn những kiến thức quan trọng.</p>

<p>&nbsp;</p>

<p><strong>Ở trường Đại học FPT c&oacute; rất nhiều CLB s&ocirc;i động, Phi c&oacute; đang tham gia v&agrave;o CLB n&agrave;o của trường kh&ocirc;ng?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>Trước đ&acirc;y, Phi c&oacute; tham gia CLB học thuật F-Code. M&igrave;nh nhận thấy F-Code l&agrave; cầu nối giữa những th&agrave;nh vi&ecirc;n c&oacute; c&ugrave;ng đam m&ecirc;, ham th&iacute;ch học hỏi th&ecirc;m những kiến thức li&ecirc;n quan đến c&ocirc;ng nghệ.</p>

<p>&nbsp;</p>

<p>Với m&igrave;nh, tất cả c&aacute;c m&ocirc;n đều quan trọng v&agrave; c&oacute; độ kh&oacute; ri&ecirc;ng của từng m&ocirc;n. Việc tham gia c&aacute;c CLB sẽ gi&uacute;p c&acirc;n bằng thời gian học tập v&agrave; thư gi&atilde;n, gi&uacute;p đầu &oacute;c c&acirc;n bằng v&agrave; dễ tiếp thu c&aacute;i mới hơn cũng như ph&aacute;t triển khả năng s&aacute;ng tạo hơn.</p>

<p>&nbsp;</p>

<p><strong>Theo đuổi ng&agrave;nh học n&agrave;y, sau n&agrave;y em mong muốn sẽ l&agrave;m trong lĩnh vực n&agrave;o. Với em, định nghĩa về m&ocirc;i trường l&agrave;m việc l&yacute; tưởng trong tương lai l&agrave; g&igrave;?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>M&igrave;nh vẫn c&ograve;n ph&acirc;n v&acirc;n, chưa x&aacute;c định lĩnh vực cụ thể m&agrave; m&igrave;nh theo đuổi trong ng&agrave;nh CNTT. M&igrave;nh nghĩ hiện tại m&igrave;nh cần học tập, x&acirc;y dựng tốt kiến thức nền để tạo nền tảng vững chắc hơn th&igrave; tương lai c&oacute; thể thuận lợi hơn khi theo đuổi bất k&igrave; lĩnh vực n&agrave;o.</p>

<p>&nbsp;</p>

<p>M&ocirc;i trường l&agrave;m việc l&yacute; tưởng trong tương lai với m&igrave;nh l&agrave; một m&ocirc;i trường thoải m&aacute;i về thời gian, kh&ocirc;ng gian, đồng nghiệp vui vẻ, h&ograve;a đồng, sẳn s&agrave;ng trao đổi kinh nghiệm, học tập lẫn nhau.</p>

<p>&nbsp;</p>

<p><strong>Cơ duy&ecirc;n n&agrave;o khiến bạn chọn Đại học FPT?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>ĐH FPT l&agrave; sự lựa chọn duy nhất của m&igrave;nh khi c&ograve;n học THPT. Đến b&acirc;y giờ th&igrave; m&igrave;nh vẫn h&agrave;i l&ograve;ng về sự lựa chọn n&agrave;y v&igrave; m&igrave;nh to&agrave;n được học những gi&aacute;o tr&igrave;nh c&oacute; kiến thức mới được cập nhật s&aacute;t với thực tế, giảng vi&ecirc;n th&igrave; lu&ocirc;n quan t&acirc;m, gi&uacute;p đỡ, hỗ trợ tận t&igrave;nh sinh vi&ecirc;n, từng b&agrave;i học l&agrave; sự kết hợp giữa l&yacute; thuyết v&agrave; thực h&agrave;nh.</p>

<p>&nbsp;</p>

<table style="width:100%">
	<tbody>
		<tr>
			<td>C&oacute;c V&agrave;ng l&agrave; danh hiệu cao qu&yacute; ở ĐH FPT d&agrave;nh cho sinh vi&ecirc;n c&oacute; th&agrave;nh t&iacute;ch học tập cao nhất của 3 nh&oacute;m CNTT, Kinh tế v&agrave; c&aacute;c ng&agrave;nh c&ograve;n lại được x&eacute;t tr&ecirc;n to&agrave;n quốc. 2 C&oacute;c V&agrave;ng học kỳ Summer năm 2017 sẽ được t&ocirc;n vinh trong Lễ tổng kết học kỳ Fall 2017 tổ chức tại Hội trường Innovation, C&ocirc;ng vi&ecirc;n Phần mềm Quang Trung, TP.HCM v&agrave;o ng&agrave;y 19/01 tới đ&acirc;y.</td>
		</tr>
	</tbody>
</table>
', N'https://i.imgur.com/j50MXql.jpg', N'5a1e40f4-a2a3-4078-a257-21863e042b12', 1, 1, NULL, N'2')
GO
SET IDENTITY_INSERT [dbo].[PostStatuses] ON 

INSERT [dbo].[PostStatuses] ([PostStatusID], [PostStatusName]) VALUES (1, N'Đã Xuất Bản')
INSERT [dbo].[PostStatuses] ([PostStatusID], [PostStatusName]) VALUES (2, N'Đang Chờ Duyệt')
INSERT [dbo].[PostStatuses] ([PostStatusID], [PostStatusName]) VALUES (3, N'Đã Xóa')
SET IDENTITY_INSERT [dbo].[PostStatuses] OFF
GO
INSERT [dbo].[ProjectInstructor] ([ProjectID], [InstructorID]) VALUES (N'1', N'1')
INSERT [dbo].[ProjectInstructor] ([ProjectID], [InstructorID]) VALUES (N'1', N'4')
INSERT [dbo].[ProjectInstructor] ([ProjectID], [InstructorID]) VALUES (N'1', N'5')
INSERT [dbo].[ProjectInstructor] ([ProjectID], [InstructorID]) VALUES (N'2', N'4')
INSERT [dbo].[ProjectInstructor] ([ProjectID], [InstructorID]) VALUES (N'2', N'6')
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [ProjectDescription], [ProjectImage], [ProjectScore], [MajorID], [SemesterID]) VALUES (N'1', N'Đồ Án Đỗ Xe Máy Tự Động', N'', N'https://i.imgur.com/4AKg45F.jpg', 9.5, N'1', N'1')
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [ProjectDescription], [ProjectImage], [ProjectScore], [MajorID], [SemesterID]) VALUES (N'2', N'Đồ Án Tự Động Pass Môn', N'<p><strong>M&atilde; Ho&agrave;ng Nhật Phi ch&agrave;ng C&oacute;c V&agrave;ng ng&agrave;nh Kỹ thuật phần mềm kho&aacute; 11 vừa vinh dự nhận được danh hiệu C&oacute;c V&agrave;ng học kỳ Summer 2017 với kết quả 9.3. C&ugrave;ng tr&ograve; chuyện với Phi để lắng nghe qu&aacute; tr&igrave;nh chinh phục gi&aacute;o tr&igrave;nh &ldquo;d&agrave;y cộm&rdquo; của nh&oacute;m ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin nh&eacute;. &quot;test edit&quot;</strong></p>

<p><strong>&nbsp;</strong></p>

<p><strong>Ch&agrave;o Phi, ch&uacute;c mừng bạn đ&atilde; nhận được danh hiệu danh gi&aacute; C&oacute;c V&agrave;ng trong học kỳ Summer 2017. Khi nhận được danh hiệu n&agrave;y bạn đ&atilde; nghĩ g&igrave;?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>M&igrave;nh rất bất ngờ khi nghe bạn b&egrave; th&ocirc;ng b&aacute;o kết quả n&agrave;y. Trước giờ m&igrave;nh chưa từng nghĩ sẽ được trở th&agrave;nh C&oacute;c V&agrave;ng v&igrave; danh hiệu n&agrave;y chỉ d&agrave;nh cho bạn n&agrave;o xuất sắc nhất của học kỳ đ&oacute;, m&agrave; bản th&acirc;n m&igrave;nh th&igrave; học cũng t&agrave;m tạm th&ocirc;i<em>.</em></p>

<p><em>&nbsp;</em></p>

<p><strong>Học kỳ Summer l&agrave; học kỳ chuy&ecirc;n ng&agrave;nh thứ 3 của Phi, vậy c&ograve;n 2 học kỳ trước đ&oacute; kết quả &ldquo;học t&agrave;m tạm&rdquo; của bạn như thế n&agrave;o?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>(Cười) M&igrave;nh cũng được sinh vi&ecirc;n giỏi. Thật ra kết quả học tập kh&ocirc;ng phải l&agrave; mục ti&ecirc;u của m&igrave;nh đ&acirc;u, m&igrave;nh chỉ cần đủ &ldquo;pass&rdquo; l&agrave; được rồi. Với m&igrave;nh, kiến thức m&igrave;nh học được sẽ quan trọng hơn điểm số.</p>

<p>&nbsp;</p>

<p><img src=''https://daihoc-fpt.cdn.vccloud.vn/media/2018/01/C1-910x511.png'' /></p>

<p><em>Nhật Phi (thứ 6 từ phải qua) chụp h&igrave;nh kỉ niệm với giảng vi&ecirc;n v&agrave; bạn b&egrave; trong một buổi học</em></p>

<p><em>&nbsp;</em></p>

<p><strong>Vậy danh hiệu n&agrave;y c&oacute; &yacute; nghĩa g&igrave; với Phi?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>Đ&acirc;y thực sự l&agrave; một sự kh&iacute;ch lệ cho m&igrave;nh trong tương lai. Kết quả n&agrave;y c&oacute; được cũng l&agrave; nhờ sự quan t&acirc;m của c&aacute;c giảng vi&ecirc;n khi giảng dạy trong lớp cho tụi m&igrave;nh nữa.</p>

<p>&nbsp;</p>

<p><strong>X&aacute;c định mục ti&ecirc;u của bản th&acirc;n l&agrave; &ldquo;học thật, thi</strong><strong>thật&rdquo; chắc chắn bạn đ&atilde; phấn đấu rất nhiều. Vậy Phi đ&atilde; phải sắp xếp giữa thời gian học v&agrave; h&agrave;nh như thế n&agrave;o khi m&agrave; gi&aacute;o tr&igrave;nh của nh&oacute;m ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin kh&aacute; d&agrave;y v&agrave; c&ograve;n t&igrave;m hiểu th&ecirc;m những sản phẩm ứng dụng c&ocirc;ng nghệ mới?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>Khi theo học nh&oacute;m ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, m&igrave;nh thực sự rất th&iacute;ch v&igrave; đ&oacute; l&agrave; đam m&ecirc; của m&igrave;nh. V&agrave; thực sự khi theo đuổi thứ m&igrave;nh th&iacute;ch, chắc chắn bạn sẽ c&oacute; rất nhiều động lực hơn.</p>

<p>&nbsp;</p>

<p>C&aacute;ch của m&igrave;nh l&agrave; mỗi khi đến lớp, m&igrave;nh sẽ ghi nhớ kiến thức cũ v&agrave; chuẩn bị b&agrave;i học mới để c&oacute; thể tiếp thu tốt nhất b&agrave;i giảng. B&ecirc;n cạnh đ&oacute;, m&igrave;nh d&agrave;nh thời gian &ocirc;n tập c&aacute;c kiến thức đ&atilde; học trong những m&ocirc;n học trước nhằm tr&aacute;nh qu&ecirc;n những kiến thức quan trọng cần thiết cho c&aacute;c m&ocirc;n học đang học v&agrave; sẽ học. Đối với m&igrave;nh, việc nhắc đi nhắc lại những g&igrave; đ&atilde; học sẽ gi&uacute;p hiểu v&agrave; nhớ r&otilde; hơn những kiến thức quan trọng.</p>

<p>&nbsp;</p>

<p><strong>Ở trường Đại học FPT c&oacute; rất nhiều CLB s&ocirc;i động, Phi c&oacute; đang tham gia v&agrave;o CLB n&agrave;o của trường kh&ocirc;ng?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>Trước đ&acirc;y, Phi c&oacute; tham gia CLB học thuật F-Code. M&igrave;nh nhận thấy F-Code l&agrave; cầu nối giữa những th&agrave;nh vi&ecirc;n c&oacute; c&ugrave;ng đam m&ecirc;, ham th&iacute;ch học hỏi th&ecirc;m những kiến thức li&ecirc;n quan đến c&ocirc;ng nghệ.</p>

<p>&nbsp;</p>

<p>Với m&igrave;nh, tất cả c&aacute;c m&ocirc;n đều quan trọng v&agrave; c&oacute; độ kh&oacute; ri&ecirc;ng của từng m&ocirc;n. Việc tham gia c&aacute;c CLB sẽ gi&uacute;p c&acirc;n bằng thời gian học tập v&agrave; thư gi&atilde;n, gi&uacute;p đầu &oacute;c c&acirc;n bằng v&agrave; dễ tiếp thu c&aacute;i mới hơn cũng như ph&aacute;t triển khả năng s&aacute;ng tạo hơn.</p>

<p>&nbsp;</p>

<p><strong>Theo đuổi ng&agrave;nh học n&agrave;y, sau n&agrave;y em mong muốn sẽ l&agrave;m trong lĩnh vực n&agrave;o. Với em, định nghĩa về m&ocirc;i trường l&agrave;m việc l&yacute; tưởng trong tương lai l&agrave; g&igrave;?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>M&igrave;nh vẫn c&ograve;n ph&acirc;n v&acirc;n, chưa x&aacute;c định lĩnh vực cụ thể m&agrave; m&igrave;nh theo đuổi trong ng&agrave;nh CNTT. M&igrave;nh nghĩ hiện tại m&igrave;nh cần học tập, x&acirc;y dựng tốt kiến thức nền để tạo nền tảng vững chắc hơn th&igrave; tương lai c&oacute; thể thuận lợi hơn khi theo đuổi bất k&igrave; lĩnh vực n&agrave;o.</p>

<p>&nbsp;</p>

<p>M&ocirc;i trường l&agrave;m việc l&yacute; tưởng trong tương lai với m&igrave;nh l&agrave; một m&ocirc;i trường thoải m&aacute;i về thời gian, kh&ocirc;ng gian, đồng nghiệp vui vẻ, h&ograve;a đồng, sẳn s&agrave;ng trao đổi kinh nghiệm, học tập lẫn nhau.</p>

<p>&nbsp;</p>

<p><strong>Cơ duy&ecirc;n n&agrave;o khiến bạn chọn Đại học FPT?</strong></p>

<p><strong>&nbsp;</strong></p>

<p>ĐH FPT l&agrave; sự lựa chọn duy nhất của m&igrave;nh khi c&ograve;n học THPT. Đến b&acirc;y giờ th&igrave; m&igrave;nh vẫn h&agrave;i l&ograve;ng về sự lựa chọn n&agrave;y v&igrave; m&igrave;nh to&agrave;n được học những gi&aacute;o tr&igrave;nh c&oacute; kiến thức mới được cập nhật s&aacute;t với thực tế, giảng vi&ecirc;n th&igrave; lu&ocirc;n quan t&acirc;m, gi&uacute;p đỡ, hỗ trợ tận t&igrave;nh sinh vi&ecirc;n, từng b&agrave;i học l&agrave; sự kết hợp giữa l&yacute; thuyết v&agrave; thực h&agrave;nh.</p>

<p>&nbsp;</p>

<table style=''width:100%''>
	<tbody>
		<tr>
			<td>C&oacute;c V&agrave;ng l&agrave; danh hiệu cao qu&yacute; ở ĐH FPT d&agrave;nh cho sinh vi&ecirc;n c&oacute; th&agrave;nh t&iacute;ch học tập cao nhất của 3 nh&oacute;m CNTT, Kinh tế v&agrave; c&aacute;c ng&agrave;nh c&ograve;n lại được x&eacute;t tr&ecirc;n to&agrave;n quốc. 2 C&oacute;c V&agrave;ng học kỳ Summer năm 2017 sẽ được t&ocirc;n vinh trong Lễ tổng kết học kỳ Fall 2017 tổ chức tại Hội trường Innovation, C&ocirc;ng vi&ecirc;n Phần mềm Quang Trung, TP.HCM v&agrave;o ng&agrave;y 19/01 tới đ&acirc;y.</td>
		</tr>
	</tbody>
</table>
', N'https://i.imgur.com/j50MXql.jpg', 9.5, N'1', N'2')
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'User')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Moderator')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Semesters] ([SemesterID], [SemesterName]) VALUES (N'1', N'Fall 2021')
INSERT [dbo].[Semesters] ([SemesterID], [SemesterName]) VALUES (N'2', N'Spring 2021')
GO
INSERT [dbo].[Students] ([StudentID], [StudentName], [MajorID], [StudentImage], [TeamID]) VALUES (N'1', N'Võ Đức Minh', N'1', N'ok', N'1')
GO
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'068b353f-2da9-471b-ad07-0ec1848329d2', N'711')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'0c4eb40e-db82-45d3-a728-1663f60280d7', N'10 diem')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'10c21347-32d5-46b4-9bc3-74c54f406ddf', N'Okoko')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'1e4a9e98-868f-4cba-8d25-fcf8a6891474', N'ok')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'239b9256-2872-417d-afec-2c9b91458928', N'test')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'26b10082-f20d-4ab4-b624-503d4596299b', N'test')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'270a2a7e-dd5b-4c6c-8a13-fd446896d398', N'hcm')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'28b25762-c22a-4290-953f-5c51b5fe844e', N'ok')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'3016bcb8-0c52-4bf9-b48d-0ca117b7bff3', N'testthoi')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'35500ce2-c067-4068-88bc-08f489d0b121', N'ok good')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'380de5a9-a033-4c55-8254-82381dda9d90', N'okok')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'4334581f-109b-4c61-a6cd-c6c3b9418e9a', N'online')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'4fc4e23a-49f8-4903-aa2f-fff79c167d17', N'hoconline')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'5670346e-9b6a-48cb-9243-34846371025b', N'oko')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'56a19246-3bab-478e-96c4-98abf7c2a5b7', N'qua ghe')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'5abc0f0a-6349-4ee7-b664-15eee7f7a9cc', N'ok')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'60aab4b6-5e68-41d7-bb2b-7f80f90ba13b', N'hcmu')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'6795925a-f0c8-43ec-8898-1f19a7138f6b', N'testtag')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'73dbeead-16c6-41ff-82d5-ca9e582b2481', N'alo')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'77be3b33-6a1c-4d82-9e38-112c8c8e3af2', N'pass mon')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'8f1e4fa3-684e-4b1f-992a-376e0c584707', N'ghe z ')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'98561bc4-3f74-4353-ba8b-ec01af3c594b', N'hello')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'98b6ef63-05ad-4cf3-bf05-5955827a6c3f', N'alo')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'9bb57b9c-3898-480c-bd64-6c726f97acd5', N'hay')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'9e56fcf8-ccaf-47a4-a9ff-da2bf44dc94a', N'ngon day')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'ab4b0e9f-4ca4-469e-a478-73c5a8a9cf16', N'test')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'ab5e43e2-6db9-4b27-8916-03fa863226ac', N'14/2')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'b0ec2eed-a0ff-4d68-a558-0ae41869490c', N'')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'b352f452-d567-4652-b0c5-3d0390c4baf4', N'troi')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'b5fb70f4-3db3-4fbb-a2fe-ffcd80156961', N'fpt')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'bc3f1ab9-f9ce-4f81-8aff-981543152738', N'ghe du z')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'c7283fb3-19da-4699-9106-d8d00cc3b55b', N'luon')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'c7b1ce47-2730-45ac-a46b-2367cc4e6bd6', N'di')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'd07357bf-72c8-4adc-9c03-8220f0f16be0', N'qua')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'd5bcdb21-e253-4e2e-8e5a-4283c6ef3dc0', N'teamid')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'dc134bdf-8341-40ac-ba51-150e083e80d1', N'fptu')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'deae5a32-bece-4877-b92c-0d057fd994c8', N'testtagnha')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'e192e096-a94b-4fab-ae37-22a56cc96027', N'coc vang')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'e63d73a8-16ca-49c4-af5d-35e2012d80ab', N'testtag')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'ebdd3ee9-a863-4924-8b57-c08109632a28', N'gôd')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'f1246c6b-d677-4e50-9fd3-5d991ad391b4', N'ghe gom')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'f2af66c2-4ed7-4a90-abeb-19225c2f3dad', N'oi')
INSERT [dbo].[TagDetails] ([TagDetailID], [TagDetailName]) VALUES (N'fcce1d49-4f16-4fcb-98ea-4ed0d875f7e0', N'hcmu')
GO
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'1', N'1e4a9e98-868f-4cba-8d25-fcf8a6891474')
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'1', N'd5bcdb21-e253-4e2e-8e5a-4283c6ef3dc0')
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'2', N'0c4eb40e-db82-45d3-a728-1663f60280d7')
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'2', N'1e4a9e98-868f-4cba-8d25-fcf8a6891474')
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'2', N'77be3b33-6a1c-4d82-9e38-112c8c8e3af2')
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'2', N'dc134bdf-8341-40ac-ba51-150e083e80d1')
INSERT [dbo].[Tags] ([PostID], [TagDetailID]) VALUES (N'2', N'e192e096-a94b-4fab-ae37-22a56cc96027')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (N'1', N'GaoTeam')
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (N'2', N'SecondTeam')
GO
INSERT [dbo].[Users] ([UserID], [UserName], [DateCreated], [UserStatusID], [UserImage], [Email], [SubEmail], [Password], [OTP], [RoleID]) VALUES (N'1', N'1', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 2, N'1         ', N'1', NULL, N'1', N'1', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [DateCreated], [UserStatusID], [UserImage], [Email], [SubEmail], [Password], [OTP], [RoleID]) VALUES (N'4d301e43-5cf3-4f2e-a3bd-60a945cfb672', N'Võ Đức Minh', CAST(N'2022-03-07T11:57:37.000' AS DateTime), 2, N'', N'voducminh140201@gmail.com', NULL, N'', N'', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [DateCreated], [UserStatusID], [UserImage], [Email], [SubEmail], [Password], [OTP], [RoleID]) VALUES (N'4f9a70eb-b736-4d59-8ed7-ffceaef6efb6', N'Min Min', CAST(N'2022-02-09T17:45:59.000' AS DateTime), 2, N'', N'voducminh01@gmail.com', NULL, N'1', N'', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [DateCreated], [UserStatusID], [UserImage], [Email], [SubEmail], [Password], [OTP], [RoleID]) VALUES (N'5a1e40f4-a2a3-4078-a257-21863e042b12', N'Võ Đức Minh', CAST(N'2022-01-16T21:42:19.000' AS DateTime), 2, N'          ', N'minhvdse150114@fpt.edu.vn', NULL, N'1', N'', 1)
GO
SET IDENTITY_INSERT [dbo].[UserStatus] ON 

INSERT [dbo].[UserStatus] ([UserStatusID], [UserStatusName]) VALUES (2, N'Active')
INSERT [dbo].[UserStatus] ([UserStatusID], [UserStatusName]) VALUES (3, N'Inactive')
SET IDENTITY_INSERT [dbo].[UserStatus] OFF
GO
INSERT [dbo].[Votes] ([UserID], [PostID]) VALUES (N'5a1e40f4-a2a3-4078-a257-21863e042b12', N'2')
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_CommentStatus] FOREIGN KEY([CommentStatusID])
REFERENCES [dbo].[CommentStatus] ([CommentStatusID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_CommentStatus]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Posts] FOREIGN KEY([IsMainPost])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Posts]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_PostStatuses] FOREIGN KEY([PostStatusID])
REFERENCES [dbo].[PostStatuses] ([PostStatusID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_PostStatuses]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Projects] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ProjectID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Projects]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Users] FOREIGN KEY([LastEditedUser])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Users]
GO
ALTER TABLE [dbo].[ProjectInstructor]  WITH CHECK ADD  CONSTRAINT [FK_ProjectInstructor_Instructors] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructors] ([InstructorID])
GO
ALTER TABLE [dbo].[ProjectInstructor] CHECK CONSTRAINT [FK_ProjectInstructor_Instructors]
GO
ALTER TABLE [dbo].[ProjectInstructor]  WITH CHECK ADD  CONSTRAINT [FK_ProjectInstructor_Projects] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ProjectID])
GO
ALTER TABLE [dbo].[ProjectInstructor] CHECK CONSTRAINT [FK_ProjectInstructor_Projects]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Majors] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([MajorID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Majors]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Semesters] FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semesters] ([SemesterID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Semesters]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Teams] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Teams]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Majors] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([MajorID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Majors]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Teams] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Teams]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_Posts]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_TagDetails1] FOREIGN KEY([TagDetailID])
REFERENCES [dbo].[TagDetails] ([TagDetailID])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_TagDetails1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserStatus] FOREIGN KEY([UserStatusID])
REFERENCES [dbo].[UserStatus] ([UserStatusID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserStatus]
GO
ALTER TABLE [dbo].[Votes]  WITH CHECK ADD  CONSTRAINT [FK_Votes_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Votes] CHECK CONSTRAINT [FK_Votes_Posts]
GO
ALTER TABLE [dbo].[Votes]  WITH CHECK ADD  CONSTRAINT [FK_Votes_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Votes] CHECK CONSTRAINT [FK_Votes_Users]
GO
USE [master]
GO
ALTER DATABASE [FUCapstoneResult] SET  READ_WRITE 
GO
