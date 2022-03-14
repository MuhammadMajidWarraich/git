CREATE TABLE [majid].[wpstg0_termmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[term_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_te__term___77D5A581] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_te__meta___78C9C9BA] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_te__meta___79BDEDF3] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wpstg0_termmeta] ADD CONSTRAINT [PK_wpstg0_termmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [majid].[wpstg0_termmeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [term_id] ON [majid].[wpstg0_termmeta] ([term_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wpstg0_termmeta', 'SCHEMA', N'majid', 'TABLE', N'wpstg0_termmeta', NULL, NULL
GO
