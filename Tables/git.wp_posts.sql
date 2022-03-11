CREATE TABLE [git].[wp_posts]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(11, 1),
[post_author] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_posts__post_a__581D0306] DEFAULT ((0)),
[post_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_d__5911273F] DEFAULT (getdate()),
[post_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_d__5A054B78] DEFAULT (getdate()),
[post_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_excerpt] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_s__5AF96FB1] DEFAULT (N'publish'),
[comment_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__commen__5BED93EA] DEFAULT (N'open'),
[ping_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__ping_s__5CE1B823] DEFAULT (N'open'),
[post_password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_p__5DD5DC5C] DEFAULT (N''),
[post_name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_n__5ECA0095] DEFAULT (N''),
[to_ping] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[pinged] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_modified] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_m__5FBE24CE] DEFAULT (getdate()),
[post_modified_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_m__60B24907] DEFAULT (getdate()),
[post_content_filtered] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_posts__post_p__61A66D40] DEFAULT ((0)),
[guid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__guid__629A9179] DEFAULT (N''),
[menu_order] [int] NOT NULL CONSTRAINT [DF__wp_posts__menu_o__638EB5B2] DEFAULT ((0)),
[post_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_t__6482D9EB] DEFAULT (N'post'),
[post_mime_type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_m__6576FE24] DEFAULT (N''),
[comment_count] [bigint] NOT NULL CONSTRAINT [DF__wp_posts__commen__666B225D] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_posts] ADD CONSTRAINT [PK_wp_posts_ID] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_author] ON [git].[wp_posts] ([post_author]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_name] ON [git].[wp_posts] ([post_name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_parent] ON [git].[wp_posts] ([post_parent]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [type_status_date] ON [git].[wp_posts] ([post_type], [post_status], [post_date], [ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_posts', 'SCHEMA', N'git', 'TABLE', N'wp_posts', NULL, NULL
GO
