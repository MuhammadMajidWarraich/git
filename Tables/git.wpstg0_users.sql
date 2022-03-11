CREATE TABLE [git].[wpstg0_users]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[user_login] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___7D197D8B] DEFAULT (N''),
[user_pass] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___7E0DA1C4] DEFAULT (N''),
[user_nicename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___7F01C5FD] DEFAULT (N''),
[user_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___7FF5EA36] DEFAULT (N''),
[user_url] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___00EA0E6F] DEFAULT (N''),
[user_registered] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_us__user___01DE32A8] DEFAULT (getdate()),
[user_activation_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__user___02D256E1] DEFAULT (N''),
[user_status] [int] NOT NULL CONSTRAINT [DF__wpstg0_us__user___03C67B1A] DEFAULT ((0)),
[display_name] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_us__displ__04BA9F53] DEFAULT (N'')
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
