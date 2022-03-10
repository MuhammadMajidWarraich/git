CREATE TABLE [git].[wpstg0_terms]
(
[term_id] [numeric] (20, 0) NOT NULL IDENTITY(3, 1),
[name] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_ter__name__520F23F5] DEFAULT (N''),
[slug] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_ter__slug__5303482E] DEFAULT (N''),
[term_group] [bigint] NOT NULL CONSTRAINT [DF__wpstg0_te__term___53F76C67] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_terms] ADD CONSTRAINT [PK_wpstg0_terms_term_id] PRIMARY KEY CLUSTERED ([term_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [name] ON [git].[wpstg0_terms] ([name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [slug] ON [git].[wpstg0_terms] ([slug]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_terms', 'SCHEMA', N'git', 'TABLE', N'wpstg0_terms', NULL, NULL
GO
