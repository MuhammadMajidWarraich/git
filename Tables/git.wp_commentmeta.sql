CREATE TABLE [git].[wp_commentmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[comment_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__2D9CB955] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_commen__meta___2E90DD8E] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_commen__meta___2F8501C7] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_commentmeta] ADD CONSTRAINT [PK_wp_commentmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_id] ON [git].[wp_commentmeta] ([comment_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wp_commentmeta] ([meta_key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_commentmeta', 'SCHEMA', N'git', 'TABLE', N'wp_commentmeta', NULL, NULL
GO
