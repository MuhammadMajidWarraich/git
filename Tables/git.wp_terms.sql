CREATE TABLE [git].[wp_terms]
(
[term_id] [numeric] (20, 0) NOT NULL IDENTITY(3, 1),
[name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_terms__name__7DD8979A] DEFAULT (N''),
[slug] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_terms__slug__7ECCBBD3] DEFAULT (N''),
[term_group] [bigint] NOT NULL CONSTRAINT [DF__wp_terms__term_g__7FC0E00C] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_terms] ADD CONSTRAINT [PK_wp_terms_term_id] PRIMARY KEY CLUSTERED ([term_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [name] ON [git].[wp_terms] ([name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [slug] ON [git].[wp_terms] ([slug]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_terms', 'SCHEMA', N'git', 'TABLE', N'wp_terms', NULL, NULL
GO
