CREATE TABLE [git].[wpstg0_posts]
(
[ID] [numeric] (20, 0) NOT NULL IDENTITY(10, 1),
[post_author] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___6B84DD35] DEFAULT ((0)),
[post_date] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___6C79016E] DEFAULT (getdate()),
[post_date_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___6D6D25A7] DEFAULT (getdate()),
[post_content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_excerpt] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__post___6E6149E0] DEFAULT (N'publish'),
[comment_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__comme__6F556E19] DEFAULT (N'open'),
[ping_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__ping___70499252] DEFAULT (N'open'),
[post_password] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__post___713DB68B] DEFAULT (N''),
[post_name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__post___7231DAC4] DEFAULT (N''),
[to_ping] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[pinged] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_modified] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___7325FEFD] DEFAULT (getdate()),
[post_modified_gmt] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___741A2336] DEFAULT (getdate()),
[post_content_filtered] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[post_parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___750E476F] DEFAULT ((0)),
[guid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_pos__guid__76026BA8] DEFAULT (N''),
[menu_order] [int] NOT NULL CONSTRAINT [DF__wpstg0_po__menu___76F68FE1] DEFAULT ((0)),
[post_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__post___77EAB41A] DEFAULT (N'post'),
[post_mime_type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_po__post___78DED853] DEFAULT (N''),
[comment_count] [bigint] NOT NULL CONSTRAINT [DF__wpstg0_po__comme__79D2FC8C] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_posts] ADD CONSTRAINT [PK_wpstg0_posts_ID] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_author] ON [git].[wpstg0_posts] ([post_author]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_name] ON [git].[wpstg0_posts] ([post_name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_parent] ON [git].[wpstg0_posts] ([post_parent]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [type_status_date] ON [git].[wpstg0_posts] ([post_type], [post_status], [post_date], [ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_posts', 'SCHEMA', N'git', 'TABLE', N'wpstg0_posts', NULL, NULL
GO
