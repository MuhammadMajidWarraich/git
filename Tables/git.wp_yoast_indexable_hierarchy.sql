CREATE TABLE [git].[wp_yoast_indexable_hierarchy]
(
[indexable_id] [bigint] NOT NULL,
[ancestor_id] [bigint] NOT NULL,
[depth] [bigint] NULL CONSTRAINT [DF__wp_yoast___depth__3BD5CA13] DEFAULT (NULL),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___3CC9EE4C] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_yoast_indexable_hierarchy] ADD CONSTRAINT [PK_wp_yoast_indexable_hierarchy_indexable_id] PRIMARY KEY CLUSTERED ([indexable_id], [ancestor_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ancestor_id] ON [git].[wp_yoast_indexable_hierarchy] ([ancestor_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [depth] ON [git].[wp_yoast_indexable_hierarchy] ([depth]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [indexable_id] ON [git].[wp_yoast_indexable_hierarchy] ([indexable_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_yoast_indexable_hierarchy', 'SCHEMA', N'git', 'TABLE', N'wp_yoast_indexable_hierarchy', NULL, NULL
GO
