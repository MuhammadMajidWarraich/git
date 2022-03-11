CREATE TABLE [git].[wp_yoast_seo_links]
(
[id] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_se__url__36870511] DEFAULT (NULL),
[post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___post___377B294A] DEFAULT (NULL),
[target_post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___targe__386F4D83] DEFAULT (NULL),
[type] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_s__type__396371BC] DEFAULT (NULL),
[indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___index__3A5795F5] DEFAULT (NULL),
[target_indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___targe__3B4BBA2E] DEFAULT (NULL),
[height] [bigint] NULL CONSTRAINT [DF__wp_yoast___heigh__3C3FDE67] DEFAULT (NULL),
[width] [bigint] NULL CONSTRAINT [DF__wp_yoast___width__3D3402A0] DEFAULT (NULL),
[size] [bigint] NULL CONSTRAINT [DF__wp_yoast_s__size__3E2826D9] DEFAULT (NULL),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__3F1C4B12] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__40106F4B] DEFAULT (NULL)
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
