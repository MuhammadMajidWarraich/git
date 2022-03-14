CREATE TABLE [majid].[wp_yoast_seo_links]
(
[id] [numeric] (20, 0) NOT NULL IDENTITY(4, 1),
[url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_se__url__39D87308] DEFAULT (NULL),
[post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___post___3ACC9741] DEFAULT (NULL),
[target_post_id] [numeric] (20, 0) NULL CONSTRAINT [DF__wp_yoast___targe__3BC0BB7A] DEFAULT (NULL),
[type] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast_s__type__3CB4DFB3] DEFAULT (NULL),
[indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___index__3DA903EC] DEFAULT (NULL),
[target_indexable_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___targe__3E9D2825] DEFAULT (NULL),
[height] [bigint] NULL CONSTRAINT [DF__wp_yoast___heigh__3F914C5E] DEFAULT (NULL),
[width] [bigint] NULL CONSTRAINT [DF__wp_yoast___width__40857097] DEFAULT (NULL),
[size] [bigint] NULL CONSTRAINT [DF__wp_yoast_s__size__417994D0] DEFAULT (NULL),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__426DB909] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__4361DD42] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_yoast_seo_links] ADD CONSTRAINT [PK_wp_yoast_seo_links_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [indexable_link_direction] ON [majid].[wp_yoast_seo_links] ([indexable_id], [type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_direction] ON [majid].[wp_yoast_seo_links] ([post_id], [type]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_yoast_seo_links', 'SCHEMA', N'majid', 'TABLE', N'wp_yoast_seo_links', NULL, NULL
GO
