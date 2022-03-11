CREATE TABLE [git].[wp_comments]
(
[comment_ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[comment_post_ID] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__4A58F394] DEFAULT ((0)),
[comment_author] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_author_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__4B4D17CD] DEFAULT (N''),
[comment_author_url] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__4C413C06] DEFAULT (N''),
[comment_author_IP] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__4D35603F] DEFAULT (N''),
[comment_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_commen__comme__4E298478] DEFAULT (getdate()),
[comment_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_commen__comme__4F1DA8B1] DEFAULT (getdate()),
[comment_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_karma] [int] NOT NULL CONSTRAINT [DF__wp_commen__comme__5011CCEA] DEFAULT ((0)),
[comment_approved] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__5105F123] DEFAULT (N'1'),
[comment_agent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__51FA155C] DEFAULT (N''),
[comment_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__52EE3995] DEFAULT (N'comment'),
[comment_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__53E25DCE] DEFAULT ((0)),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__user___54D68207] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_comments] ADD CONSTRAINT [PK_wp_comments_comment_ID] PRIMARY KEY CLUSTERED ([comment_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_approved_date_gmt] ON [git].[wp_comments] ([comment_approved], [comment_date_gmt]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_author_email] ON [git].[wp_comments] ([comment_author_email]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_date_gmt] ON [git].[wp_comments] ([comment_date_gmt]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_parent] ON [git].[wp_comments] ([comment_parent]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_post_ID] ON [git].[wp_comments] ([comment_post_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_comments', 'SCHEMA', N'git', 'TABLE', N'wp_comments', NULL, NULL
GO
