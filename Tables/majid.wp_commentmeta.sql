CREATE TABLE [majid].[wp_commentmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[comment_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_commen__comme__147C05D0] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_commen__meta___15702A09] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_commen__meta___16644E42] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_commentmeta] ADD CONSTRAINT [PK_wp_commentmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_id] ON [majid].[wp_commentmeta] ([comment_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [majid].[wp_commentmeta] ([meta_key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_commentmeta', 'SCHEMA', N'majid', 'TABLE', N'wp_commentmeta', NULL, NULL
GO
