CREATE TABLE [git].[wp_yoast_indexable]
(
[id] [bigint] NOT NULL IDENTITY(12, 1),
[permalink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__7F36D027] DEFAULT (NULL),
[permalink_hash] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__002AF460] DEFAULT (NULL),
[object_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___objec__011F1899] DEFAULT (NULL),
[object_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[object_sub_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___objec__02133CD2] DEFAULT (NULL),
[author_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___autho__0307610B] DEFAULT (NULL),
[post_parent] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___03FB8544] DEFAULT (NULL),
[title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___title__04EFA97D] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___descr__05E3CDB6] DEFAULT (NULL),
[breadcrumb_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___bread__06D7F1EF] DEFAULT (NULL),
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___post___07CC1628] DEFAULT (NULL),
[is_public] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pu__08C03A61] DEFAULT (NULL),
[is_protected] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pr__09B45E9A] DEFAULT ((0)),
[has_public_posts] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_p__0AA882D3] DEFAULT (NULL),
[number_of_pages] [bigint] NULL CONSTRAINT [DF__wp_yoast___numbe__0B9CA70C] DEFAULT (NULL),
[canonical] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___canon__0C90CB45] DEFAULT (NULL),
[primary_focus_keyword] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___prima__0D84EF7E] DEFAULT (NULL),
[primary_focus_keyword_score] [int] NULL CONSTRAINT [DF__wp_yoast___prima__0E7913B7] DEFAULT (NULL),
[readability_score] [int] NULL CONSTRAINT [DF__wp_yoast___reada__0F6D37F0] DEFAULT (NULL),
[is_cornerstone] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_co__10615C29] DEFAULT ((0)),
[is_robots_noindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__11558062] DEFAULT ((0)),
[is_robots_nofollow] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__1249A49B] DEFAULT ((0)),
[is_robots_noarchive] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__133DC8D4] DEFAULT ((0)),
[is_robots_noimageindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__1431ED0D] DEFAULT ((0)),
[is_robots_nosnippet] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__15261146] DEFAULT ((0)),
[twitter_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__161A357F] DEFAULT (NULL),
[twitter_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__170E59B8] DEFAULT (NULL),
[twitter_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__18027DF1] DEFAULT (NULL),
[twitter_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__18F6A22A] DEFAULT (NULL),
[twitter_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__19EAC663] DEFAULT (NULL),
[open_graph_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1ADEEA9C] DEFAULT (NULL),
[open_graph_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1BD30ED5] DEFAULT (NULL),
[open_graph_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1CC7330E] DEFAULT (NULL),
[open_graph_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1DBB5747] DEFAULT (NULL),
[open_graph_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1EAF7B80] DEFAULT (NULL),
[open_graph_image_meta] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___1FA39FB9] DEFAULT (NULL),
[link_count] [int] NULL CONSTRAINT [DF__wp_yoast___link___2097C3F2] DEFAULT (NULL),
[incoming_link_count] [int] NULL CONSTRAINT [DF__wp_yoast___incom__218BE82B] DEFAULT (NULL),
[prominent_words_version] [bigint] NULL CONSTRAINT [DF__wp_yoast___promi__22800C64] DEFAULT (NULL),
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__2374309D] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__246854D6] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___255C790F] DEFAULT ((1)),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__26509D48] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__2744C181] DEFAULT (NULL),
[schema_page_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__2838E5BA] DEFAULT (NULL),
[schema_article_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__292D09F3] DEFAULT (NULL),
[has_ancestors] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_a__2A212E2C] DEFAULT ((0)),
[estimated_reading_time_minutes] [int] NULL CONSTRAINT [DF__wp_yoast___estim__2B155265] DEFAULT (NULL),
[version] [int] NULL CONSTRAINT [DF__wp_yoast___versi__2C09769E] DEFAULT ((1)),
[object_last_modified] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__2CFD9AD7] DEFAULT (NULL),
[object_published_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__2DF1BF10] DEFAULT (NULL)
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
