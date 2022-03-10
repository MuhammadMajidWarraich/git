CREATE TABLE [git].[wpstg0_comments]
(
[comment_ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[comment_post_ID] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__1E8F7FEF] DEFAULT ((0)),
[comment_author] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_author_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__1F83A428] DEFAULT (N''),
[comment_author_url] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__2077C861] DEFAULT (N''),
[comment_author_IP] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__216BEC9A] DEFAULT (N''),
[comment_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__226010D3] DEFAULT (getdate()),
[comment_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__2354350C] DEFAULT (getdate()),
[comment_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_karma] [int] NOT NULL CONSTRAINT [DF__wpstg0_co__comme__24485945] DEFAULT ((0)),
[comment_approved] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__253C7D7E] DEFAULT (N'1'),
[comment_agent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__2630A1B7] DEFAULT (N''),
[comment_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__2724C5F0] DEFAULT (N'comment'),
[comment_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__2818EA29] DEFAULT ((0)),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__user___290D0E62] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_comments] ADD CONSTRAINT [PK_wpstg0_comments_comment_ID] PRIMARY KEY CLUSTERED ([comment_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_approved_date_gmt] ON [git].[wpstg0_comments] ([comment_approved], [comment_date_gmt]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_author_email] ON [git].[wpstg0_comments] ([comment_author_email]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_date_gmt] ON [git].[wpstg0_comments] ([comment_date_gmt]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_parent] ON [git].[wpstg0_comments] ([comment_parent]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_post_ID] ON [git].[wpstg0_comments] ([comment_post_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_comments', 'SCHEMA', N'git', 'TABLE', N'wpstg0_comments', NULL, NULL
GO
