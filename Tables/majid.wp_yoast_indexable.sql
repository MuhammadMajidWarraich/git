CREATE TABLE [majid].[wp_yoast_indexable]
(
[id] [bigint] NOT NULL IDENTITY(16, 1),
[permalink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__02883E1E] DEFAULT (NULL),
[permalink_hash] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__037C6257] DEFAULT (NULL),
[object_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___objec__04708690] DEFAULT (NULL),
[object_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[object_sub_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___objec__0564AAC9] DEFAULT (NULL),
[author_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___autho__0658CF02] DEFAULT (NULL),
[post_parent] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___074CF33B] DEFAULT (NULL),
[title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___title__08411774] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___descr__09353BAD] DEFAULT (NULL),
[breadcrumb_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___bread__0A295FE6] DEFAULT (NULL),
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___post___0B1D841F] DEFAULT (NULL),
[is_public] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pu__0C11A858] DEFAULT (NULL),
[is_protected] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pr__0D05CC91] DEFAULT ((0)),
[has_public_posts] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_p__0DF9F0CA] DEFAULT (NULL),
[number_of_pages] [bigint] NULL CONSTRAINT [DF__wp_yoast___numbe__0EEE1503] DEFAULT (NULL),
[canonical] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___canon__0FE2393C] DEFAULT (NULL),
[primary_focus_keyword] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___prima__10D65D75] DEFAULT (NULL),
[primary_focus_keyword_score] [int] NULL CONSTRAINT [DF__wp_yoast___prima__11CA81AE] DEFAULT (NULL),
[readability_score] [int] NULL CONSTRAINT [DF__wp_yoast___reada__12BEA5E7] DEFAULT (NULL),
[is_cornerstone] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_co__13B2CA20] DEFAULT ((0)),
[is_robots_noindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__14A6EE59] DEFAULT ((0)),
[is_robots_nofollow] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__159B1292] DEFAULT ((0)),
[is_robots_noarchive] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__168F36CB] DEFAULT ((0)),
[is_robots_noimageindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__17835B04] DEFAULT ((0)),
[is_robots_nosnippet] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__18777F3D] DEFAULT ((0)),
[twitter_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__196BA376] DEFAULT (NULL),
[twitter_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__1A5FC7AF] DEFAULT (NULL),
[twitter_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__1B53EBE8] DEFAULT (NULL),
[twitter_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__1C481021] DEFAULT (NULL),
[twitter_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__1D3C345A] DEFAULT (NULL),
[open_graph_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1E305893] DEFAULT (NULL),
[open_graph_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1F247CCC] DEFAULT (NULL),
[open_graph_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___2018A105] DEFAULT (NULL),
[open_graph_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___210CC53E] DEFAULT (NULL),
[open_graph_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___2200E977] DEFAULT (NULL),
[open_graph_image_meta] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___22F50DB0] DEFAULT (NULL),
[link_count] [int] NULL CONSTRAINT [DF__wp_yoast___link___23E931E9] DEFAULT (NULL),
[incoming_link_count] [int] NULL CONSTRAINT [DF__wp_yoast___incom__24DD5622] DEFAULT (NULL),
[prominent_words_version] [bigint] NULL CONSTRAINT [DF__wp_yoast___promi__25D17A5B] DEFAULT (NULL),
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__26C59E94] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__27B9C2CD] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___28ADE706] DEFAULT ((1)),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__29A20B3F] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__2A962F78] DEFAULT (NULL),
[schema_page_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__2B8A53B1] DEFAULT (NULL),
[schema_article_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__2C7E77EA] DEFAULT (NULL),
[has_ancestors] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_a__2D729C23] DEFAULT ((0)),
[estimated_reading_time_minutes] [int] NULL CONSTRAINT [DF__wp_yoast___estim__2E66C05C] DEFAULT (NULL),
[version] [int] NULL CONSTRAINT [DF__wp_yoast___versi__2F5AE495] DEFAULT ((1)),
[object_last_modified] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__304F08CE] DEFAULT (NULL),
[object_published_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__31432D07] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_yoast_indexable] ADD CONSTRAINT [PK_wp_yoast_indexable_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [object_id_and_type] ON [majid].[wp_yoast_indexable] ([object_id], [object_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [published_sitemap_index] ON [majid].[wp_yoast_indexable] ([object_published_at], [is_robots_noindex], [object_type], [object_sub_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [object_type_and_sub_type] ON [majid].[wp_yoast_indexable] ([object_type], [object_sub_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [permalink_hash_and_object_type] ON [majid].[wp_yoast_indexable] ([permalink_hash], [object_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [subpages] ON [majid].[wp_yoast_indexable] ([post_parent], [object_type], [post_status], [object_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [prominent_words] ON [majid].[wp_yoast_indexable] ([prominent_words_version], [object_type], [object_sub_type], [post_status]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_yoast_indexable', 'SCHEMA', N'majid', 'TABLE', N'wp_yoast_indexable', NULL, NULL
GO
