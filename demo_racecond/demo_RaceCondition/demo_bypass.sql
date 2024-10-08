USE [master]
GO
/****** Object:  Database [demo_bypass]    Script Date: 06/09/2024 13:38:28 ******/
DROP DATABASE IF EXISTS [demo_bypass];
CREATE DATABASE [demo_bypass]
 
USE [demo_bypass]
GO
/****** Object:  Table [dbo].[acccount]    Script Date: 06/09/2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Password] [nchar](10) NULL,
	[Role] [nchar](10) NULL,
	[Email] [nchar](50) NULL,
	[IsComfirmEmail] [bit] NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [demo_bypass]

INSERT INTO [dbo].[account] (Name, Password, Role, Email, [IsConfirmEmail])
VALUES 
(N'AdminUser', N'admin123', N'Admin', N'admin@example.com', 1);

-- Insert a regular user
INSERT INTO [dbo].[account] (Name, Password, Role, Email, [IsConfirmEmail])
VALUES 
(N'RegularUser', N'user12345', N'User', N'user@example.com', 0);
