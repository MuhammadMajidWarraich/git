CREATE TABLE [git].[wp_comments]
(
[comment_ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[comment_post_ID] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__18178C8A] DEFAULT ((0)),
[comment_author] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_author_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__190BB0C3] DEFAULT (N''),
[comment_author_url] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__19FFD4FC] DEFAULT (N''),
[comment_author_IP] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__1AF3F935] DEFAULT (N''),
[comment_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_commen__comme__1BE81D6E] DEFAULT (getdate()),
[comment_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_commen__comme__1CDC41A7] DEFAULT (getdate()),
[comment_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_karma] [int] NOT NULL CONSTRAINT [DF__wp_commen__comme__1DD065E0] DEFAULT ((0)),
[comment_approved] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__1EC48A19] DEFAULT (N'1'),
[comment_agent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__1FB8AE52] DEFAULT (N''),
[comment_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_commen__comme__20ACD28B] DEFAULT (N'comment'),
[comment_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__21A0F6C4] DEFAULT ((0)),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__user___22951AFD] DEFAULT ((0))
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
