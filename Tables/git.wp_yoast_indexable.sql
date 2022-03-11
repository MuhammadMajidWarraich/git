CREATE TABLE [git].[wp_yoast_indexable]
(
[id] [bigint] NOT NULL IDENTITY(12, 1),
[permalink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__0C26B6F1] DEFAULT (NULL),
[permalink_hash] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__0D1ADB2A] DEFAULT (NULL),
[object_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___objec__0E0EFF63] DEFAULT (NULL),
[object_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[object_sub_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___objec__0F03239C] DEFAULT (NULL),
[author_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___autho__0FF747D5] DEFAULT (NULL),
[post_parent] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___10EB6C0E] DEFAULT (NULL),
[title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___title__11DF9047] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___descr__12D3B480] DEFAULT (NULL),
[breadcrumb_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___bread__13C7D8B9] DEFAULT (NULL),
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___post___14BBFCF2] DEFAULT (NULL),
[is_public] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pu__15B0212B] DEFAULT (NULL),
[is_protected] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pr__16A44564] DEFAULT ((0)),
[has_public_posts] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_p__1798699D] DEFAULT (NULL),
[number_of_pages] [bigint] NULL CONSTRAINT [DF__wp_yoast___numbe__188C8DD6] DEFAULT (NULL),
[canonical] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___canon__1980B20F] DEFAULT (NULL),
[primary_focus_keyword] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___prima__1A74D648] DEFAULT (NULL),
[primary_focus_keyword_score] [int] NULL CONSTRAINT [DF__wp_yoast___prima__1B68FA81] DEFAULT (NULL),
[readability_score] [int] NULL CONSTRAINT [DF__wp_yoast___reada__1C5D1EBA] DEFAULT (NULL),
[is_cornerstone] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_co__1D5142F3] DEFAULT ((0)),
[is_robots_noindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__1E45672C] DEFAULT ((0)),
[is_robots_nofollow] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__1F398B65] DEFAULT ((0)),
[is_robots_noarchive] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__202DAF9E] DEFAULT ((0)),
[is_robots_noimageindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__2121D3D7] DEFAULT ((0)),
[is_robots_nosnippet] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__2215F810] DEFAULT ((0)),
[twitter_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__230A1C49] DEFAULT (NULL),
[twitter_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__23FE4082] DEFAULT (NULL),
[twitter_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__24F264BB] DEFAULT (NULL),
[twitter_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__25E688F4] DEFAULT (NULL),
[twitter_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__26DAAD2D] DEFAULT (NULL),
[open_graph_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___27CED166] DEFAULT (NULL),
[open_graph_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___28C2F59F] DEFAULT (NULL),
[open_graph_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___29B719D8] DEFAULT (NULL),
[open_graph_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___2AAB3E11] DEFAULT (NULL),
[open_graph_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___2B9F624A] DEFAULT (NULL),
[open_graph_image_meta] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___2C938683] DEFAULT (NULL),
[link_count] [int] NULL CONSTRAINT [DF__wp_yoast___link___2D87AABC] DEFAULT (NULL),
[incoming_link_count] [int] NULL CONSTRAINT [DF__wp_yoast___incom__2E7BCEF5] DEFAULT (NULL),
[prominent_words_version] [bigint] NULL CONSTRAINT [DF__wp_yoast___promi__2F6FF32E] DEFAULT (NULL),
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__30641767] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__31583BA0] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___324C5FD9] DEFAULT ((1)),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__33408412] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__3434A84B] DEFAULT (NULL),
[schema_page_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__3528CC84] DEFAULT (NULL),
[schema_article_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__361CF0BD] DEFAULT (NULL),
[has_ancestors] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_a__371114F6] DEFAULT ((0)),
[estimated_reading_time_minutes] [int] NULL CONSTRAINT [DF__wp_yoast___estim__3805392F] DEFAULT (NULL),
[version] [int] NULL CONSTRAINT [DF__wp_yoast___versi__38F95D68] DEFAULT ((1)),
[object_last_modified] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__39ED81A1] DEFAULT (NULL),
[object_published_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__3AE1A5DA] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_yoast_indexable] ADD CONSTRAINT [PK_wp_yoast_indexable_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [object_id_and_type] ON [git].[wp_yoast_indexable] ([object_id], [object_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [published_sitemap_index] ON [git].[wp_yoast_indexable] ([object_published_at], [is_robots_noindex], [object_type], [object_sub_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [object_type_and_sub_type] ON [git].[wp_yoast_indexable] ([object_type], [object_sub_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [permalink_hash_and_object_type] ON [git].[wp_yoast_indexable] ([permalink_hash], [object_type]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [subpages] ON [git].[wp_yoast_indexable] ([post_parent], [object_type], [post_status], [object_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [prominent_words] ON [git].[wp_yoast_indexable] ([prominent_words_version], [object_type], [object_sub_type], [post_status]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_yoast_indexable', 'SCHEMA', N'git', 'TABLE', N'wp_yoast_indexable', NULL, NULL
GO
