CREATE TABLE [git].[wpstg0_comments]
(
[comment_ID] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[comment_post_ID] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__36F11965] DEFAULT ((0)),
[comment_author] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_author_email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__37E53D9E] DEFAULT (N''),
[comment_author_url] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__38D961D7] DEFAULT (N''),
[comment_author_IP] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__39CD8610] DEFAULT (N''),
[comment_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__3AC1AA49] DEFAULT (getdate()),
[comment_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__3BB5CE82] DEFAULT (getdate()),
[comment_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[comment_karma] [int] NOT NULL CONSTRAINT [DF__wpstg0_co__comme__3CA9F2BB] DEFAULT ((0)),
[comment_approved] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__3D9E16F4] DEFAULT (N'1'),
[comment_agent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__3E923B2D] DEFAULT (N''),
[comment_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_co__comme__3F865F66] DEFAULT (N'comment'),
[comment_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__407A839F] DEFAULT ((0)),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__user___416EA7D8] DEFAULT ((0))
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
