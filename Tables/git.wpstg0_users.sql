CREATE TABLE [git].[wpstg0_users]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[user_login] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___1491DFC0] DEFAULT (N''),
[user_pass] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___158603F9] DEFAULT (N''),
[user_nicename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___167A2832] DEFAULT (N''),
[user_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___176E4C6B] DEFAULT (N''),
[user_url] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___186270A4] DEFAULT (N''),
[user_registered] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_us__user___195694DD] DEFAULT (getdate()),
[user_activation_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___1A4AB916] DEFAULT (N''),
[user_status] [int] NOT NULL CONSTRAINT [DF__wpstg0_us__user___1B3EDD4F] DEFAULT ((0)),
[display_name] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__displ__1C330188] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_users] ADD CONSTRAINT [PK_wpstg0_users_ID] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_email] ON [git].[wpstg0_users] ([user_email]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_login_key] ON [git].[wpstg0_users] ([user_login]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_nicename] ON [git].[wpstg0_users] ([user_nicename]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_users', 'SCHEMA', N'git', 'TABLE', N'wpstg0_users', NULL, NULL
GO
