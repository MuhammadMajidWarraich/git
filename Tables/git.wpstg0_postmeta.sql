CREATE TABLE [git].[wpstg0_postmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(6, 1),
[post_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___68A8708A] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_po__meta___699C94C3] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_po__meta___6A90B8FC] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_postmeta] ADD CONSTRAINT [PK_wpstg0_postmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wpstg0_postmeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_id] ON [git].[wpstg0_postmeta] ([post_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_postmeta', 'SCHEMA', N'git', 'TABLE', N'wpstg0_postmeta', NULL, NULL
GO
