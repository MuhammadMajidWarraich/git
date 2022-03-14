CREATE TABLE [majid].[wpstg0_usermeta]
(
[umeta_id] [numeric] (20, 0) NOT NULL IDENTITY(18, 1),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_us__user___7D8E7ED7] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_us__meta___7E82A310] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wpstg0_us__meta___7F76C749] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wpstg0_usermeta] ADD CONSTRAINT [PK_wpstg0_usermeta_umeta_id] PRIMARY KEY CLUSTERED ([umeta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [majid].[wpstg0_usermeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [majid].[wpstg0_usermeta] ([user_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wpstg0_usermeta', 'SCHEMA', N'majid', 'TABLE', N'wpstg0_usermeta', NULL, NULL
GO
