CREATE TABLE [git].[wp_terms]
(
[term_id] [numeric] (20, 0) NOT NULL IDENTITY(3, 1),
[name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_terms__name__70E8B0D0] DEFAULT (N''),
[slug] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_terms__slug__71DCD509] DEFAULT (N''),
[term_group] [bigint] NOT NULL CONSTRAINT [DF__wp_terms__term_g__72D0F942] DEFAULT ((0))
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
