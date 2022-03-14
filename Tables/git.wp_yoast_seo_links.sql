CREATE TABLE [git].[wp_yoast_seo_links]
(
[id] [numeric] (20, 0) NOT NULL IDENTITY(4, 1),
[url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_se__url__4DFF6746] DEFAULT (NULL),
[post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___post___4EF38B7F] DEFAULT (NULL),
[target_post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___targe__4FE7AFB8] DEFAULT (NULL),
[type] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_s__type__50DBD3F1] DEFAULT (NULL),
[indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___index__51CFF82A] DEFAULT (NULL),
[target_indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___targe__52C41C63] DEFAULT (NULL),
[height] [bigint] NULL CONSTRAINT [DF__wp_yoast___heigh__53B8409C] DEFAULT (NULL),
[width] [bigint] NULL CONSTRAINT [DF__wp_yoast___width__54AC64D5] DEFAULT (NULL),
[size] [bigint] NULL CONSTRAINT [DF__wp_yoast_s__size__55A0890E] DEFAULT (NULL),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__5694AD47] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__5788D180] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_yoast_seo_links] ADD CONSTRAINT [PK_wp_yoast_seo_links_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [indexable_link_direction] ON [git].[wp_yoast_seo_links] ([indexable_id], [type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_direction] ON [git].[wp_yoast_seo_links] ([post_id], [type]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_yoast_seo_links', 'SCHEMA', N'git', 'TABLE', N'wp_yoast_seo_links', NULL, NULL
GO
