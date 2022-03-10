CREATE TABLE [git].[wp_comments]
(
[comment_ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[comment_post_ID] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__30792600] DEFAULT ((0)),
[comment_author] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_author_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__316D4A39] DEFAULT (N''),
[comment_author_url] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__32616E72] DEFAULT (N''),
[comment_author_IP] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__335592AB] DEFAULT (N''),
[comment_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_commen__comme__3449B6E4] DEFAULT (getdate()),
[comment_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_commen__comme__353DDB1D] DEFAULT (getdate()),
[comment_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_karma] [int] NOT NULL CONSTRAINT [DF__wp_commen__comme__3631FF56] DEFAULT ((0)),
[comment_approved] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__3726238F] DEFAULT (N'1'),
[comment_agent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__381A47C8] DEFAULT (N''),
[comment_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__390E6C01] DEFAULT (N'comment'),
[comment_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__3A02903A] DEFAULT ((0)),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__user___3AF6B473] DEFAULT ((0))
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
