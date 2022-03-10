CREATE TABLE [majid].[wp_posts]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(6, 1),
[post_author] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_posts__post_a__320C68B7] DEFAULT ((0)),
[post_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_d__33008CF0] DEFAULT (getdate()),
[post_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_d__33F4B129] DEFAULT (getdate()),
[post_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_excerpt] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_s__34E8D562] DEFAULT (N'publish'),
[comment_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__commen__35DCF99B] DEFAULT (N'open'),
[ping_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__ping_s__36D11DD4] DEFAULT (N'open'),
[post_password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_p__37C5420D] DEFAULT (N''),
[post_name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_n__38B96646] DEFAULT (N''),
[to_ping] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[pinged] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_modified] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_m__39AD8A7F] DEFAULT (getdate()),
[post_modified_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_posts__post_m__3AA1AEB8] DEFAULT (getdate()),
[post_content_filtered] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_posts__post_p__3B95D2F1] DEFAULT ((0)),
[guid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__guid__3C89F72A] DEFAULT (N''),
[menu_order] [int] NOT NULL CONSTRAINT [DF__wp_posts__menu_o__3D7E1B63] DEFAULT ((0)),
[post_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_t__3E723F9C] DEFAULT (N'post'),
[post_mime_type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_posts__post_m__3F6663D5] DEFAULT (N''),
[comment_count] [bigint] NOT NULL CONSTRAINT [DF__wp_posts__commen__405A880E] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_posts] ADD CONSTRAINT [PK_wp_posts_ID] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_author] ON [majid].[wp_posts] ([post_author]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_name] ON [majid].[wp_posts] ([post_name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_parent] ON [majid].[wp_posts] ([post_parent]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [type_status_date] ON [majid].[wp_posts] ([post_type], [post_status], [post_date], [ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_posts', 'SCHEMA', N'majid', 'TABLE', N'wp_posts', NULL, NULL
GO
