CREATE TABLE [git].[wp_term_relationships]
(
[object_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_term_r__objec__675F4696] DEFAULT ((0)),
[term_taxonomy_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_term_r__term___68536ACF] DEFAULT ((0)),
[term_order] [int] NOT NULL CONSTRAINT [DF__wp_term_r__term___69478F08] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_term_relationships] ADD CONSTRAINT [PK_wp_term_relationships_object_id] PRIMARY KEY CLUSTERED ([object_id], [term_taxonomy_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [term_taxonomy_id] ON [git].[wp_term_relationships] ([term_taxonomy_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_term_relationships', 'SCHEMA', N'git', 'TABLE', N'wp_term_relationships', NULL, NULL
GO
