CREATE TABLE [git].[wp_yoast_indexable]
(
[id] [bigint] NOT NULL IDENTITY(16, 1),
[permalink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__16AF325C] DEFAULT (NULL),
[permalink_hash] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__17A35695] DEFAULT (NULL),
[object_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___objec__18977ACE] DEFAULT (NULL),
[object_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[object_sub_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___objec__198B9F07] DEFAULT (NULL),
[author_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___autho__1A7FC340] DEFAULT (NULL),
[post_parent] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___1B73E779] DEFAULT (NULL),
[title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___title__1C680BB2] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___descr__1D5C2FEB] DEFAULT (NULL),
[breadcrumb_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___bread__1E505424] DEFAULT (NULL),
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___post___1F44785D] DEFAULT (NULL),
[is_public] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pu__20389C96] DEFAULT (NULL),
[is_protected] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pr__212CC0CF] DEFAULT ((0)),
[has_public_posts] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_p__2220E508] DEFAULT (NULL),
[number_of_pages] [bigint] NULL CONSTRAINT [DF__wp_yoast___numbe__23150941] DEFAULT (NULL),
[canonical] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___canon__24092D7A] DEFAULT (NULL),
[primary_focus_keyword] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___prima__24FD51B3] DEFAULT (NULL),
[primary_focus_keyword_score] [int] NULL CONSTRAINT [DF__wp_yoast___prima__25F175EC] DEFAULT (NULL),
[readability_score] [int] NULL CONSTRAINT [DF__wp_yoast___reada__26E59A25] DEFAULT (NULL),
[is_cornerstone] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_co__27D9BE5E] DEFAULT ((0)),
[is_robots_noindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__28CDE297] DEFAULT ((0)),
[is_robots_nofollow] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__29C206D0] DEFAULT ((0)),
[is_robots_noarchive] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__2AB62B09] DEFAULT ((0)),
[is_robots_noimageindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__2BAA4F42] DEFAULT ((0)),
[is_robots_nosnippet] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__2C9E737B] DEFAULT ((0)),
[twitter_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__2D9297B4] DEFAULT (NULL),
[twitter_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__2E86BBED] DEFAULT (NULL),
[twitter_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__2F7AE026] DEFAULT (NULL),
[twitter_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__306F045F] DEFAULT (NULL),
[twitter_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__31632898] DEFAULT (NULL),
[open_graph_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___32574CD1] DEFAULT (NULL),
[open_graph_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___334B710A] DEFAULT (NULL),
[open_graph_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___343F9543] DEFAULT (NULL),
[open_graph_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___3533B97C] DEFAULT (NULL),
[open_graph_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___3627DDB5] DEFAULT (NULL),
[open_graph_image_meta] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___371C01EE] DEFAULT (NULL),
[link_count] [int] NULL CONSTRAINT [DF__wp_yoast___link___38102627] DEFAULT (NULL),
[incoming_link_count] [int] NULL CONSTRAINT [DF__wp_yoast___incom__39044A60] DEFAULT (NULL),
[prominent_words_version] [bigint] NULL CONSTRAINT [DF__wp_yoast___promi__39F86E99] DEFAULT (NULL),
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__3AEC92D2] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__3BE0B70B] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___3CD4DB44] DEFAULT ((1)),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__3DC8FF7D] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__3EBD23B6] DEFAULT (NULL),
[schema_page_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__3FB147EF] DEFAULT (NULL),
[schema_article_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__40A56C28] DEFAULT (NULL),
[has_ancestors] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_a__41999061] DEFAULT ((0)),
[estimated_reading_time_minutes] [int] NULL CONSTRAINT [DF__wp_yoast___estim__428DB49A] DEFAULT (NULL),
[version] [int] NULL CONSTRAINT [DF__wp_yoast___versi__4381D8D3] DEFAULT ((1)),
[object_last_modified] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__4475FD0C] DEFAULT (NULL),
[object_published_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__456A2145] DEFAULT (NULL)
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
