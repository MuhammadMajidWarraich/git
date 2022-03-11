CREATE TABLE [git].[wpstg0_usermeta]
(
[umeta_id] [numeric] (20, 0) NOT NULL IDENTITY(18, 1),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_us__user___072CF7AA] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_us__meta___08211BE3] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_us__meta___0915401C] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_usermeta] ADD CONSTRAINT [PK_wpstg0_usermeta_umeta_id] PRIMARY KEY CLUSTERED ([umeta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wpstg0_usermeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [git].[wpstg0_usermeta] ([user_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_usermeta', 'SCHEMA', N'git', 'TABLE', N'wpstg0_usermeta', NULL, NULL
GO
