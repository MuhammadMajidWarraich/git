CREATE TABLE [git].[wp_termmeta]
(
[meta_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[term_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_termme__term___640DD89F] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_termme__meta___6501FCD8] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_termme__meta___65F62111] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_termmeta] ADD CONSTRAINT [PK_wp_termmeta_meta_id] PRIMARY KEY CLUSTERED ([meta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wp_termmeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [term_id] ON [git].[wp_termmeta] ([term_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_termmeta', 'SCHEMA', N'git', 'TABLE', N'wp_termmeta', NULL, NULL
GO
