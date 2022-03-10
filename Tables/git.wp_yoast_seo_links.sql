CREATE TABLE [git].[wp_yoast_seo_links]
(
[id] [numeric] (20, 0) NOT NULL IDENTITY(2, 1),
[url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_se__url__29971E47] DEFAULT (NULL),
[post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___post___2A8B4280] DEFAULT (NULL),
[target_post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___targe__2B7F66B9] DEFAULT (NULL),
[type] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_s__type__2C738AF2] DEFAULT (NULL),
[indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___index__2D67AF2B] DEFAULT (NULL),
[target_indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___targe__2E5BD364] DEFAULT (NULL),
[height] [bigint] NULL CONSTRAINT [DF__wp_yoast___heigh__2F4FF79D] DEFAULT (NULL),
[width] [bigint] NULL CONSTRAINT [DF__wp_yoast___width__30441BD6] DEFAULT (NULL),
[size] [bigint] NULL CONSTRAINT [DF__wp_yoast_s__size__3138400F] DEFAULT (NULL),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__322C6448] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__33208881] DEFAULT (NULL)
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
