CREATE TABLE [majid].[wpstg0_postmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(6, 1),
[post_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_po__post___5F09F7B7] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_po__meta___5FFE1BF0] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_po__meta___60F24029] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wpstg0_postmeta] ADD CONSTRAINT [PK_wpstg0_postmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [majid].[wpstg0_postmeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_id] ON [majid].[wpstg0_postmeta] ([post_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wpstg0_postmeta', 'SCHEMA', N'majid', 'TABLE', N'wpstg0_postmeta', NULL, NULL
GO
