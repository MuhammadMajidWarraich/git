CREATE TABLE [git].[wp_posts]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(11, 1),
[post_author] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_posts__post_a__32CB82C6] DEFAULT ((0)),
[post_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_d__33BFA6FF] DEFAULT (getdate()),
[post_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_d__34B3CB38] DEFAULT (getdate()),
[post_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_excerpt] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_s__35A7EF71] DEFAULT (N'publish'),
[comment_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__commen__369C13AA] DEFAULT (N'open'),
[ping_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__ping_s__379037E3] DEFAULT (N'open'),
[post_password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_p__38845C1C] DEFAULT (N''),
[post_name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_n__39788055] DEFAULT (N''),
[to_ping] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[pinged] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_modified] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_m__3A6CA48E] DEFAULT (getdate()),
[post_modified_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_m__3B60C8C7] DEFAULT (getdate()),
[post_content_filtered] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_posts__post_p__3C54ED00] DEFAULT ((0)),
[guid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__guid__3D491139] DEFAULT (N''),
[menu_order] [int] NOT NULL CONSTRAINT [DF__wp_posts__menu_o__3E3D3572] DEFAULT ((0)),
[post_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_t__3F3159AB] DEFAULT (N'post'),
[post_mime_type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_m__40257DE4] DEFAULT (N''),
[comment_count] [bigint] NOT NULL CONSTRAINT [DF__wp_posts__commen__4119A21D] DEFAULT ((0))
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
