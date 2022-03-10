CREATE TABLE [git].[wp_postmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(6, 1),
[post_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_postme__post___7A672E12] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_postme__meta___7B5B524B] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_postme__meta___7C4F7684] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_postmeta] ADD CONSTRAINT [PK_wp_postmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wp_postmeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_id] ON [git].[wp_postmeta] ([post_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_postmeta', 'SCHEMA', N'git', 'TABLE', N'wp_postmeta', NULL, NULL
GO
