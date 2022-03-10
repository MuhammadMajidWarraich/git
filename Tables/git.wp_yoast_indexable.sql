CREATE TABLE [git].[wp_yoast_indexable]
(
[id] [bigint] NOT NULL IDENTITY(12, 1),
[permalink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__59E54FE7] DEFAULT (NULL),
[permalink_hash] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___perma__5AD97420] DEFAULT (NULL),
[object_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___objec__5BCD9859] DEFAULT (NULL),
[object_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[object_sub_type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___objec__5CC1BC92] DEFAULT (NULL),
[author_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___autho__5DB5E0CB] DEFAULT (NULL),
[post_parent] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___5EAA0504] DEFAULT (NULL),
[title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___title__5F9E293D] DEFAULT (NULL),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___descr__60924D76] DEFAULT (NULL),
[breadcrumb_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___bread__618671AF] DEFAULT (NULL),
[post_status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___post___627A95E8] DEFAULT (NULL),
[is_public] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pu__636EBA21] DEFAULT (NULL),
[is_protected] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_pr__6462DE5A] DEFAULT ((0)),
[has_public_posts] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_p__65570293] DEFAULT (NULL),
[number_of_pages] [bigint] NULL CONSTRAINT [DF__wp_yoast___numbe__664B26CC] DEFAULT (NULL),
[canonical] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___canon__673F4B05] DEFAULT (NULL),
[primary_focus_keyword] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___prima__68336F3E] DEFAULT (NULL),
[primary_focus_keyword_score] [int] NULL CONSTRAINT [DF__wp_yoast___prima__69279377] DEFAULT (NULL),
[readability_score] [int] NULL CONSTRAINT [DF__wp_yoast___reada__6A1BB7B0] DEFAULT (NULL),
[is_cornerstone] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_co__6B0FDBE9] DEFAULT ((0)),
[is_robots_noindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__6C040022] DEFAULT ((0)),
[is_robots_nofollow] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__6CF8245B] DEFAULT ((0)),
[is_robots_noarchive] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__6DEC4894] DEFAULT ((0)),
[is_robots_noimageindex] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__6EE06CCD] DEFAULT ((0)),
[is_robots_nosnippet] [smallint] NULL CONSTRAINT [DF__wp_yoast___is_ro__6FD49106] DEFAULT ((0)),
[twitter_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__70C8B53F] DEFAULT (NULL),
[twitter_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__71BCD978] DEFAULT (NULL),
[twitter_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__72B0FDB1] DEFAULT (NULL),
[twitter_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__73A521EA] DEFAULT (NULL),
[twitter_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___twitt__74994623] DEFAULT (NULL),
[open_graph_title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___758D6A5C] DEFAULT (NULL),
[open_graph_description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___76818E95] DEFAULT (NULL),
[open_graph_image] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___7775B2CE] DEFAULT (NULL),
[open_graph_image_id] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___7869D707] DEFAULT (NULL),
[open_graph_image_source] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___795DFB40] DEFAULT (NULL),
[open_graph_image_meta] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___open___7A521F79] DEFAULT (NULL),
[link_count] [int] NULL CONSTRAINT [DF__wp_yoast___link___7B4643B2] DEFAULT (NULL),
[incoming_link_count] [int] NULL CONSTRAINT [DF__wp_yoast___incom__7C3A67EB] DEFAULT (NULL),
[prominent_words_version] [bigint] NULL CONSTRAINT [DF__wp_yoast___promi__7D2E8C24] DEFAULT (NULL),
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__7E22B05D] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__7F16D496] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___000AF8CF] DEFAULT ((1)),
[language] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___langu__00FF1D08] DEFAULT (NULL),
[region] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___regio__01F34141] DEFAULT (NULL),
[schema_page_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__02E7657A] DEFAULT (NULL),
[schema_article_type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___schem__03DB89B3] DEFAULT (NULL),
[has_ancestors] [smallint] NULL CONSTRAINT [DF__wp_yoast___has_a__04CFADEC] DEFAULT ((0)),
[estimated_reading_time_minutes] [int] NULL CONSTRAINT [DF__wp_yoast___estim__05C3D225] DEFAULT (NULL),
[version] [int] NULL CONSTRAINT [DF__wp_yoast___versi__06B7F65E] DEFAULT ((1)),
[object_last_modified] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__07AC1A97] DEFAULT (NULL),
[object_published_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___objec__08A03ED0] DEFAULT (NULL)
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
