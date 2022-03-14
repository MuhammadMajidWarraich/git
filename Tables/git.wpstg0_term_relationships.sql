CREATE TABLE [git].[wpstg0_term_relationships]
(
[object_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_te__objec__7E188EBC] DEFAULT ((0)),
[term_taxonomy_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_te__term___7F0CB2F5] DEFAULT ((0)),
[term_order] [int] NOT NULL CONSTRAINT [DF__wpstg0_te__term___0000D72E] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_term_relationships] ADD CONSTRAINT [PK_wpstg0_term_relationships_object_id] PRIMARY KEY CLUSTERED ([object_id], [term_taxonomy_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [term_taxonomy_id] ON [git].[wpstg0_term_relationships] ([term_taxonomy_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_term_relationships', 'SCHEMA', N'git', 'TABLE', N'wpstg0_term_relationships', NULL, NULL
GO
