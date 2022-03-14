CREATE TABLE [majid].[wp_term_relationships]
(
[object_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_term_r__objec__6AB0B48D] DEFAULT ((0)),
[term_taxonomy_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_term_r__term___6BA4D8C6] DEFAULT ((0)),
[term_order] [int] NOT NULL CONSTRAINT [DF__wp_term_r__term___6C98FCFF] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_term_relationships] ADD CONSTRAINT [PK_wp_term_relationships_object_id] PRIMARY KEY CLUSTERED ([object_id], [term_taxonomy_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [term_taxonomy_id] ON [majid].[wp_term_relationships] ([term_taxonomy_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_term_relationships', 'SCHEMA', N'majid', 'TABLE', N'wp_term_relationships', NULL, NULL
GO
