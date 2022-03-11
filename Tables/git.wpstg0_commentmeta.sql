CREATE TABLE [git].[wpstg0_commentmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[comment_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_co__comme__41049384] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_co__meta___41F8B7BD] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_co__meta___42ECDBF6] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_commentmeta] ADD CONSTRAINT [PK_wpstg0_commentmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [comment_id] ON [git].[wpstg0_commentmeta] ([comment_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wpstg0_commentmeta] ([meta_key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_commentmeta', 'SCHEMA', N'git', 'TABLE', N'wpstg0_commentmeta', NULL, NULL
GO
