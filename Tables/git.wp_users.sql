CREATE TABLE [git].[wp_users]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[user_login] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_l__0E19EC5B] DEFAULT (N''),
[user_pass] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_p__0F0E1094] DEFAULT (N''),
[user_nicename] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_n__100234CD] DEFAULT (N''),
[user_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_e__10F65906] DEFAULT (N''),
[user_url] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_u__11EA7D3F] DEFAULT (N''),
[user_registered] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_users__user_r__12DEA178] DEFAULT (getdate()),
[user_activation_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__user_a__13D2C5B1] DEFAULT (N''),
[user_status] [int] NOT NULL CONSTRAINT [DF__wp_users__user_s__14C6E9EA] DEFAULT ((0)),
[display_name] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_users__displa__15BB0E23] DEFAULT (N'')
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
