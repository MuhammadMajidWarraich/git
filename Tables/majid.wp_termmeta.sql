CREATE TABLE [majid].[wp_termmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[term_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_termme__term___715DB21C] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_termme__meta___7251D655] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_termme__meta___7345FA8E] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_termmeta] ADD CONSTRAINT [PK_wp_termmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [majid].[wp_termmeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [term_id] ON [majid].[wp_termmeta] ([term_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_termmeta', 'SCHEMA', N'majid', 'TABLE', N'wp_termmeta', NULL, NULL
GO
