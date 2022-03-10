CREATE TABLE [git].[wp_users]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[user_login] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_l__69B1A35C] DEFAULT (N''),
[user_pass] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_p__6AA5C795] DEFAULT (N''),
[user_nicename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_n__6B99EBCE] DEFAULT (N''),
[user_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_e__6C8E1007] DEFAULT (N''),
[user_url] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_u__6D823440] DEFAULT (N''),
[user_registered] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_users__user_r__6E765879] DEFAULT (getdate()),
[user_activation_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_a__6F6A7CB2] DEFAULT (N''),
[user_status] [int] NOT NULL CONSTRAINT [DF__wp_users__user_s__705EA0EB] DEFAULT ((0)),
[display_name] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__displa__7152C524] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_users] ADD CONSTRAINT [PK_wp_users_ID] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_email] ON [git].[wp_users] ([user_email]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_login_key] ON [git].[wp_users] ([user_login]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_nicename] ON [git].[wp_users] ([user_nicename]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_users', 'SCHEMA', N'git', 'TABLE', N'wp_users', NULL, NULL
GO
