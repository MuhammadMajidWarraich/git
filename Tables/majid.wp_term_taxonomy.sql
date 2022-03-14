CREATE TABLE [majid].[wp_term_taxonomy]
(
[term_taxonomy_id] [numeric] (20, 0) NOT NULL IDENTITY(3, 1),
[term_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_term_t__term___6D8D2138] DEFAULT ((0)),
[taxonomy] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_term_t__taxon__6E814571] DEFAULT (N''),
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[parent] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_term_t__paren__6F7569AA] DEFAULT ((0)),
[count] [bigint] NOT NULL CONSTRAINT [DF__wp_term_t__count__70698DE3] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_term_taxonomy] ADD CONSTRAINT [PK_wp_term_taxonomy_term_taxonomy_id] PRIMARY KEY CLUSTERED ([term_taxonomy_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [taxonomy] ON [majid].[wp_term_taxonomy] ([taxonomy]) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_term_taxonomy] ADD CONSTRAINT [wp_term_taxonomy$term_id_taxonomy] UNIQUE NONCLUSTERED ([term_id], [taxonomy]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_term_taxonomy', 'SCHEMA', N'majid', 'TABLE', N'wp_term_taxonomy', NULL, NULL
GO
