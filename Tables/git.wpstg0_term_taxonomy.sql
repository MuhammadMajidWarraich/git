CREATE TABLE [git].[wpstg0_term_taxonomy]
(
[term_taxonomy_id] [numeric] (20, 0) NOT NULL IDENTITY(3, 1),
[term_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_te__term___70B3A6A6] DEFAULT ((0)),
[taxonomy] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_te__taxon__71A7CADF] DEFAULT (N''),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_te__paren__729BEF18] DEFAULT ((0)),
[count] [bigint] NOT NULL CONSTRAINT [DF__wpstg0_te__count__73901351] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_term_taxonomy] ADD CONSTRAINT [PK_wpstg0_term_taxonomy_term_taxonomy_id] PRIMARY KEY CLUSTERED ([term_taxonomy_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [taxonomy] ON [git].[wpstg0_term_taxonomy] ([taxonomy]) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_term_taxonomy] ADD CONSTRAINT [wpstg0_term_taxonomy$term_id_taxonomy] UNIQUE NONCLUSTERED ([term_id], [taxonomy]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_term_taxonomy', 'SCHEMA', N'git', 'TABLE', N'wpstg0_term_taxonomy', NULL, NULL
GO
